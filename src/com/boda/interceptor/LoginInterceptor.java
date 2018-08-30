package com.boda.interceptor;

import com.boda.pojo.Employee;
import com.boda.util.ActionPowerManage;
import com.boda.util.OperationLogger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //判斷是否已登录
        Employee loginEmployee = (Employee) request.getSession().getAttribute("employee");
        if (loginEmployee == null) {
            //没有session处于未登陆状态
            request.getRequestDispatcher("userLogin.jsp").forward(request, response);
            return false;
        } else if (!ActionPowerManage.hasPower(request)) {
            request.setAttribute("MSG", "没有权限");
            request.getRequestDispatcher("index2.jsp").forward(request, response);
            return false;
        }
        try {
            OperationLogger.addLogger(request);
        } catch (Exception e) {
            System.out.println("Add operation log failed.");
            e.printStackTrace();
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
