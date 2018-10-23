package com.sw.erp.backstage.message.model;

import java.io.Serializable;

public class Message implements Serializable{
    private Integer id;
    private String message;
    private Integer statu;
    private Integer touristId;
    private Integer userId;
    private Integer flag;
    private Integer recruitresumeId;

    public Message() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getStatu() {
        return statu;
    }

    public void setStatu(Integer statu) {
        this.statu = statu;
    }

    public Integer getTouristId() {
        return touristId;
    }

    public void setTouristId(Integer touristId) {
        this.touristId = touristId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public Integer getRecruitresumeId() {
        return recruitresumeId;
    }

    public void setRecruitresumeId(Integer recruitresumeId) {
        this.recruitresumeId = recruitresumeId;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", message='" + message + '\'' +
                ", statu=" + statu +
                ", touristId=" + touristId +
                ", userId=" + userId +
                ", flag=" + flag +
                ", recruitresumeId=" + recruitresumeId +
                '}';
    }
}
