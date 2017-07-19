package model;

public class MemberDTO {
	String mid;
	String mpwd;
	String mname;
	String msex;
	String memail;
	String minterest;
	
	public MemberDTO(){
		
		
	}
	public MemberDTO(String mid, String mpwd, String mname, String msex, String memail, String minterest) {
		super();
		this.mid = mid;
		this.mpwd = mpwd;
		this.mname = mname;
		this.msex = msex;
		this.memail = memail;
		this.minterest = minterest;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpwd() {
		return mpwd;
	}
	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMsex() {
		return msex;
	}
	public void setMsex(String msex) {
		this.msex = msex;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMinterest() {
		return minterest;
	}
	public void setMinterest(String minterest) {
		this.minterest = minterest;
	}
	
	
}
