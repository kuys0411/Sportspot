package model;

import java.sql.Date;

public class BookingPlaceDTO {
	int pid;
	String bpstart;
	Date bpdate;
	int count;
	
	BookingPlaceDTO(){
		
		
	}
	
	public BookingPlaceDTO(int pid, String bpstart, Date bpdate, int count) {
		super();
		this.pid = pid;
		this.bpstart = bpstart;
		this.bpdate = bpdate;
		this.count = count;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getBpstart() {
		return bpstart;
	}

	public void setBpstart(String bpstart) {
		this.bpstart = bpstart;
	}

	public Date getBpdate() {
		return bpdate;
	}

	public void setBpdate(Date bpdate) {
		this.bpdate = bpdate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
}
