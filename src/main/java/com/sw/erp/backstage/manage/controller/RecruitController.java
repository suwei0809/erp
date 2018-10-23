package com.sw.erp.backstage.manage.controller;

import com.sw.erp.backstage.manage.model.Message;
import com.sw.erp.backstage.manage.model.Recruit;
import com.sw.erp.backstage.manage.model.User;
import com.sw.erp.backstage.manage.service.IMessageService;
import com.sw.erp.backstage.manage.service.IRecruitService;
import com.sw.erp.backstage.manage.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class RecruitController {

    @Autowired
    private IRecruitService recruitService;
    @Autowired
    private IUserService userService;
    @Autowired
    private IMessageService messageService;

    /**
     * 请求登录  后台
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/backLoginPage")
    public String backLoginPage(HttpServletRequest request, HttpServletResponse response)throws Exception {
        return "backStage/login";
    }

    /**
     * 判断是否登录成功 是否是管理员
     * @param request
     * @param user
     * @param response
     * @throws Exception
     */
    @RequestMapping("/backLogin")
    public void backLogin(HttpServletRequest request, @RequestBody User user, HttpServletResponse response)throws Exception {
       User newUser = userService.getUser(user);
       if (newUser!=null){
           request.getSession().setAttribute("user",newUser);
           if (newUser.getIsSuperuser()==1){
             response.getWriter().print(200);
           }else {
               response.getWriter().print(201);
           }
       }else {
           response.getWriter().print(202);
       }
    }

    /**
     * 返回成功页面管理员
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/backIndex")
    public String backIndex(HttpServletRequest request, HttpServletResponse response)throws Exception {
        return "backStage/index2";
    }

    /**
     * 招聘信息数据请求
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/recruitDate")
    public void recruitDate(HttpServletRequest request, HttpServletResponse response)throws Exception{
        Recruit recruit = new Recruit();
        List<Recruit> recruits = recruitService.getRecruit(recruit);
        if (null == recruits || recruits.size()==0){
            response.getWriter().print(202);
        }else {
                request.getSession().setAttribute("recruits",recruits);
            response.getWriter().print(200);
        }
    }

    @RequestMapping("/messagePage")
    public String messagePage(HttpServletRequest request, HttpServletResponse response)throws Exception {
        User user = (User) request.getSession().getAttribute("user");
        Message message = new Message();
        message.setUserId(user.getId());
        List<Message> messageList = messageService.getMessage(message);
        request.getSession().setAttribute("messages",messageList);
        if (user==null){
            return "backStage/login";
        }
        return "backStage/message";
    }

    @RequestMapping("/lookMessage")
    public String lookMessage(HttpServletRequest request, HttpServletResponse response)throws Exception {
        return "";
    }


}
