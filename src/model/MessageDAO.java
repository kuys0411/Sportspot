package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class MessageDAO {
	Connection conn;
	PreparedStatement st;
	ResultSet rs;
	
	String selectAllMessage = "select * from Message where Message_receiver = ? ";
	String insert_message = "insert into Message(Message_id, Message_sender, Message_receiver, Message_Body) values (seq_message_id.nextval, ?,?,?) ";
	
	String delete_message = "delete from message where Message_id = ?";

			
	public int insertMessageDTO(MessageDTO msgdto) {
		conn = DBUtil.getConnect();
		int result = 0;
		try {
			System.out.println("insert message");
			st = conn.prepareStatement(insert_message);
			String messagefrom = msgdto.getMessageFrom();
			messagefrom = messagefrom.trim();
			String messageto = msgdto.getMessageTo();
			messageto = messageto.trim();
			System.out.println("messageFrom :" +msgdto.getMessageFrom());
			System.out.println("messageTo :" +msgdto.getMessageTo());
			System.out.println("messageBody :"+msgdto.getMessageBody());
			st.setString(1, messagefrom);
			st.setString(2, messageto);
			st.setString(3, msgdto.getMessageBody());
			result = st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}
	
	public List<MessageDTO> getMessages(String userID) {
		conn = DBUtil.getConnect();
		List<MessageDTO> messagelist = new ArrayList<MessageDTO>();
		try {
			System.out.println("getMessage1");

			st = conn.prepareStatement(selectAllMessage);
			st.setString(1, userID);
			rs = st.executeQuery();
			while(rs.next()) {
				MessageDTO messagedto = makeMessageDTO(rs);
				messagelist.add(messagedto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbclose(conn, st, rs);
		}
		// TODO Auto-generated method stub
		System.out.println("messagelist size : " + messagelist.size());
		return messagelist;
	}
	/*
	Message_From varchar2(255),
	Message_To	Varchar2(255),
	Message_Date date,
	Message_Body	varchar2(1000)*/
	
	private MessageDTO makeMessageDTO(ResultSet rs) throws SQLException {
		// TODO Auto-generated method stub
		long mid = rs.getLong("MESSAGE_id");
		String message_from = rs.getString("MESSAGE_sender");
		String message_to = rs.getString("MESSAGE_receiver");
		String message_body = rs.getString("MESSAGE_BODY");
		MessageDTO messageDTO = new MessageDTO( message_from, message_to, message_body, mid);
		
		return messageDTO;
	}
/*	String delete_message = "delete from message where Message_sender = ? and Message_receiver = ? and Message_Body = ? ";
*/
	

	public int deleteMessage(Long mid) {
		int result = 0;
		conn = DBUtil.getConnect();
		try {
			st = conn.prepareStatement(delete_message);
			st.setLong(1, mid);
			result = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.dbclose(conn, st, rs);
		}
		return result;
	}

}
