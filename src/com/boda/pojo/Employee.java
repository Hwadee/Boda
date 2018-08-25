package com.boda.pojo;

public class Employee {
	private Integer empId;
	private Integer postId;
	private String empAccount;
	private String empPassword;
	private String empName;
	private String deptName;
	private String postName;

	private EmpDetail empDetail;

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

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
		return "Employee{" +
				"empId=" + empId +
				", postId=" + postId +
				", empAccount='" + empAccount + '\'' +
				", empPassword='" + empPassword + '\'' +
				", empName='" + empName + '\'' +
				", deptName='" + deptName + '\'' +
				", postName='" + postName + '\'' +
				", empDetail=" + empDetail +
				'}';
	}


}
