package model;

import java.sql.Date;

public class BookInfoDTO_SSH {
	
	int bookID;
	Date bookDate;
	String bookStartTime;
	String placeName;
	int bookNum;
	
	public BookInfoDTO_SSH() {}
	
	public BookInfoDTO_SSH(int bookID, Date bookDate, String bookStartTime, String placeName, int bookNum) {
		super();
		this.bookID = bookID;
		this.bookDate = bookDate;
		this.bookStartTime = bookStartTime;
		this.placeName = placeName;
		this.bookNum = bookNum;
	}





	@Override
	public String toString() {
		return "BookInfoDTO_SSH [bookID=" + bookID + ", bookDate=" + bookDate + ", bookStartTime=" + bookStartTime
				+ ", placeName=" + placeName + ", bookNum=" + bookNum + "]";
	}



	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	public Date getBookDate() {
		return bookDate;
	}
	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}
	public String getBookStartTime() {
		return bookStartTime;
	}
	public void setBookStartTime(String bookStartTime) {
		this.bookStartTime = bookStartTime;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
}
