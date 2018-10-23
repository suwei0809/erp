package com.sw.erp.backstage.message.service;


import com.sw.erp.backstage.message.mapper.InterviewMapper;
import com.sw.erp.backstage.message.mapper.MessageMapper;
import com.sw.erp.backstage.message.model.Interview;
import com.sw.erp.backstage.message.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageService implements IMessageService {

    @Autowired
    private MessageMapper messageMapper;
    @Autowired
    private InterviewMapper interviewMapper;

    @Override
    public boolean addMessage(Message message) {
        return false;
    }

    @Override
    public List<Message> getMessage(Message message) {
        return messageMapper.getMessages(message);
    }

    @Override
    public Message getMessageById(Message message) {
        List<Message> messages = messageMapper.getMessages(message);
        if (messages!=null || messages.get(0).getId()!=0){
            return messages.get(0);
        }
        return null;
    }

    @Override
    public boolean editMessage(Message message) {
        return messageMapper.editMessage(message);
    }


    /**
     * 获取所有的面试表数据
     * @param interview
     * @return
     */
    @Override
    public List<Interview> getInterView(Interview interview) {
        return interviewMapper.getInterView(interview);
    }

    @Override
    public boolean addInterview(Interview interview) {
        return interviewMapper.addInterview(interview);
    }

    @Override
    public boolean editInterview(Interview interview) {
        return interviewMapper.editInterview(interview);
    }

    @Override
    public Interview getInterViewByMId(Interview interview) {
        List<Interview> interviewList = interviewMapper.getInterView(interview);
        if (interviewList!=null && interviewList.size()>0){
            return interviewList.get(0);
        }
        return null;
    }
}
