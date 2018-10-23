package com.sw.erp.tourist.model;

import java.io.Serializable;
import java.math.BigInteger;

public class Resume implements Serializable{

    private Integer id;
    private String name;
    private String reSex;
    private String birth;
    private String hometown;
    private String nation;
    private String polity;
    private String education;
    private Integer height;
    private Double weight;
    private String major;
    private String marry;
    private String school;
    private String email;
    private Long phone;
    private String addr;
    private String perresume;
    private String sel;
    private Integer touristId;
    private String nameResume;

    public Resume() { }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getReSex() {
        return reSex;
    }

    public void setReSex(String reSex) {
        this.reSex = reSex;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getPolity() {
        return polity;
    }

    public void setPolity(String polity) {
        this.polity = polity;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getMarry() {
        return marry;
    }

    public void setMarry(String marry) {
        this.marry = marry;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getPhone() {
        return phone;
    }

    public void setPhone(Long phone) {
        this.phone = phone;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getPerresume() {
        return perresume;
    }

    public void setPerresume(String perresume) {
        this.perresume = perresume;
    }

    public String getSel() {
        return sel;
    }

    public void setSel(String sel) {
        this.sel = sel;
    }

    public Integer getTouristId() {
        return touristId;
    }

    public void setTouristId(Integer touristId) {
        this.touristId = touristId;
    }

    public String getNameResume() {
        return nameResume;
    }

    public void setNameResume(String nameResume) {
        this.nameResume = nameResume;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", reSex='" + reSex + '\'' +
                ", birth='" + birth + '\'' +
                ", hometown='" + hometown + '\'' +
                ", nation='" + nation + '\'' +
                ", polity='" + polity + '\'' +
                ", education='" + education + '\'' +
                ", height=" + height +
                ", weight=" + weight +
                ", major='" + major + '\'' +
                ", marry='" + marry + '\'' +
                ", school='" + school + '\'' +
                ", email='" + email + '\'' +
                ", phone=" + phone +
                ", addr='" + addr + '\'' +
                ", perresume='" + perresume + '\'' +
                ", sel='" + sel + '\'' +
                ", touristId=" + touristId +
                '}';
    }
}
