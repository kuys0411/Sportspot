package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class SearchDAO {
	
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
		
	
	String selectAll_sql = "select Place.P_ID, Place.P_Name, Place.P_open, Place.P_close, PlaceAddr.P_Doro"
			+ ", Place.P_holiday, Place.P_type from Place,PlaceAddr where Place.P_ID = PlaceAddr.P_ID";
	
	String selectByType_sql = selectAll_sql + " and Place.P_type in";
	
	String selectByAddr_sql = selectAll_sql+" and PlaceAddr.P_Dong=?";

	String selectByTypeAddr_sql= selectByAddr_sql +" and Place.P_type in";
	
	
	
	public  List<SearchResultDTO> selectByTypeAddr(String type,String dong){
		List<SearchResultDTO> plist = new ArrayList<SearchResultDTO>();
		conn=DBUtil.getConnect();
		try {
			
			System.out.println("type2");
			String[] splitedType = type.split(" ");
			
			int i = 0;
			for(i = 0; i < splitedType.length ; i ++) {
				if(i == splitedType.length - 1 && i==0) {selectByType_sql +="( '" + splitedType[i]+ "') "; break;}
				else if(i == 0) selectByTypeAddr_sql +="( '" + splitedType[i]+ "', ";
				else if(i == splitedType.length - 1) selectByTypeAddr_sql += " '" +splitedType[i]+"' )";
				else selectByTypeAddr_sql+= "'"+splitedType[i]+"', ";
			}
			
			
			
			st=conn.prepareStatement(selectByTypeAddr_sql);
			st.setString(1, dong);
			System.out.println("servlet sql : " + selectByTypeAddr_sql);
			rs=st.executeQuery();
			boolean b = rs.next();
			//결과값이 null
			 if(b==false){
				 System.out.println("see me?");
				 SearchResultDTO emp = new SearchResultDTO(-1, "hi","hi","hi","hi","hi","hi");
					plist.add(emp);	 
				 
			 }
			 else{
				 
				 do{
						SearchResultDTO emp = makeEmp(rs);
						plist.add(emp);
						System.out.println(emp.getDoro());	
				}while(rs.next())	;  
			 }

		} catch (SQLException e) {	
			e.printStackTrace();
		}finally{
			DBUtil.dbclose(conn, st, rs);
		}
		return plist;
	}
	
	public  List<SearchResultDTO> selectByType(String type){
		List<SearchResultDTO> plist = new ArrayList<SearchResultDTO>();
		conn=DBUtil.getConnect();
		try {
			
			System.out.println("type1");
			String[] splitedType = type.split(" ");
			
			int i = 0;
			for(i = 0; i < splitedType.length ; i ++) {
				if(i == splitedType.length - 1 && i==0) {selectByType_sql +="( '" + splitedType[i]+ "') "; break;}
				else if(i == 0) selectByType_sql +="( '" + splitedType[i]+ "', ";
				else if(i == splitedType.length - 1) selectByType_sql += " '" +splitedType[i]+"' )";
				else selectByType_sql+= "'"+splitedType[i]+"', ";
			}
			System.out.println("servlet sql : " + selectByType_sql);
			st=conn.prepareStatement(selectByType_sql);
			rs=st.executeQuery();
			boolean b = rs.next();
			//결과값이 null
			 if(b==false){
				 System.out.println("see me?");
				 SearchResultDTO emp = new SearchResultDTO(-1, "hu","hu","hi","hi","hi","hi");
					plist.add(emp);	 
				 
			 }
			 else{
				 
				 do{
						SearchResultDTO emp = makeEmp(rs);
						plist.add(emp);
						System.out.println(emp.getDoro());	
				}while(rs.next())	;  
			 }

		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			DBUtil.dbclose(conn, st, rs);
		}
		
		
		return plist;
	}
	
	public  List<SearchResultDTO> selectByAddr(String dong){
		List<SearchResultDTO> plist = new ArrayList<SearchResultDTO>();
		conn=DBUtil.getConnect();
		try {
			st=conn.prepareStatement(selectByAddr_sql);
			st.setString(1, dong);
			rs=st.executeQuery();
			boolean b = rs.next();
			//결과값이 null
			 if(b==false){
				 System.out.println("see me?");
				 SearchResultDTO emp = new SearchResultDTO(-1, "ho","ho","hi","hi","hi","hi");
					plist.add(emp);	 
				 
			 }
			 else{
				 
				 do{
						SearchResultDTO emp = makeEmp(rs);
						plist.add(emp);
						System.out.println(emp.getDoro());	
				}while(rs.next())	;  
			 }

			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			DBUtil.dbclose(conn, st, rs);
		}
		
		
		return plist;
	}
	
	private SearchResultDTO makeEmp(ResultSet rs) throws SQLException{
	
		int P_ID = rs.getInt("P_ID");
		String P_Name = rs.getString("P_Name");
		String P_open = rs.getString("P_open");
		String P_close = rs.getString("P_close");
		String P_Doro = rs.getString("P_Doro");
		String P_holiday = rs.getString("P_holiday");
		String P_type = rs.getString("P_type");
	
		SearchResultDTO emp = new SearchResultDTO(P_ID, P_Name, P_open, P_close,P_Doro,P_holiday,P_type);
		
		return emp;
	}
	
}
