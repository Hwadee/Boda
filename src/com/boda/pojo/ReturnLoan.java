package com.boda.pojo;

import java.util.Date;

public class ReturnLoan {
	//贷款归还信息表
	private Integer retuenId;
	private Integer loanId;//外键，贷款id
	private Float returnMoney;//归还金额
	private Date returnDate;
	public Integer getRetuenId() {
		return retuenId;
	}
	public void setRetuenId(Integer retuenId) {
		this.retuenId = retuenId;
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
