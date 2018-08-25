package com.boda.service;

import com.boda.mapper.LoanMapper;
import com.boda.pojo.Loan;
import com.boda.util.Tool;
import com.boda.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class LoanService {

    @Resource
    private LoanMapper loanMapper;

    //根据贷款日期搜索
    public Page<Loan> getLoanInfo(String minDate, String maxDate, Page<Loan> page) throws Exception {
        /*
        List<Loan> temp = new LinkedList<>();

        //查找贷款信息
        //Step0：检查是否有搜索参数，若无，则搜索所有记录
        if (Tool.hasNoPara(loanSearchToken)) {
            loans.addAll(loanMapper.findLoan());
        } else {
            //若未指定最晚借贷日期，则设置为当前日期
            if ("".equals(loanSearchToken.get("loanMaxDate"))) {
                loanSearchToken.replace("loanMaxDate", Tool.formatDateToString(new Date()));
            }
            //若未指定最早还贷日期，则设置为1970
            if ("".equals(loanSearchToken.get("returnMinDate"))) {
                loanSearchToken.replace("returnMinDate", Tool.formatDateToString(new Date(1970)));
            }

            //Step1: 根据id搜索
            loans.addAll(loanMapper.findLoanById(
                    Integer.parseInt(Tool.isInteger(loanSearchToken.get("id")) ? loanSearchToken.get("id") : "0")));
            //Step2: 根据姓名搜索，若姓名为空，将搜索所有记录；取交集，实现多条件查找，下同
            temp.addAll(loanMapper.findLoanByName(loanSearchToken.get("name")));
            loans = Tool.combineMutualRecord(loans, temp);
            //Step3: 根据贷款日期搜索
            temp.addAll(loanMapper.findLoanByLoanDate(
                    loanSearchToken.get("loanMinDate"), loanSearchToken.get("loanMaxDate")));
            loans = Tool.combineMutualRecord(loans, temp);
            //Step4: 根据还款日期搜索
//            temp.addAll(loanMapper.findLoanByReturnDate(
//                    loanSearchToken.get("returnMinDate"), loanSearchToken.get("returnMaxDate")));
//            loans = Tool.combineMutualRecord(loans, temp);
            //Step5: 根据贷款金额搜索，可能需要判断是否为数字
            temp.addAll(loanMapper.findLoanByMoney(
                    0, 10000)); //测试用
//                Float.parseFloat(loanSearchToken.get("minAmount")), Float.parseFloat(loanSearchToken.get("maxAmount"))));
            loans = Tool.combineMutualRecord(loans, temp);
        }
        */

        List<Loan> loans = new LinkedList<>();

        loans.remove(null);

        int pageMAXRow = page.getPageSize();
        int startRow = (page.getCurrentPage() - 1) * page.getPageSize();

//        List<User> userList = userManagerMapper.queryUser(user,startrow,page.getPageRowNum());
        loans.addAll(loanMapper.findLoanByLoanDate(minDate, maxDate, startRow, page.getPageSize()));

        page.setObjList(loans);

        int allRowNum = loanMapper.findLoanCount();
        int allPageNum = allRowNum % pageMAXRow == 0 ? allRowNum / pageMAXRow : allRowNum / pageMAXRow + 1;
        page.setAllPageNum(allPageNum);
        System.out.println(loans);
        return page;
    }

}