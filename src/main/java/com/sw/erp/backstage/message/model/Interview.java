package com.sw.erp.backstage.message.model;

import java.io.Serializable;

public class Interview implements Serializable{

    private Integer id;
    private Integer statue;
    private Integer messageId;


    public Interview() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStatue() {
        return statue;
    }

    public void setStatue(Integer statue) {
        this.statue = statue;
    }

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    @Override
    public String toString() {
        return "Interview{" +
                "id=" + id +
                ", statue=" + statue +
                ", messageId=" + messageId +
                '}';
    }
}
