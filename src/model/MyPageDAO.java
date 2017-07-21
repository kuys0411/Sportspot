package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import util.DateUtil;

public class MyPageDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	
	String select_bookInfo_By_ID_sql = "select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM "
			+ " from PLACE A , BOOKING_MEMBER B "
			+ " where A.P_ID = B.P_ID AND M_ID = ? "; 
	/*
	

update bp set count=''  from Booking_Member b, Place p, Booking_Place bp 
where b.P_ID = p.P_ID and p.P_ID = bp.P_ID;

select b.b_id, p.p_id, bp.count, bp.BP_date 
from Booking_Member b, Place p, Booking_Place bp 
where b.b_id = 68 and bp.bp_startTime = 8 and b.p_id = p.p_id and p.P_id = bp.p_id

select P_ID, BP_startTime, BP_Date, count from booking_Place where P_ID = 283

	*/
	String select_count_sql = "select count from Booking_Member b, Place p, Booking_Place bp where b.B_ID = ? and b.P_ID = p.P_ID and p.P_ID = bp.P_ID and bp.BP_startTime = ? and bp.BP_Date = ?";
	
	
	String update_query_count = "update from (select * from  Booking_Member b, Place p, Booking_Place bp where b.P_ID = p.P_ID and  p.P_ID = bp.P_ID) "
			+ "set count=?  where B_ID = ? and  BP_startTime = ?  and  BP_Date = ?  ";
	

	
	
	String deleteBookInfo = "delete from BOOKING_MEMBER where B_ID = ? and M_ID = ? ";
	
	public List<BookInfoDTO_SSH> select_bookinfo_BY_ID(String memberID) {
		conn = DBUtil.getConnect();
		List<BookInfoDTO_SSH> booklist = new ArrayList<BookInfoDTO_SSH>();
		try {
			st = conn.prepareStatement(select_bookInfo_By_ID_sql);
			st.setString(1, memberID);
			rs = st.executeQuery();
			while(rs.next()){
				BookInfoDTO_SSH bookinfo = makeBookInfoDTO(rs);
				booklist.add(bookinfo);
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.dbclose(conn, st, rs);
		}
		
		return booklist;
	}

	private BookInfoDTO_SSH makeBookInfoDTO(ResultSet rs) throws SQLException {

		int bookid = rs.getInt("B_ID");
		Date bookDate = rs.getDate("B_Date");
		String startTime = rs.getString("B_startTIme");
		String placeName = rs.getString("P_Name");
		int booknum = rs.getInt("B_Num");
		
		BookInfoDTO_SSH bookinfo = new BookInfoDTO_SSH(bookid, bookDate, startTime, placeName, booknum);
		
		return bookinfo;
	}
	
	//bid, bp startTime, bp date
	public int deleteBookInfo(int bID, String mID, String startTime, int count, String date) {
		// TODO Auto-generated method stub
		conn = DBUtil.getConnect();
		java.sql.Date sqlDate = DateUtil.toSqlDate(date);
		
		int result = 0;
		try {
/*			st = conn.prepareStatement(deleteBookInfo);
			st.setInt(1, bID);
			st.setString(2, mID);
			result = st.executeUpdate();*/
			
			st = conn.prepareStatement(select_count_sql);
			st.setInt(1, bID);
			st.setString(2, startTime);
			st.setDate(3, sqlDate);
			rs = st.executeQuery();
			int a = 0;
			while(rs.next()) a = rs.getInt("count");
			
			System.out.println("count " + a);
			
			int finalCount = a - count;
			if(finalCount > 0){
				System.out.println("final Count : " + finalCount);
			}
			else{
				st = conn.prepareStatement(update_query_count);
				st.setInt(1, finalCount);
				st.setInt(2, bID);
				st.setString(3, startTime);
				st.setDate(4, sqlDate);
				//count bid, startTime, bpdate
				System.out.println("sql : "+st);
				result = st.executeUpdate();
				
				System.out.println("Update count Completed");
			}
			
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}

	
	
	
}
