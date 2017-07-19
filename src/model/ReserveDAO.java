package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.DBUtil;

/*	DAO1개에 DTO3개
1개는 정보를 위한, Place, Degree, PlaceAddr ....완료 
1개는 insert를 위한 Booking_place
1개는 count값을 빼오기 위한 DAO,DTO 
*/

public class ReserveDAO {

	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	int result;
	
	String selectplaceById_sql ="SELECT Place.P_ID, P_NAME, P_TYPE, P_PHONE, P_HOMEPAGE, "
			+ "P_OPEN, P_CLOSE, P_HOLIDAY, P_HOWTOGO,"
			+ "P_X, P_Y, P_DORO "
			+ "FROM Place, Degree, PlaceAddr "
			+ "WHERE place.P_ID = Degree.P_ID and Place.P_ID = PlaceAddr.P_ID and place.P_ID=?";
	
	//create sequence seq_b_id;
	String insertbooking_sql="insert into Booking_Member "
			+ "values(seq_b_id.nextval,?,?,?,?,?)"; //sequence생성해주고 진행 
	
	// Booking_place
	String selectCount_sql="select count from Booking_Place Where P_ID=? and BP_startTime=? and BP_Date=?";
	String ins_bookingPlace_sql="insert into Booking_Place values(?,?,?,?)"; //카운트 유무 확인 
	String update_booking_place_sql= "update Booking_Place set count=count+? where P_ID=? and BP_startTime=? and BP_Date=?";
	
	
	public int update_booking(int bnum, int pid, String bstartTime, Date date) {
		int result=0;
		conn=DBUtil.getConnect();
		
		try {
			st=conn.prepareStatement(update_booking_place_sql);
			st.setInt(1, bnum);
			st.setInt(2, pid);
			st.setString(3, bstartTime);
			st.setDate(4, date);
					
			result=st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}
	
	
	
	public int selectCount_sql(int pid, String bstartTime, Date date) {
		int count=0;
		conn=DBUtil.getConnect();
		
		try {
			st=conn.prepareStatement(selectCount_sql);
			st.setInt(1, pid);
			st.setString(2, bstartTime);
			st.setDate(3, date);
			rs=st.executeQuery();
			
			while(rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return count;
	}
	
	
	public int ins_bookingPlace_sql(BookingPlaceDTO book) {
		int result=0;
		conn=DBUtil.getConnect();
		
		try {
			st=conn.prepareStatement(ins_bookingPlace_sql);
			st.setInt(1, book.getPid());
			st.setString(2, book.getBpstart());
			st.setDate(3, book.getBpdate());
			st.setInt(4, book.getCount());
		
			result=st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}
	
	public int bookInsert(ReserveBookingDTO book) {
		
		int result=0;
		conn=DBUtil.getConnect();
		
		try {
			st=conn.prepareStatement(insertbooking_sql);
			st.setString(1, book.getMid());
			st.setInt(2, book.getPid());
			st.setDate(3, book.getDate());
			st.setInt(4, book.getBnum());
			st.setString(5, book.getBstartTime());
			result=st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}
	
	
	public ReservePlaceDTO selectplaceById(int pid){ //table 3개 종합
		
		ReservePlaceDTO placeinfo = new ReservePlaceDTO();
		conn=DBUtil.getConnect();
		
		try {
			st= conn.prepareStatement(selectplaceById_sql);
			st.setInt(1, pid);
			rs=st.executeQuery();
			while(rs.next()){ //참인동안 돌면서 
				placeinfo = makePlace(rs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.dbclose(conn, st, rs);
		}
		
		return placeinfo;
	}
	

	private ReservePlaceDTO makePlace(ResultSet rs) throws SQLException {
		int pid= rs.getInt("P_ID");
		String pname= rs.getString("P_NAME");
		String ptype= rs.getString("P_TYPE");
		String pphone= rs.getString("P_PHONE");
		String phomepage= rs.getString("P_HOMEPAGE");
		String popen= rs.getString("P_OPEN");
		String pclose= rs.getString("P_CLOSE");
		String pholiday= rs.getString("P_HOLIDAY");
		String phowtogo= rs.getString("P_HOWTOGO");
		double px= rs.getDouble("P_X");
		double py= rs.getDouble("P_Y");
		String pdoro=rs.getString("P_DORO");
		
		
		ReservePlaceDTO place = new ReservePlaceDTO(pid, pname, ptype, pphone, phomepage, popen, pclose, pholiday, phowtogo, px, py, pdoro);
		
		
		return place;
	}
}
