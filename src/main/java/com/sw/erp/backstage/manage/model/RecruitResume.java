package com.sw.erp.backstage.manage.model;

import java.io.Serializable;

public class RecruitResume implements Serializable{
    private Integer id;
    private Integer recruitId;
    private Integer resumeId;

    public RecruitResume() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRecruitId() {
        return recruitId;
    }

    public void setRecruitId(Integer recruitId) {
        this.recruitId = recruitId;
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }


    @Override
    public String toString() {
        return "RecruitResume{" +
                "id=" + id +
                ", recruitId=" + recruitId +
                ", resumeId=" + resumeId +
                '}';
    }
}
