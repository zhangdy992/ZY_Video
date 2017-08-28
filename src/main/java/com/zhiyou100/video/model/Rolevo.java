package com.zhiyou100.video.model;

public class Rolevo {
	
	private String keyword;
	private String serchSpeaker;
	private String serchCourse;
	private int startPage;
	private String namekeyword;
	private String jobkeyword;
	
	
	
	public String getNamekeyword() {
		return namekeyword;
	}
	public void setNamekeyword(String namekeyword) {
		this.namekeyword = namekeyword;
	}
	public String getJobkeyword() {
		return jobkeyword;
	}
	public void setJobkeyword(String jobkeyword) {
		this.jobkeyword = jobkeyword;
	}
	private int current;
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getSerchSpeaker() {
		return serchSpeaker;
	}
	public void setSerchSpeaker(String serchSpeaker) {
		this.serchSpeaker = serchSpeaker;
	}
	public String getSerchCourse() {
		return serchCourse;
	}
	public void setSerchCourse(String serchCourse) {
		this.serchCourse = serchCourse;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	@Override
	public String toString() {
		return "Rolevo [keyword=" + keyword + ", serchSpeaker=" + serchSpeaker + ", serchCourse=" + serchCourse
				+ ", startPage=" + startPage + ", namekeyword=" + namekeyword + ", jobkeyword=" + jobkeyword
				+ ", current=" + current + "]";
	}
	
	
	
	
	
	
	
	

}
