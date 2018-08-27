package com.boda.pojo;

import java.util.Date;

public class UrgeForReturn {
    private Integer urgeId;
    private Integer empId;
    private Integer returnId;
    private Date lastUrgeDate;
    private String urgeState;


    public Integer getUrgeId() {
        return urgeId;
    }

    public void setUrgeId(Integer urgeId) {
        this.urgeId = urgeId;
    }

    public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Date getLastUrgeDate() {
		return lastUrgeDate;
	}
	public void setLastUrgeDate(Date lastUrgeDate) {
		this.lastUrgeDate = lastUrgeDate;
	}

    public Integer getReturnId() {
        return returnId;
    }

    public void setReturnId(Integer returnId) {
        this.returnId = returnId;
    }

    public String getUrgeState() {
        return urgeState;
    }

    public void setUrgeState(String urgeState) {
        this.urgeState = urgeState;
    }

    @Override
    public String toString() {
        return "UrgeForReturn [urgeId=" + urgeId + ", empId=" + empId + ", returnId=" + returnId + ", lastUrgeDate="
                + lastUrgeDate + ", urgeState=" + urgeState + "]";
    }


}
