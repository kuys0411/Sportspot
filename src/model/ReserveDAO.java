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
	
	String selectCount_Sql="SELECT count "
			+ "From Booking_Place, Place "
			+ "WHERE Booking_Place.P_ID = Place.P_ID and "
			+ "place.P_ID=? and "
			+ "Booking_Place.BP_startTime=? and "
			+ "Booking_Place.BP_Date=?";
	
	public int bookInsert(ReserveBookingDTO book) {
	
		int result=0;
		conn=DBUtil.getConnect();
		
		try {
			st=conn.prepareStatement(insertbooking_sql);
			st.setInt(1, book.getMid());
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
	
	/*public BookingPlaceDTO selectCount(){
		BookingPlaceDTO book_place = new BookingPlaceDTO();
		conn=DBUtil.getConnect();
		
		try {
			st= conn.prepareStatement(selectCount_Sql);
			st.setInt(1, x);
			st.setString(2, x);
			st.setDate(3, x);
			
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
		
		
		return null;
	}*/
	
	
	
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
