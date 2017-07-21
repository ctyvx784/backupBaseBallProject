package project.baseball.dto;

import java.util.Date;

public class StadiumBallDTO {
	//Stadium 필드들
	private String sNum;
	private String sName;
	private String sAddress;
	private int occ;
	//Game 필드들
	private String gCode;
	private Date gDate;
	private String hTeam;
	private String aTeam;
	private String weather;
	//BallInfo 필드들
	private int bOrder;
	private String bSeatCode;
	private String HF;
	private String pNum;
	
	
	//count(seatcode)
	private int countBallSeatCode;
	
	//getter setter
	public int getCountBallSeatCode() {
		return countBallSeatCode;
	}
	public void setCountBallSeatCode(int countBallSeatCode) {
		this.countBallSeatCode = countBallSeatCode;
	}
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
	public String getgCode() {
		return gCode;
	}
	public void setgCode(String gCode) {
		this.gCode = gCode;
	}
	public Date getgDate() {
		return gDate;
	}
	public void setgDate(Date gDate) {
		this.gDate = gDate;
	}
	public String gethTeam() {
		return hTeam;
	}
	public void sethTeam(String hTeam) {
		this.hTeam = hTeam;
	}
	public String getaTeam() {
		return aTeam;
	}
	public void setaTeam(String aTeam) {
		this.aTeam = aTeam;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public int getbOrder() {
		return bOrder;
	}
	public void setbOrder(int bOrder) {
		this.bOrder = bOrder;
	}
	public String getbSeatCode() {
		return bSeatCode;
	}
	public void setbSeatCode(String bSeatCode) {
		this.bSeatCode = bSeatCode;
	}
	public String getHF() {
		return HF;
	}
	public void setHF(String hF) {
		HF = hF;
	}
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	
	public StadiumBallDTO(String bSeatCode, int countBallSeatCode) {
		super();
		this.bSeatCode = bSeatCode;
		this.countBallSeatCode = countBallSeatCode;
	}
	//toString
	@Override
	public String toString() {
		return "StadiumBallDTO [sNum=" + sNum + ", sName=" + sName + ", sAddress=" + sAddress + ", occ=" + occ
				+ ", gCode=" + gCode + ", gDate=" + gDate + ", hTeam=" + hTeam + ", aTeam=" + aTeam + ", weather="
				+ weather + ", bOrder=" + bOrder + ", bSeatCode=" + bSeatCode + ", HF=" + HF + ", pNum=" + pNum + "]";
	}
	
}
