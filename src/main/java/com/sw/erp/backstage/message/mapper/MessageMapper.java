package com.sw.erp.backstage.message.mapper;

import com.sw.erp.backstage.message.model.Message;

import java.util.List;

public interface MessageMapper {

    boolean addMessage(Message message);

    List<Message> getMessages(Message message);

    boolean editMessage(Message message);
}
