package com.boda.util;

import org.apache.commons.mail.HtmlEmail;

public class EmailSender {

    public static boolean sendValidationEmail(String emailAddress, String code) {

        try {
            HtmlEmail email = new HtmlEmail();//不用更改
            email.setHostName("smtp.qq.com");//需要修改，126邮箱为smtp.126.com,163邮箱为163.smtp.com，QQ为smtp.qq.com
            email.setCharset("UTF-8");
            email.addTo(emailAddress);// 收件地址

            email.setFrom("1037081683@qq.com", "Boda");//此处填邮箱地址和用户名,用户名可以任意填写

            email.setAuthentication("1037081683@qq.com", "nuwxgkfvvceubbif"); //此处填写邮箱地址和客户端授权码

            email.setSubject("博达小额贷款业务管理系统");//此处填写邮件名，邮件名可任意填写
            email.setMsg("尊敬的用户您好,您本次修改密码的验证码是:\n" + code);//此处填写邮件内容

            email.send();
//            System.out.println("Email sent");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
