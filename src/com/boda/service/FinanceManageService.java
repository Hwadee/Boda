package com.boda.service;

import com.boda.mapper.CustomerMapper;
import com.boda.mapper.LoanMapper;
import com.boda.mapper.ReturnLoanMapper;
import com.boda.mapper.UrgeForReturnMapper;
import com.boda.pojo.Loan;
import com.boda.pojo.ReturnLoan;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

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

        int startRow = (currentPage - 1) * pageSize;
        List<ReturnLoan> todayReturns = returnLoanMapper.findTodayReturn(startRow, pageSize);
        todayReturnPage.setObjList(todayReturns);
        return todayReturnPage;
    }

    public Page<ReturnLoan> returnAccountWork(int currentPage, int pageSize, Integer loanId) throws IOException {
        Page<ReturnLoan> returnPage = new Page<>();
        returnPage.setCurrentPage(currentPage);
        returnPage.setPageSize(pageSize);

        List<ReturnLoan> returnLoan = returnLoanMapper.findReturnLoanByLoanId(loanId);

        returnPage.setObjList(returnLoan);
        int allRowNum = returnLoanMapper.findReturnLoanCount(loanId);
        if (allRowNum % pageSize == 0) {
            returnPage.setAllPageNum(allRowNum / pageSize);
        } else {
            returnPage.setAllPageNum(allRowNum / pageSize + 1);
        }
        return returnPage;

    }

    public void updateReturnMoney(String returnId) throws IOException {
        ReturnLoan returnLoan = new ReturnLoan();
        returnLoan.setReturnId(Integer.parseInt(returnId));
        returnLoanMapper.updateReturnLoan(returnLoan);
    }

}
