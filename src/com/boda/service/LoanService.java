package com.boda.service;

import com.boda.mapper.LoanMapper;
import com.boda.pojo.Loan;
import com.boda.util.Tool;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class LoanService {

    @Resource
    private LoanMapper loanMapper;

    //多个搜索框，依次为id、姓名、贷款日期、还款日期、金额，其中日期和金额可以设置上下限
    //所有搜索参数已依次整合为一个hashmap
    public List<Loan> getLoanInfo(HashMap<String, String> loanSearchToken) throws Exception {

        List<Loan> loans = new LinkedList<>();
        List<Loan> temp = new LinkedList<>();

        //查找贷款信息
        //Step1: 根据姓名搜索，若姓名为空，便搜索所有记录
        loans.addAll(loanMapper.findLoanByName(loanSearchToken.get("name")));
        //Step2: 根据id搜索，取交集，实现多条件查找，下同
        temp.addAll(loanMapper.findLoanById(
                Integer.parseInt(Tool.isInteger(loanSearchToken.get("id")) ? loanSearchToken.get("id") : "0")));
        loans = Tool.combineMutualRecord(loans, temp);
        //Step3: 根据贷款日期搜索
        temp.addAll(loanMapper.findLoanByLoanDate(
                loanSearchToken.get("loanMinDate"), loanSearchToken.get("loanMaxDate")));
        loans = Tool.combineMutualRecord(loans, temp);
        //Step4: 根据还款日期搜索
        temp.addAll(loanMapper.findLoanByReturnDate(
                loanSearchToken.get("returnMinDate"), loanSearchToken.get("returnMaxDate")));
        loans = Tool.combineMutualRecord(loans, temp);
        //Step5: 根据贷款金额搜索，可能需要判断是否为数字
        temp.addAll(loanMapper.findLoanByMoney(
                0, 10000)); //测试用
//                Float.parseFloat(loanSearchToken.get("minAmount")), Float.parseFloat(loanSearchToken.get("maxAmount"))));
        loans = Tool.combineMutualRecord(loans, temp);

//        removeDuplicate(loans);
//        loans.remove(null);

//        if (loans.isEmpty()) {
//            System.out.println("Empty");
//            loans.addAll(loanMapper.findLoan());
//        }

        return loans;
    }

}