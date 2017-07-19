package model;

public class SearchResultDTO {
	int pid;
	String pname;
	String popen;
	String pclose;
	String doro;
	String pholiday;
	String ptype;
	public SearchResultDTO() {
		
	}
	public SearchResultDTO(int pid, String pname, String popen, String pclose, String doro, String pholiday,
			String ptype) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.popen = popen;
		this.pclose = pclose;
		this.doro = doro;
		this.pholiday = pholiday;
		this.ptype = ptype;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPopen() {
		return popen;
	}
	public void setPopen(String popen) {
		this.popen = popen;
	}
	public String getPclose() {
		return pclose;
	}
	public void setPclose(String pclose) {
		this.pclose = pclose;
	}
	public String getDoro() {
		return doro;
	}
	public void setDoro(String doro) {
		this.doro = doro;
	}
	public String getPholiday() {
		return pholiday;
	}
	public void setPholiday(String pholiday) {
		this.pholiday = pholiday;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	
	
}
