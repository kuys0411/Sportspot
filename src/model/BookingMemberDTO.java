package model;

import java.sql.Date;

public class BookingMemberDTO {
	int bid;
	String mid;
	int pid;
	Date bdate;
	int bnum;
	String bstart;
	
	BookingMemberDTO(){
		
	}
	
	public BookingMemberDTO(int bid, String mid, int pid, Date bdate, int bnum, String bstart) {
		super();
		this.bid = bid;
		this.mid = mid;
		this.pid = pid;
		this.bdate = bdate;
		this.bnum = bnum;
		this.bstart = bstart;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getBstart() {
		return bstart;
	}

	public void setBstart(String bstart) {
		this.bstart = bstart;
	}
	
	
	
}
