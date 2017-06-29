package com.sulh.yliapp.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by apple on 2017/6/28.
 */

@WebServlet("/login.do")
public class LoginServlet extends javax.servlet.http.HttpServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String userName = (String) req.getParameter("userName");
        String userPwd = (String) req.getParameter("userPwd");
        String callback = req.getParameter("callback");

        String mobile = "13123040554";
        String pwd = "123";

        Boolean result;
        if (mobile.equals(userName) && pwd.equals(userPwd)) {
            result = true;
        } else {
            result = false;
        }


        //返回json 数据

        String jsonStr = "{\"userName\":\"" + userName + "\", \"userPwd\":\"" + userPwd + "\"}";
        res.setContentType("text/javascript;charset=UTF-8");
        String output = callback + "(" + jsonStr + ")";

        PrintWriter out = res.getWriter();
        out.write(output);
        out.flush();
        out.close();
    }

}
