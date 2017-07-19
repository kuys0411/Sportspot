package model;

public class ReservePlaceDTO {
	// Place, Degree, PlaceAddr join
	
	int pid; //
	String pname;
	String ptype;
	String pphone;
	String phomepage;
	String popen;
	String pclose;
	String pholiday;
	String phowtogo;
	double px; //
	double py;
	String pdoro; //
	
	ReservePlaceDTO(){
		
	}
	
	public ReservePlaceDTO(int pid, String pname, String ptype, String pphone, String phomepage, String popen,
			String pclose, String pholiday, String phowtogo, double px, double py, String pdoro) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.ptype = ptype;
		this.pphone = pphone;
		this.phomepage = phomepage;
		this.popen = popen;
		this.pclose = pclose;
		this.pholiday = pholiday;
		this.phowtogo = phowtogo;
		this.px = px;
		this.py = py;
		this.pdoro = pdoro;
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

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getPphone() {
		return pphone;
	}

	public void setPphone(String pphone) {
		this.pphone = pphone;
	}

	public String getPhomepage() {
		return phomepage;
	}

	public void setPhomepage(String phomepage) {
		this.phomepage = phomepage;
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

	public String getPholiday() {
		return pholiday;
	}

	public void setPholiday(String pholiday) {
		this.pholiday = pholiday;
	}

	public String getPhowtogo() {
		return phowtogo;
	}

	public void setPhowtogo(String phowtogo) {
		this.phowtogo = phowtogo;
	}

	public double getPx() {
		return px;
	}

	public void setPx(double px) {
		this.px = px;
	}

	public double getPy() {
		return py;
	}

	public void setPy(double py) {
		this.py = py;
	}

	public String getPdoro() {
		return pdoro;
	}

	public void setPdoro(String pdoro) {
		this.pdoro = pdoro;
	}

	@Override
	public String toString() {
		return "ReservePlaceDTO [pid=" + pid + ", pname=" + pname + ", ptype=" + ptype + ", pphone=" + pphone
				+ ", phomepage=" + phomepage + ", popen=" + popen + ", pclose=" + pclose + ", pholiday=" + pholiday
				+ ", phowtogo=" + phowtogo + ", px=" + px + ", py=" + py + ", pdoro=" + pdoro + "]";
	}
	
	
	
}
