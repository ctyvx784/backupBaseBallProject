package project.baseball.dto;

public class Stadium {
	private String sNum;
	private String sName;
	private String sAddress;
	private int occ;
	
	public String getsNum() {
		return sNum;
	}
	public void setsNum(String sNum) {
		this.sNum = sNum;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}
	public int getOcc() {
		return occ;
	}
	public void setOcc(int occ) {
		this.occ = occ;
	}
	
	
}
