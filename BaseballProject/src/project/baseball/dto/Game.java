package project.baseball.dto;

import java.util.Date;

public class Game {
	private String gCode;
	private Date gDate;
	private String hTeam;
	private String aTeam;
	private String weather;
	private String sNum;
	
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
	public String getsNum() {
		return sNum;
	}
	public void setsNum(String sNum) {
		this.sNum = sNum;
	}
	
	
	
}
