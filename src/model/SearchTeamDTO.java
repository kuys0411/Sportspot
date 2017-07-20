package model;

import java.sql.Date;

public class SearchTeamDTO {
	int bid;
	String mid;
	String mname;
	int bnum;
	Date bdate;
	String bstart;
	String ptype;
	String pdong;
	
	public String getPdong() {
		return pdong;
	}

	public void setPdong(String pdong) {
		this.pdong = pdong;
	}

	public SearchTeamDTO() {}

	public SearchTeamDTO(int bid, String mid, String mname, int bnum, Date bdate, String bstart, String ptype, String pdong) {
		super();
		this.bid = bid;
		this.mid = mid;
		this.mname = mname;
		this.bnum = bnum;
		this.bdate = bdate;
		this.bstart = bstart;
		this.ptype = ptype;
		this.pdong = pdong;
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

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public String getBstart() {
		return bstart;
	}

	public void setBstart(String bstart) {
		this.bstart = bstart;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	
	
	
}
