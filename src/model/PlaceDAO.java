package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class PlaceDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	int result;
	
	String select_sql ="select * from PLACE";
	
	public List<PlaceDTO> selectAll(){
		List<PlaceDTO> placelist = new ArrayList<PlaceDTO>();
		conn=DBUtil.getConnect();
		try {
			st= conn.prepareStatement(select_sql);
			rs= st.executeQuery();
			while(rs.next()){ //참인동안 돌면서 
				PlaceDTO place = makePlace(rs);
				placelist.add(place);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.dbclose(conn, st, rs);
		}
		
		return placelist;
	}
	
	private PlaceDTO makePlace(ResultSet rs) throws SQLException {
		int id= rs.getInt("P_ID");
		String name= rs.getString("P_NAME");
		String type= rs.getString("P_TYPE");
		String phone= rs.getString("P_PHONE");
		String homepage= rs.getString("P_HOMEPAGE");
		String open= rs.getString("P_OPEN");
		String close= rs.getString("P_CLOSE");
		String holiday= rs.getString("P_HOLIDAY");
		String howtogo= rs.getString("P_HOWTOGO");
		PlaceDTO place = new PlaceDTO(id, name, type, phone, homepage, open, close, holiday, howtogo);
		
		return place;
	}
	
	
}
