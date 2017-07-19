package model;

import java.sql.Date;

public class ReserveBookingDTO {
	//int Bid;
	String mid;
	int pid;
	Date date;
	int bnum;
	String bstartTime;
	
	ReserveBookingDTO(){
		
	}

	public ReserveBookingDTO(String mid, int pid, Date date, int bnum, String bstartTime) {
		super();
		this.mid = mid;
		this.pid = pid;
		this.date = date;
		this.bnum = bnum;
		this.bstartTime = bstartTime;
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
		return "ReserveBookingDTO [mid=" + mid + ", pid=" + pid + ", date=" + date + ", bnum=" + bnum + ", bstartTime="
				+ bstartTime + "]";
	}
	
	
	
	
}
