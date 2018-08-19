package com.boda.pojo;

import java.util.Date;

public class Loan {
    //贷款信息表
    private Integer loanId;
    private Integer customerId;//外键，贷款对应的客户信息
    private Integer empId;//外键，哪个员工进行的处理
    private Integer loanMoney;//贷款金额
    private Date loanDate;
    private String loanState;
    private Date returnDate;//归还日期
    private Integer numOfStages;//贷款期数（分几期归还）
    private Float rateOfInterest;//贷款利率

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Loan)) return false;

        Loan loan = (Loan) o;

        return this.loanId.equals(loan.loanId);
    }

    @Override
    public int hashCode() {
        return loanId.hashCode();
    }

    @Override
    public String toString() {
        return "Loan [" +
                "loanId=" + loanId +
                ", customerId=" + customerId +
                ", empId=" + empId +
                ", loanMoney=" + loanMoney +
                ", loanDate=" + loanDate +
                ", loanState='" + loanState + '\'' +
                ", returnDate=" + returnDate +
                ", numOfStages=" + numOfStages +
                ", rateOfInterest=" + rateOfInterest +
                "]";
    }
}
