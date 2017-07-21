package project.baseball.dto;

public class Team {
	private String tNum;
	private String tName;
	private String homeStd;
	private String mName;
	
	public String gettNum() {
		return tNum;
	}
	public void settNum(String tNum) {
		this.tNum = tNum;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getHomeStd() {
		return homeStd;
	}
	public void setHomeStd(String homeStd) {
		this.homeStd = homeStd;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
	
}
