package com.boda.vo;

import com.boda.pojo.CustomerMessage;

public class OverTimeDistribute {

    private CustomerMessage customerMessage;
    private Integer loanNum;//贷款数
    private Integer loanMoney;//贷款款总金额
    private Integer overTimeNum;//逾期次数

    public CustomerMessage getCustomerMessage() {
        return customerMessage;
    }

    public void setCustomerMessage(CustomerMessage customerMessage) {
        this.customerMessage = customerMessage;
    }

    public Integer getLoanNum() {
        return loanNum;
    }

    public void setLoanNum(Integer loanNum) {
        this.loanNum = loanNum;
    }

    public Integer getLoanMoney() {
        return loanMoney;
    }

    public void setLoanMoney(Integer loanMoney) {
        this.loanMoney = loanMoney;
    }

    public Integer getOverTimeNum() {
        return overTimeNum;
    }

    public void setOverTimeNum(Integer overTimeNum) {
        this.overTimeNum = overTimeNum;
    }
}
