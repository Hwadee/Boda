package com.boda.pojo;

import java.util.Date;

public class CustomerMessage {
	private Integer customerId;
	private String customerName;
	private String customerSex;
	private String customerIdentityId;
	private Date customerBirthday;
	private String customerEmail;
	private String customerPhone;
	private String customerAddress;
	private Integer customerCredit;
	
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerSex() {
		return customerSex;
	}
	public void setCustomerSex(String customerSex) {
		this.customerSex = customerSex;
	}
	public String getCustomerIdentityId() {
		return customerIdentityId;
	}
	public void setCustomerIdentityId(String customerIdentityId) {
		this.customerIdentityId = customerIdentityId;
	}
	public Date getCustomerBirthday() {
		return customerBirthday;
	}
	public void setCustomerBirthday(Date customerBirthday) {
		this.customerBirthday = customerBirthday;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public Integer getCustomerCredit() {
		return customerCredit;
	}
	public void setCustomerCredit(Integer customerCredit) {
		this.customerCredit = customerCredit;
	}
	@Override
	public String toString() {
		return "CustomerMessage [customerId=" + customerId + ", customerName=" + customerName + ", customerSex="
				+ customerSex + ", customerIdentityId=" + customerIdentityId + ", customerBirthday=" + customerBirthday
				+ ", customerEmail=" + customerEmail + ", customerPhone=" + customerPhone + ", customerAddress="
				+ customerAddress + ", customerCredit=" + customerCredit + "]";
	}
	

}
