package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;

public class MemberDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	String member_insert = "insert into member(M_ID, M_pwd, M_name, M_sex, M_email, M_interest) "
			+ "values ( ?, ?, ?, ?, ?, ?)";
	String member_remove = "delete member where M_ID = ?";
	
	String member_update = "update member set M_pwd=?, M_name=?, M_sex=?, M_email=?, M_interest=? where M_id=?";
	public int memberInsert(MemberDTO memDTO) {
		// TODO Auto-generated method stub
		int result = 0;
		conn = DBUtil.getConnect();
		try {
			st = conn.prepareStatement(member_insert);
			st.setString(1, memDTO.getMid());
			st.setString(2, memDTO.getMpwd());
			st.setString(3, memDTO.getMname());
			st.setString(4, memDTO.getMsex());
			st.setString(5, memDTO.getMemail());
			st.setString(6, memDTO.getMinterest());
			result = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbclose(conn, st, rs);
		}
		
		
		return result;
	}

	

	public int modifyMemberDTO(MemberDTO memDTO, String realID) {
		// TODO Auto-generated method stub
		int result = 0;
		conn = DBUtil.getConnect();
		try {
			st = conn.prepareStatement(member_update);
			st.setString(1, memDTO.getMpwd());
			st.setString(2, memDTO.getMname());
			st.setString(3, memDTO.getMsex());
			st.setString(4, memDTO.getMemail());
			st.setString(5, memDTO.getMinterest());
			st.setString(6, memDTO.getMid());
			result = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbclose(conn, st, rs);
		}
		
		return result;
	}



	public int deleteMember(String id) {
		// TODO Auto-generated method stub
		int result = 0;
		conn = DBUtil.getConnect();
		try {
			st = conn.prepareStatement(member_remove);
			st.setString(1, id);
			result = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}

}
