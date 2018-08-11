package com.boda.pojo;

public class Employee {
	private Integer empId;
	private Integer postId;//Ö°Î»id£¬Íâ¼ü
	private String empAccount;
	private String empPassword;
	
	private EmpDetail empDetail;
	
	
	public EmpDetail getEmpDetail() {
		return empDetail;
	}
	public void setEmpDetail(EmpDetail empDetail) {
		this.empDetail = empDetail;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Integer getPostId() {
		return postId;
	}
	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	public String getEmpAccount() {
		return empAccount;
	}
	public void setEmpAccount(String empAccount) {
		this.empAccount = empAccount;
	}
	public String getEmpPassword() {
		return empPassword;
	}
	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", postId=" + postId + ", empAccount=" + empAccount + ", empPassword="
				+ empPassword + ", empDetail=" + empDetail + "]";
	}
	

}
