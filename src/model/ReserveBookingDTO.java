package model;

import java.sql.Date;

public class ReserveBookingDTO {
	int Bid;
	int Mid;
	int Pid;
	Date date;
	int bnum;
	String bstartTime;
	
	ReserveBookingDTO(){
		
	}
	public ReserveBookingDTO(int bid, int mid, int pid, Date date, int bnum, String bstartTime) {
		super();
		Bid = bid;
		Mid = mid;
		Pid = pid;
		this.date = date;
		this.bnum = bnum;
		this.bstartTime = bstartTime;
	}
	public int getBid() {
		return Bid;
	}
	public void setBid(int bid) {
		Bid = bid;
	}
	public int getMid() {
		return Mid;
	}
	public void setMid(int mid) {
		Mid = mid;
	}
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBstartTime() {
		return bstartTime;
	}
	public void setBstartTime(String bstartTime) {
		this.bstartTime = bstartTime;
	}
	@Override
	public String toString() {
		return "ReserveBookingDTO [Bid=" + Bid + ", Mid=" + Mid + ", Pid=" + Pid + ", date=" + date + ", bnum=" + bnum
				+ ", bstartTime=" + bstartTime + "]";
	}
	
	
}
