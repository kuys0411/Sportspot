package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class SearchTeamDAO {
	
	Connection conn;
	PreparedStatement st;
	ResultSet rs;

	String selectAll_sql = "select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong "
			+ "from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID";
	
	
	
/*	String selectAll_sql = "select Place.P_ID, Place.P_Name, Place.P_open, Place.P_close, PlaceAddr.P_Doro"
			+ ", Place.P_holiday, Place.P_type from Place,PlaceAddr where Place.P_ID = PlaceAddr.P_ID";
	
	String selectByType_sql = selectAll_sql + " and Place.P_type=?";
	
	String selectByAddr_sql = selectAll_sql+" and PlaceAddr.P_Dong=?";

	String selectByTypeAddr_sql= selectByType_sql +" and PlaceAddr.P_dong=?";
	*/
	
	String selectByType_sql = selectAll_sql +" and p.P_type in ";
	
	String selectByAddr_sql = selectAll_sql +" and Pa.P_Dong = ?";
	
	String a = "select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type "
			+ "from Member m, Booking_Member b, Place p "
			+ "where m.M_ID = b.M_ID and p.P_type in ( 'baseball', 'roller-skate', 'target',  ' goggles' )";

	
	public List<SearchTeamDTO> searchAllTeam(String type, String reg) {
		//type으로만 검색
		System.out.println("searchALlTeam 시작");
		conn = DBUtil.getConnect();
		List<SearchTeamDTO> teamlist = new ArrayList<SearchTeamDTO>();
		
		
		//type은 있고 reg는 없음.
		if(reg == "" && type != "") {
			String sql = selectByType_sql;
			System.out.println("type1");
			teamlist.clear();
			String[] splitedType = type.split(" ");
			int i = 0;
			for(i = 0; i < splitedType.length ; i ++) {
				if(i == 0) sql +="( '" + splitedType[i]+ "' ";
				else if(i == splitedType.length - 1) sql += " , '" +splitedType[i]+"' )";
				else sql+= ",'"+splitedType[i]+"' ";
				
			}
			if(splitedType.length == 1) sql += ")";
			System.out.println("servlet sql : " + sql);

			try {
				st = conn.prepareStatement(sql);
				rs = st.executeQuery();
				while(rs.next()) {
					SearchTeamDTO searchteam = makeSearchTeamDTO(rs);
					teamlist.add(searchteam);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.dbclose(conn, st, rs);
			}
			
			return teamlist;
			
		}
		//type은 없고, reg는 있음
		else if( reg != "" && type == "") {
			System.out.println("type2");
			teamlist.clear();
			try {
				st = conn.prepareStatement(selectByAddr_sql);
				st.setString(1, reg);
				rs = st.executeQuery();
				while(rs.next()) {
					SearchTeamDTO searchteam = makeSearchTeamDTO(rs);
					teamlist.add(searchteam);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.dbclose(conn, st, rs);
			}
			
			return teamlist;
		}
		
		//둘다 입력을 안함
		else if (reg == "" && type == "") {
			teamlist.clear();
			System.out.println("type3");
			return null;
		}
		//둘다 입력함
		else {
			teamlist.clear();
			System.out.println("type4");
			String sql = selectByType_sql;
			String[] splitedType = type.split(" ");
			int i = 0;
			for(i = 0; i < splitedType.length ; i ++) {
				if(i == 0) sql +="( '" + splitedType[i]+ "' ";
				else if(i == splitedType.length - 1) sql += " ,' " +splitedType[i]+"' )";
				else sql+= "'"+splitedType[i]+"', ";
				
			}
			if(splitedType.length == 1) sql+=")";
			sql+=" and P_Dong = ?";
			System.out.println("type4, sql : " +sql);
			try {
				st = conn.prepareStatement(sql);
				st.setString(1, reg);
				rs = st.executeQuery();
				while(rs.next()) {
					SearchTeamDTO searchteam = makeSearchTeamDTO(rs);
					teamlist.add(searchteam);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.dbclose(conn, st, rs);
			}
			return teamlist;
		}
		
		
	}


	private SearchTeamDTO makeSearchTeamDTO(ResultSet rs) throws SQLException {
		int bid = rs.getInt("B_ID");
		String mid = rs.getString("M_ID");
		String mname = rs.getString("M_NAME");
		int bnum = rs.getInt("B_NUM");
		Date bdate = rs.getDate("B_DATE");
		String bstart = rs.getString("B_STARTTIME");
		String ptype = rs.getString("P_TYPE");
		String pdong = rs.getString("P_Dong");
		
		SearchTeamDTO searchteamDTO = new SearchTeamDTO(bid, mid, mname, bnum, bdate, bstart, ptype, pdong);
		return searchteamDTO;
	}

}
