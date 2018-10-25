package com.sw.erp.backstage.message.service;

import com.sw.erp.backstage.message.model.Interview;
import com.sw.erp.backstage.message.model.Message;

import java.util.List;

public interface IMessageService {

    boolean addMessage(Message message);
    List<Message> getMessage(Message message);
    Message getMessageById(Message message);
    boolean editMessage(Message message);
    List<Interview> getInterView(Interview interview);
    boolean addInterview(Interview interview);
    boolean editInterview(Interview interview);
    Interview getInterViewByMId(Interview interview);
    Integer getMessageMaxId();

}
