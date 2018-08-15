package com.boda.pojo;

import java.util.Date;

public class OverTime {
	//逾期信息表
	private Integer overTimeId;
	private Integer loanId;
	private Integer whichStage;//哪一期逾期
	private Float overTimeMoney;
	private Date shouldReturnDate;
	private String urgeState;
	
	
	public Integer getOverTimeId() {
		return overTimeId;
	}
	public Integer getWhichStage() {
		return whichStage;
	}
	public void setWhichStage(Integer whichStage) {
		this.whichStage = whichStage;
	}
	public Date getShouldReturnDate() {
		return shouldReturnDate;
	}
	public void setShouldReturnDate(Date shouldReturnDate) {
		this.shouldReturnDate = shouldReturnDate;
	}
	public String getUrgeState() {
		return urgeState;
	}
	public void setUrgeState(String urgeState) {
		this.urgeState = urgeState;
	}
	public void setOverTimeId(Integer overTimeId) {
		this.overTimeId = overTimeId;
	}
	public Integer getLoanId() {
		return loanId;
	}
	public void setLoanId(Integer loanId) {
		this.loanId = loanId;
	}
	public Float getOverTimeMoney() {
		return overTimeMoney;
	}
	public void setOverTimeMoney(Float overTimeMoney) {
		this.overTimeMoney = overTimeMoney;
	}

}
