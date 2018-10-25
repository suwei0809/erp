package com.sw.erp.backstage.message.controller;

import com.sw.erp.backstage.manage.model.Recruit;
import com.sw.erp.backstage.manage.model.RecruitResume;
import com.sw.erp.backstage.manage.service.IRecruitResumeService;
import com.sw.erp.backstage.manage.service.IRecruitService;
import com.sw.erp.backstage.message.model.Interview;
import com.sw.erp.backstage.message.model.Message;
import com.sw.erp.backstage.message.service.IMessageService;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.model.Tourist;
import com.sw.erp.tourist.service.ITouristService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MessageController {

    @Autowired
    private IMessageService messageService;
    @Autowired
    private ITouristService touristService;
    @Autowired
    private IRecruitResumeService recruitResumeService;
    @Autowired
    private IRecruitService recruitService;

    @RequestMapping("/sendInterviewMessage")
    public void sendInterviewMessage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int resumeId = Integer.parseInt(request.getParameter("resumeId"));
        Resume resume = new Resume();
        resume.setId(resumeId);
        Resume newResume = touristService.getResumesById(resume);
        int messageId = Integer.parseInt(request.getParameter("messageId"));
        String idate = request.getParameter("idate");
        String place = request.getParameter("place");
        Message message = new Message();
        message.setId(messageId);
        Message newMessage = messageService.getMessageById(message);
        newMessage.setTouristId(newResume.getTouristId());
        newMessage.setFlag(1);
        newMessage.setStatu(2);
        newMessage.setUserId(0);
        messageService.addMessage(newMessage);
        Interview interview = new Interview();
        interview.setMessageId(messageId);
        interview.setIdate(idate);
        interview.setPlace(place);
        interview.setStatue(0);
        messageService.addInterview(interview);
        response.getWriter().print(200);
    }

    @RequestMapping("/interviewMessageData")
    public void interviewMessageData(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        Message message = new Message();
        message.setId(id);
        Message newMessage = messageService.getMessageById(message);
        message.setFlag(2);
        messageService.editMessage(message);
        RecruitResume recruitResume = new RecruitResume();
        recruitResume.setId(newMessage.getRecruitresumeId());
        RecruitResume recruitResume1 = recruitResumeService.getRecruitResumeById(recruitResume);
        Recruit recruit = new Recruit();
        recruit.setId(recruitResume1.getRecruitId());
        Recruit newRecruit = recruitService.getRecruitById(recruit);
        Interview interview = new Interview();
        interview.setMessageId(id);
        HttpSession session = request.getSession(false);
        Interview newInterview = messageService.getInterViewByMId(interview);
        session.setAttribute("newRecruit", newRecruit);
        session.setAttribute("newInterview", newInterview);
        Tourist tourist = (Tourist) request.getSession().getAttribute("tourist");
        session.setAttribute("tourist", tourist);
        response.getWriter().print(200);
    }

    @RequestMapping("/toInterview")
    public void toInterview(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Interview interview = (Interview) request.getSession().getAttribute("newInterview");
        interview.setStatue(1);
        messageService.editInterview(interview);
        response.getWriter().print(200);
    }

}
