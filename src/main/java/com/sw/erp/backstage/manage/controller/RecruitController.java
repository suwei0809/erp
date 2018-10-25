package com.sw.erp.backstage.manage.controller;

import com.sw.erp.backstage.manage.model.Recruit;
import com.sw.erp.backstage.manage.model.RecruitResume;
import com.sw.erp.backstage.manage.model.User;
import com.sw.erp.backstage.manage.service.IRecruitResumeService;
import com.sw.erp.backstage.manage.service.IRecruitService;
import com.sw.erp.backstage.manage.service.IUserService;
import com.sw.erp.backstage.message.model.Interview;
import com.sw.erp.backstage.message.model.Message;
import com.sw.erp.backstage.message.service.IMessageService;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.service.ITouristService;
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
    @Autowired
    private IRecruitResumeService recruitResumeService;
    @Autowired
    private ITouristService touristService;


    /**
     * 请求登录  后台
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/backLoginPage")
    public String backLoginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "backStage/login";
    }

    /**
     * 判断是否登录成功 是否是管理员
     *
     * @param request
     * @param user
     * @param response
     * @throws Exception
     */
    @RequestMapping("/backLogin")
    public void backLogin(HttpServletRequest request, @RequestBody User user, HttpServletResponse response) throws Exception {
        User newUser = userService.getUser(user);
        if (newUser != null) {
            request.getSession().setAttribute("user", newUser);
            if (newUser.getIsSuperuser() == 1) {
                response.getWriter().print(200);
            } else {
                response.getWriter().print(201);
            }
        } else {
            response.getWriter().print(202);
        }
    }

    /**
     * 返回成功页面管理员
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/backIndex")
    public String backIndex(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "backStage/index2";
    }

    /**
     * 招聘信息数据请求
     *
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/recruitDate")
    public void recruitDate(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Recruit recruit = new Recruit();
        List<Recruit> recruits = recruitService.getRecruit(recruit);
        if (null == recruits || recruits.size() == 0) {
            response.getWriter().print(202);
        } else {
            request.getSession().setAttribute("recruits", recruits);
            response.getWriter().print(200);
        }
    }

    /**
     * 管理员消息界面
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/messagePage")
    public String messagePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        User user = (User) request.getSession().getAttribute("user");
        if (user==null){
            return "backStage/login";
        }
        Message message = new Message();
        message.setUserId(user.getId());
        List<Message> messageList = messageService.getMessage(message);
        Interview interview = new Interview();
        interview.setStatue(1);
        List<Interview> interviewList = messageService.getInterView(interview);
        request.getSession().setAttribute("interviews", interviewList);
        request.getSession().setAttribute("messages", messageList);
        if (user == null) {
            return "backStage/login";
        }
        return "backStage/message";
    }


    /**
     * 消息查看，返回简历界面
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/lookMessage")
    public String lookMessage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        Message message = new Message();
        message.setId(id);
        message.setFlag(2);
        messageService.editMessage(message);
        Message newMessage = messageService.getMessageById(message);
        RecruitResume recruitResume = new RecruitResume();
        recruitResume.setId(newMessage.getRecruitresumeId());
        RecruitResume newRecruitResume = recruitResumeService.getRecruitResumeById(recruitResume);
        Resume resume = new Resume();
        resume.setId(newRecruitResume.getResumeId());
        Resume newResume = touristService.getResumesById(resume);
        request.getSession().setAttribute("resumeId", newResume);
        request.setAttribute("message", newMessage);
        request.setAttribute("recruitResume", newRecruitResume);
        return "backStage/recruit/lookResume";
    }

}
