package com.boda.pojo;

import java.util.Date;

public class OverTime {
	//������Ϣ��
	private Integer overTimeId;
	private Integer loanId;
	private Float overTimeMoney;
	private Integer overTimeDays;
	private String overUrge;//�Ƿ��Ѿ��ߴ�
	private Date urgeDate;//�ߴ�����
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
