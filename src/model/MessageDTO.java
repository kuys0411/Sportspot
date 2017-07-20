package model;


public class MessageDTO {
	String messageFrom;
	String messageTo;
	String messageBody;
	long messageID = 0; 
	
	public MessageDTO(){}
	
	
	
	public MessageDTO(String messageFrom, String messageTo, String messageBody, long messageID) {
		super();
		this.messageFrom = messageFrom;
		this.messageTo = messageTo;
		this.messageBody = messageBody;
		this.messageID = messageID;
	}



	public long getMessageID() {
		return messageID;
	}



	public void setMessageID(int messageID) {
		this.messageID = messageID;
	}



	public MessageDTO(String messageFrom, String messageTo, String messageBody) {
		super();
		this.messageFrom = messageFrom;
		this.messageTo = messageTo;
		this.messageBody = messageBody;
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
	
	
	
}
