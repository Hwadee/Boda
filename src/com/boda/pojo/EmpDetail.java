package com.boda.pojo;

import java.util.Date;

public class EmpDetail {
    private Integer empDetailId;//与employeeId保持一致
    private String empName;
    private Integer empWeight;
    private Integer empHeight;
    private String empEducation;
    private String empAddress;
    private String empHometown;
    private String empNation;
    private String empSex;
    private Date empBirthday;
    private String empPhone;
    private String empPhotoUrl;

    public Integer getEmpDetailId() {
        return empDetailId;
    }

    public void setEmpDetailId(Integer empDetailId) {
        this.empDetailId = empDetailId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public Integer getEmpWeight() {
        return empWeight;
    }

    public void setEmpWeight(Integer empWeight) {
        this.empWeight = empWeight;
    }

    public Integer getEmpHeight() {
        return empHeight;
    }

    public void setEmpHeight(Integer empHeight) {
        this.empHeight = empHeight;
    }

    public String getEmpEducation() {
        return empEducation;
    }

    public void setEmpEducation(String empEducation) {
        this.empEducation = empEducation;
    }

    public String getEmpAddress() {
        return empAddress;
    }

    public void setEmpAddress(String empAddress) {
        this.empAddress = empAddress;
    }

    public String getEmpHometown() {
        return empHometown;
    }

    public void setEmpHometown(String empHometown) {
        this.empHometown = empHometown;
    }

    public String getEmpNation() {
        return empNation;
    }

    public void setEmpNation(String empNation) {
        this.empNation = empNation;
    }

    public String getEmpSex() {
        return empSex;
    }

    public void setEmpSex(String empSex) {
        this.empSex = empSex;
    }

    public Date getEmpBirthday() {
        return empBirthday;
    }

    public void setEmpBirthday(Date empBirthday) {
        this.empBirthday = empBirthday;
    }

    public String getEmpPhone() {
        return empPhone;
    }

    public void setEmpPhone(String empPhone) {
        this.empPhone = empPhone;
    }

    public String getEmpPhotoUrl() {
        return empPhotoUrl;
    }

    public void setEmpPhotoUrl(String empPhotoUrl) {
        this.empPhotoUrl = empPhotoUrl;
    }

    @Override
    public String toString() {
        return "EmpDetail [empDetailId=" + empDetailId + ", empName=" + empName + ", empWeight=" + empWeight
                + ", empHeight=" + empHeight + ", empEducation=" + empEducation + ", empAddress=" + empAddress
                + ", empHometown=" + empHometown + ", empNation=" + empNation + ", empSex=" + empSex + ", empBirthday="
                + empBirthday + ", empPhone=" + empPhone + ", empPhotoUrl=" + empPhotoUrl + "]";
    }

}
