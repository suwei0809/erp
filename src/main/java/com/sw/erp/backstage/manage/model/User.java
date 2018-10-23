package com.sw.erp.backstage.manage.model;

import java.io.Serializable;

public class User implements Serializable {
    private Integer id;
    private String accountName;
    private String personalName;
    private String password;
    private Integer organizationId;
    private Integer jobId;
    private String email;
    private Integer isSuperuser;
    private String school;
    private String degree;
    private String address;
    private Integer deleteFlag;

    public User() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPersonalName() {
        return personalName;
    }

    public void setPersonalName(String personalName) {
        this.personalName = personalName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(Integer organizationId) {
        this.organizationId = organizationId;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getIsSuperuser() {
        return isSuperuser;
    }

    public void setIsSuperuser(Integer isSuperuser) {
        this.isSuperuser = isSuperuser;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", accountName='" + accountName + '\'' +
                ", personalName='" + personalName + '\'' +
                ", password='" + password + '\'' +
                ", organizationId=" + organizationId +
                ", jobId=" + jobId +
                ", email='" + email + '\'' +
                ", isSuperuser='" + isSuperuser + '\'' +
                ", school='" + school + '\'' +
                ", degree='" + degree + '\'' +
                ", address='" + address + '\'' +
                ", deleteFlag=" + deleteFlag +
                '}';
    }
}
