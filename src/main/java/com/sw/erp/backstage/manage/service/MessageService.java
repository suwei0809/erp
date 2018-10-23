package com.sw.erp.backstage.manage.service;


import com.sw.erp.backstage.manage.mapper.MessageMapper;
import com.sw.erp.backstage.manage.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MessageService implements IMessageService {
    @Autowired
    private MessageMapper messageMapper;

    @Override
    public boolean addMessage(Message message) {
        return false;
    }

    @Override
    public List<Message> getMessage(Message message) {
        return messageMapper.getMessage(message);
    }
}
