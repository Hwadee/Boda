package com.boda.pojo;

import java.util.Date;

public class ReturnLoan {
	//贷款归还信息表
	private Integer returnId;
	private Integer loanId;//外键，贷款id
	private Float returnMoney;//归还金额
	private Float shouldReturnMonry;
	private Date returnDate;
	private Date shouldReturnDate;
	private Integer whichStage;
	private String returnState;
	
	public Float getShouldReturnMonry() {
		return shouldReturnMonry;
	}
	public void setShouldReturnMonry(Float shouldReturnMonry) {
		this.shouldReturnMonry = shouldReturnMonry;
	}
	public Date getShouldReturnDate() {
		return shouldReturnDate;
	}
	public void setShouldReturnDate(Date shouldReturnDate) {
		this.shouldReturnDate = shouldReturnDate;
	}
	public Integer getWhichStage() {
		return whichStage;
	}
	public void setWhichStage(Integer whichStage) {
		this.whichStage = whichStage;
	}
	public String getReturnState() {
		return returnState;
	}
	public void setReturnState(String returnState) {
		this.returnState = returnState;
	}
	public Integer getReturnId() {
		return returnId;
	}
	public void setReturnId(Integer returnId) {
		this.returnId = returnId;
	}
	public Integer getLoanId() {
		return loanId;
	}
	public void setLoanId(Integer loanId) {
		this.loanId = loanId;
	}
	public Float getReturnMoney() {
		return returnMoney;
	}
	public void setReturnMoney(Float returnMoney) {
		this.returnMoney = returnMoney;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	} 

}
