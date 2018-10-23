package com.sw.erp.backstage.manage.mapper;

import com.sw.erp.backstage.manage.model.Message;

import java.util.List;

public interface MessageMapper {

    boolean addMessage(Message message);

    List<Message> getMessage(Message message);
}
