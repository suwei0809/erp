package com.sw.erp.backstage.manage.model;

import java.io.Serializable;

public class Job implements Serializable{
    private Integer id;
    private String name;
    private Integer orId;

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

    public Integer getOrId() {
        return orId;
    }

    public void setOrId(Integer orId) {
        this.orId = orId;
    }

    @Override
    public String toString() {
        return "Job{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", orId=" + orId +
                '}';
    }
}
