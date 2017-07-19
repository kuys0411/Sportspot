package model;

public class DegreeDTO {
	int pid;
	int px;
	int py;
	
	DegreeDTO(){
		
	}
	
	public DegreeDTO(int pid, int px, int py) {
		super();
		this.pid = pid;
		this.px = px;
		this.py = py;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getPx() {
		return px;
	}

	public void setPx(int px) {
		this.px = px;
	}

	public int getPy() {
		return py;
	}

	public void setPy(int py) {
		this.py = py;
	}
	
	
	
}
