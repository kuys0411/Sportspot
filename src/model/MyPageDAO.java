package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class MyPageDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	
	String select_bookInfo_By_ID_sql = "select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM "
			+ " from PLACE A , BOOKING_MEMBER B "
			+ " where A.P_ID = B.P_ID AND M_ID = ? "; 
	
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
				System.out.println(bookinfo.toString());
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

	
	
	
}
