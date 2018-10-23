package com.sw.erp.backstage.message.controller;

import com.sw.erp.backstage.message.model.Interview;
import com.sw.erp.backstage.message.model.Message;
import com.sw.erp.backstage.message.service.IMessageService;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.service.ITouristService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MessageController {

    @Autowired
    private IMessageService messageService;
    @Autowired
    private ITouristService touristService;


    @RequestMapping("/sendInterviewMessage")
    public void sendInterviewMessage(HttpServletRequest request, HttpServletResponse response)throws Exception {
        int resumeId = Integer.parseInt(request.getParameter("resumeId"));
        Resume resume = new Resume();
        resume.setId(resumeId);
        Resume newResume = touristService.getResumesById(resume);
        int messageId = Integer.parseInt(request.getParameter("messageId"));
        Interview interview = new Interview();
        interview.setMessageId(messageId);
        interview.setStatue(0);
        Interview newInterview = messageService.getInterViewByMId(interview);
        if (newInterview!=null){
            messageService.addInterview(interview);
            Message message = new Message();
            message.setId(messageId);
            message.setTouristId(newResume.getTouristId());
            messageService.editMessage(message);
            response.getWriter().print(200);
        }else {
            response.getWriter().print(202);
        }

    }


}
