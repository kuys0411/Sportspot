package model;

import java.sql.Date;

public class MessageDTO {
	String messageFrom;
	String messageTo;
	String messageBody;
	Date message_Date;
	
	public MessageDTO(){}
	
	public MessageDTO(String messageFrom, String messageTo, String messageBody, Date message_Date) {
		super();
		this.messageFrom = messageFrom;
		this.messageTo = messageTo;
		this.messageBody = messageBody;
		this.message_Date = message_Date;
	}
	public String getMessageFrom() {
		return messageFrom;
	}
	public void setMessageFrom(String messageFrom) {
		this.messageFrom = messageFrom;
	}
	public String getMessageTo() {
		return messageTo;
	}
	public void setMessageTo(String messageTo) {
		this.messageTo = messageTo;
	}
	public String getMessageBody() {
		return messageBody;
	}
	public void setMessageBody(String messageBody) {
		this.messageBody = messageBody;
	}
	public Date getMessage_Date() {
		return message_Date;
	}
	public void setMessage_Date(Date message_Date) {
		this.message_Date = message_Date;
	}
	
	
	
	
}
