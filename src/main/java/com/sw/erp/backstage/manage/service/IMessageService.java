package com.sw.erp.backstage.manage.service;

import com.sw.erp.backstage.manage.model.Message;

import java.util.List;

public interface IMessageService {

    boolean addMessage(Message message);

    List<Message> getMessage(Message message);
}
