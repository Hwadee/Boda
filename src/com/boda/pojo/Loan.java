package com.boda.pojo;

import java.util.Date;

public class Loan {
	//������Ϣ��
	private Integer loanId;
	private Integer customerId;//����������Ӧ�Ŀͻ���Ϣ
	private Integer empId;//������ĸ�Ա�����еĴ���
	private Integer loanMoney;//������
	private Date loanDate;
	private String loanState;
	private Date returnDate;//�黹����
	private Integer numOfStages;//�����������ּ��ڹ黹��
	private Float rateOfInterest;//��������
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
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	public Integer getNumOfStages() {
		return numOfStages;
	}
	public void setNumOfStages(Integer numOfStages) {
		this.numOfStages = numOfStages;
	}
	public Float getRateOfInterest() {
		return rateOfInterest;
	}
	public void setRateOfInterest(Float rateOfInterest) {
		this.rateOfInterest = rateOfInterest;
	}

}
