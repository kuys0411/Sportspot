package model;

public class PlaceAddrDTO {
	int pid;
	String psido;
	String psigungu;
	String pdong;
	String plee;
	String pdoro;
	
	PlaceAddrDTO(){
		
	}
	public PlaceAddrDTO(int pid, String psido, String psigungu, String pdong, String plee, String pdoro) {
		super();
		this.pid = pid;
		this.psido = psido;
		this.psigungu = psigungu;
		this.pdong = pdong;
		this.plee = plee;
		this.pdoro = pdoro;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPsido() {
		return psido;
	}
	public void setPsido(String psido) {
		this.psido = psido;
	}
	public String getPsigungu() {
		return psigungu;
	}
	public void setPsigungu(String psigungu) {
		this.psigungu = psigungu;
	}
	public String getPdong() {
		return pdong;
	}
	public void setPdong(String pdong) {
		this.pdong = pdong;
	}
	public String getPlee() {
		return plee;
	}
	public void setPlee(String plee) {
		this.plee = plee;
	}
	public String getPdoro() {
		return pdoro;
	}
	public void setPdoro(String pdoro) {
		this.pdoro = pdoro;
	}
	
}
