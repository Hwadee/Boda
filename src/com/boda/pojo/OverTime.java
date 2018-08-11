package com.boda.pojo;

import java.util.Date;

public class OverTime {
	//逾期信息表
	private Integer overTimeId;
	private Integer loanId;
	private Float overTimeMoney;
	private Integer overTimeDays;
	private String overUrge;//是否已经催促
	private Date urgeDate;//催促日期
	public Integer getOverTimeId() {
		return overTimeId;
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
	public Integer getOverTimeDays() {
		return overTimeDays;
	}
	public void setOverTimeDays(Integer overTimeDays) {
		this.overTimeDays = overTimeDays;
	}
	public String getOverUrge() {
		return overUrge;
	}
	public void setOverUrge(String overUrge) {
		this.overUrge = overUrge;
	}
	public Date getUrgeDate() {
		return urgeDate;
	}
	public void setUrgeDate(Date urgeDate) {
		this.urgeDate = urgeDate;
	}
	

}
