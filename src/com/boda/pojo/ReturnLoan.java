package com.boda.pojo;

import java.util.Date;

public class ReturnLoan {
    //贷款归还信息表
    private Integer returnId;
    private Integer loanId;//外键，贷款id
    private Float returnMoney;//归还金额
    private Float shouldReturnMoney;
    private Date returnDate;
    private Date shouldReturnDate;
    private Integer whichStage;
    private String returnState;

    private UrgeForReturn urgeForReturn;

    public UrgeForReturn getUrgeForReturn() {
        return urgeForReturn;
    }

    public void setUrgeForReturn(UrgeForReturn urgeForReturn) {
        this.urgeForReturn = urgeForReturn;
    }

    public Float getShouldReturnMoney() {
        return shouldReturnMoney;
    }

    public void setShouldReturnMoney(Float shouldReturnMoney) {
        this.shouldReturnMoney = shouldReturnMoney;
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

    @Override
    public String toString() {
        return "ReturnLoan [returnId=" + returnId + ", loanId=" + loanId + ", returnMoney=" + returnMoney
                + ", shouldReturnMoney=" + shouldReturnMoney + ", returnDate=" + returnDate + ", shouldReturnDate="
                + shouldReturnDate + ", whichStage=" + whichStage + ", returnState=" + returnState + ", urgeForReturn="
                + urgeForReturn + "]";
    }


}
