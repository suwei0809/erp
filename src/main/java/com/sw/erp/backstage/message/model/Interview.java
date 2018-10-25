package com.sw.erp.backstage.message.model;

import java.io.Serializable;

public class Interview implements Serializable{

    private Integer id;
    private Integer statue;
    private Integer messageId;
    private String idate;
    private String place;

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

    public String getIdate() {
        return idate;
    }

    public void setIdate(String idate) {
        this.idate = idate;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Override
    public String toString() {
        return "Interview{" +
                "id=" + id +
                ", statue=" + statue +
                ", messageId=" + messageId +
                ", date='" + idate + '\'' +
                ", place='" + place + '\'' +
                '}';
    }
}
