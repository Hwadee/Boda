package com.boda.service;


import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boda.mapper.CustomerMapper;
import com.boda.mapper.LoanMapper;
import com.boda.mapper.ReturnLoanMapper;
import com.boda.mapper.UrgeForReturnMapper;
import com.boda.pojo.CustomerMessage;
import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.pojo.UrgeForReturn;
import com.boda.vo.OverTimeDistribute;
import com.boda.vo.Page;

import javax.annotation.Resource;

@Service
public class FinanceManageService {
    @Resource
    private ReturnLoanMapper returnLoanMapper;

    public Page<ReturnLoan> returnOfToday(int currentPage, int pageSize) throws IOException {
        Page<ReturnLoan> todayReturnPage = new Page<>();
        todayReturnPage.setCurrentPage(currentPage);
        todayReturnPage.setPageSize(pageSize);
        int allRowNum = returnLoanMapper.findTodayReturnCount();
        if (allRowNum % pageSize == 0) {
            todayReturnPage.setAllPageNum(allRowNum / pageSize);
        } else {
            todayReturnPage.setAllPageNum(allRowNum / pageSize + 1);
        }
        int startRow = (todayReturnPage.getCurrentPage() - 1) * todayReturnPage.getPageSize();
        List<ReturnLoan> todayReturns = returnLoanMapper.findTodayReturn(startRow, pageSize);
        todayReturnPage.setObjList(todayReturns);
        return todayReturnPage;
    }

    public List<ReturnLoan> returnAccountWork(Integer loanId) throws IOException {

        return returnLoanMapper.findReturnLoanByLoanId(loanId);
    }

    public void updateReturnMoney(String returnId) throws IOException {
        ReturnLoan returnLoan = new ReturnLoan();
        returnLoan.setReturnId(Integer.parseInt(returnId));

        returnLoanMapper.updateReturnLoan(returnLoan);

    }

}
