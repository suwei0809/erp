package com.sw.erp.backstage.manage.model;

import java.io.Serializable;

public class Recruit implements Serializable {
    private Integer id;
    private String job;
    private String place;
    private Double salary;
    private String require;
    private String contact;
    private Integer pnumber;
    private String education;
    private String experience;
    private String beginDate;

    public Recruit() {}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public String getRequire() {
        return require;
    }

    public void setRequire(String require) {
        this.require = require;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Integer getPnumber() {
        return pnumber;
    }

    public void setPnumber(Integer pnumber) {
        this.pnumber = pnumber;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    @Override
    public String toString() {
        return "Recruit{" +
                "id=" + id +
                ", job='" + job + '\'' +
                ", place='" + place + '\'' +
                ", salary=" + salary +
                ", require='" + require + '\'' +
                ", contact='" + contact + '\'' +
                ", pnumber=" + pnumber +
                ", education='" + education + '\'' +
                ", experience='" + experience + '\'' +
                ", beginDate='" + beginDate + '\'' +
                '}';
    }
}
