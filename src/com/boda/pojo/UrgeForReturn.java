package com.boda.pojo;

import java.util.Date;

public class UrgeForReturn {
	private Integer empId;
	private Integer returnId;
	private Date lastUrgeDate;
	private String urgeState;
	
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Date getLastUrgeDate() {
		return lastUrgeDate;
	}
	public void setLastUrgeDate(Date lastUrgeDate) {
		this.lastUrgeDate = lastUrgeDate;
	}
	public Integer getReturnId() {
		return returnId;
	}
	public void setReturnId(Integer returnId) {
		this.returnId = returnId;
	}
	public String getUrgeState() {
		return urgeState;
	}
	public void setUrgeState(String urgeState) {
		this.urgeState = urgeState;
	}
	

}
