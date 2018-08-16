package com.boda.pojo;

import java.util.Date;

public class Department {
	private Integer deptId;
	private String deptName;
	private Integer deptEmpNum;//部门员工数量
	private Date deptBuildTime;
	
	
	public Integer getDeptId() {
		return deptId;
	}
	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public Integer getDeptEmpNum() {
		return deptEmpNum;
	}
	public void setDeptEmpNum(Integer deptEmpNum) {
		this.deptEmpNum = deptEmpNum;
	}
	public Date getDeptBuildTime() {
		return deptBuildTime;
	}
	public void setDeptBuildTime(Date deptBuildTime) {
		this.deptBuildTime = deptBuildTime;
	}

}
