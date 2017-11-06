package org.cy.servlet;

import org.cy.bean.User;
import org.cy.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by Reus_cy on 2017/10/30.
 */
@Controller
@RequestMapping(value = "/user")
public class UserServlet  {

    @Autowired
    IUserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
   public String Login(HttpSession session){
        System.out.println("***********************************");
       User user=userService.userLogin("admin","admin");
       session.setAttribute("user",user);
        return "redirect:/index.jsp";
    }

}
