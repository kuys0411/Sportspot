package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class MemberDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	String member_insert = "insert into member(M_ID, M_pwd, M_name, M_sex, M_email, M_interest) "
			+ "values ( ?, ?, ?, ?, ?, ?)";
	String member_remove = "delete from member where M_ID = ?";
	
	String member_remove_from_bookingmember = "delete from booking_member where M_ID = ?";
	String member_update = "update member set M_pwd=?, M_name=?, M_sex=?, M_email=?, M_interest=? where M_id=?";
	
	String select_by_ID = "select * from member where M_ID = ?";
	
	String loginCheck_by_id = "select M_Id, M_pwd from Member where M_Id=?";
	
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
			st.setString(6, realID);
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
			st = conn.prepareStatement(member_remove_from_bookingmember);
			st.setString(1, id);
			result = st.executeUpdate();
			
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



	public MemberDTO selectByID(String realID) {
		// TODO Auto-generated method stub
		conn = DBUtil.getConnect();
		MemberDTO memDTO = null;
		try {
			
			st = conn.prepareStatement(select_by_ID);
			st.setString(1, realID);
			rs = st.executeQuery();
			List<MemberDTO> memlist = new ArrayList<MemberDTO>();
			while(rs.next()) {
				memDTO = makeMemDTO(rs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return memDTO;
	}



	private MemberDTO makeMemDTO(ResultSet rs) throws SQLException {
		String mid = rs.getString("M_ID");
		String mpwd = rs.getString("M_pwd");
		String mname = rs.getString("M_name");
		String msex = rs.getString("M_sex");
		String memail = rs.getString("M_email");
		String minterest = rs.getString("M_interest");
		MemberDTO memdto = new MemberDTO(mid, mpwd, mname, msex, memail, minterest);
		return memdto;
	}


	//같은 아이디인지 체크
	public int checkMember2(MemberDTO loginDTO) {
		System.out.println("hihihi");
		conn = DBUtil.getConnect();
		LoginDTO login = null;
		int result = -1;
		try {
			st = conn.prepareStatement(loginCheck_by_id);
			st.setString(1, loginDTO.getMid());
			rs = st.executeQuery();
			//회원정보가 없음(rs가 null일 떄)
			if(rs == null) {
			
				System.out.println("rs가 null이에요");
				return 0;
			}
			while(rs.next()) {
				login = new LoginDTO(rs.getString("M_ID"),rs.getString("M_pwd"));
			}
			if(login == null) {
				return 0;	
			}
			if(loginDTO.getMid().equals(login.getId())) {
				//ID가 같을 때
				System.out.println("아이디가 같아요!!!!");
				return 1;
				
			}
			else {
				//ID가 다를 때
				System.out.println("아이디가 달라요");
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
