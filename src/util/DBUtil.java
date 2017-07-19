package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//DB연결, DB연결 해제
public class DBUtil {
	
	public static Connection getConnect(){
		String url = "jdbc:oracle:thin:@192.168.3.119:1521:xe";
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,"SCOTT","TIGER");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void dbclose(Connection conn, Statement st, ResultSet rs){
		
			try {
				if(rs != null) rs.close();
				if(st != null) st.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
}
