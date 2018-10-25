package com.sw.erp.tourist.controller;

import com.sw.erp.backstage.message.model.Message;
import com.sw.erp.backstage.message.service.IMessageService;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.model.Tourist;
import com.sw.erp.tourist.service.ITouristService;
import com.sw.erp.tourist.service.TouristService;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.util.List;

@EnableAutoConfiguration
@Controller
public class TouristController {

    @Autowired
    private ITouristService touristService;

    @Autowired
    private IMessageService messageService;

    @RequestMapping("/homePage")
    public String homePage(HttpServletRequest request, HttpServletResponse response) {
//        HttpSession session = request.getSession();
//        Tourist tourist = new Tourist();
//        tourist.setTouristId(1);
//        tourist.setTouristName("aa0");
//        tourist.setTouristPass("sssa");
//        session.setAttribute("tourist",tourist);
        return "index";
    }

    @RequestMapping("/registerPage")
    public String registerPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "tourist/register";
    }

    /**
     * 游客注册
     *
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/addTourist")
    public void addTourist(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("name");
        String pass = request.getParameter("password");
        Tourist tourist = new Tourist(name, pass);
        touristService.addTourist(tourist);
        response.getWriter().print(200);
    }

    @RequestMapping("/loginPage")
    public String loginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "tourist/login";
    }

    /**
     * 登陆
     *
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/login")
    public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("name");
        String pass = request.getParameter("password");
        Tourist tourist = new Tourist(name, pass);
        Tourist newTourist = touristService.getTourist(tourist);
        if (newTourist != null && newTourist.getTouristId() != 0) {
            HttpSession session = request.getSession();
            session.setAttribute("tourist", newTourist);
            response.getWriter().print(200);
        } else {
            response.getWriter().print(202);
        }
    }

    @RequestMapping("/checkLogin")
    public void checkLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Tourist tourist = (Tourist) request.getSession().getAttribute("tourist");
        if (tourist != null) {
            response.getWriter().print(200);
        } else {
            response.getWriter().print(202);
        }
    }

    /**
     * 消息列表
     */
    @RequestMapping("/touristMessagePage")
    public String touristMessagePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Tourist tourist = (Tourist) request.getSession().getAttribute("tourist");
        if (tourist==null){
            return "tourist/login";
        }
        Message message = new Message();
        message.setTouristId(tourist.getTouristId());
        List<Message> newMessage = messageService.getMessage(message);
        request.getSession().setAttribute("touristMessage",newMessage);
        return "tourist/message";
    }


}
