package com.boda.pojo;

import java.util.Date;
import java.util.List;

public class Loan {
	//贷款信息表
	private Integer loanId;
	private Integer customerId;//外键，贷款对应的客户信息
	private Integer empId;//外键，哪个员工进行的处理
	private Integer loanMoney;//贷款金额
	private Date loanDate;
	private String loanState;
	private Date returnStartDate;//归还日期
	private Integer returnYears;//归还年限（几年还完）
	private Integer numberOfStages;//贷款期数（分几期归还）
	private Float rateOfInterest;//贷款利率
	
	CustomerMessage customerMessage;//每条贷款信息关联一条客户信息
	
	List<ReturnLoan> returnLoans;//每条贷款信息关联多条还款信息
	
	public Date getReturnStartDate() {
		return returnStartDate;
	}
	public void setReturnStartDate(Date returnStartDate) {
		this.returnStartDate = returnStartDate;
	}
	public Integer getReturnYears() {
		return returnYears;
	}
	public void setReturnYears(Integer returnYears) {
		this.returnYears = returnYears;
	}
	public CustomerMessage getCustomerMessage() {
		return customerMessage;
	}
	public void setCustomerMessage(CustomerMessage customerMessage) {
		this.customerMessage = customerMessage;
	}
	public List<ReturnLoan> getReturnLoans() {
		return returnLoans;
	}
	public void setReturnLoans(List<ReturnLoan> returnLoans) {
		this.returnLoans = returnLoans;
	}
	public Integer getLoanId() {
		return loanId;
	}
	public void setLoanId(Integer loanId) {
		this.loanId = loanId;
	}
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getLoanMoney() {
		return loanMoney;
	}
	public void setLoanMoney(Integer loanMoney) {
		this.loanMoney = loanMoney;
	}
	public Date getLoanDate() {
		return loanDate;
	}
	public void setLoanDate(Date loanDate) {
		this.loanDate = loanDate;
	}
	public String getLoanState() {
		return loanState;
	}
	public void setLoanState(String loanState) {
		this.loanState = loanState;
	}
	
	public Integer getNumberOfStages() {
		return numberOfStages;
	}
	public void setNumberOfStages(Integer numberOfStages) {
		this.numberOfStages = numberOfStages;
	}
	public Float getRateOfInterest() {
		return rateOfInterest;
	}
	public void setRateOfInterest(Float rateOfInterest) {
		this.rateOfInterest = rateOfInterest;
	}
	@Override
	public String toString() {
		return "Loan [loanId=" + loanId + ", customerId=" + customerId + ", empId=" + empId + ", loanMoney=" + loanMoney
				+ ", loanDate=" + loanDate + ", loanState=" + loanState + ", returnStartDate=" + returnStartDate
				+ ", returnYears=" + returnYears + ", numberOfStages=" + numberOfStages + ", rateOfInterest="
				+ rateOfInterest + ", customerMessage=" + customerMessage + ", returnLoans=" + returnLoans + "]";
	}
	

}
