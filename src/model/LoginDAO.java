package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;

public class LoginDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	
	String loginCheck_by_id_password = "select M_ID, M_pwd from Member where M_ID=?";

	
	public int checkMember(LoginDTO loginDTO) {
		conn = DBUtil.getConnect();
		LoginDTO login = null;
		int result = -1;
		try {
			st = conn.prepareStatement(loginCheck_by_id_password);
			st.setString(1, loginDTO.getId());
			rs = st.executeQuery();
			//회원정보가 없음(rs가 null일 떄)
			if(rs == null) {
				return 0;
			}
			while(rs.next()) {
				login = new LoginDTO(rs.getString("M_ID"), rs.getString("M_pwd"));
			}
			if(login == null) {
				return 0;	
			}
			if(loginDTO.getPassword().equals(login.getPassword())) {
				//ID와 Password가 같을 때
				return 1;
			}
			else {
				//ID와 password가 다를 때
				return 2;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbclose(conn, st, rs);
		}
		
		
		
		return result;
	}
	

}
