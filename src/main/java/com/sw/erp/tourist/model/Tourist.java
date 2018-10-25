package com.sw.erp.tourist.model;

import oracle.sql.NUMBER;
import org.mybatis.spring.annotation.MapperScan;

import java.io.Serializable;

@MapperScan
public class Tourist implements Serializable {
    private Integer touristId;
    private String  touristName;
    private String touristPass;

    public Tourist() {
    }

    public Tourist(String touristName, String touristPass) {
        this.touristName = touristName;
        this.touristPass = touristPass;
    }

    public Integer getTouristId() {
        return touristId;
    }

    public void setTouristId(Integer touristId) {
        this.touristId = touristId;
    }

    public String getTouristName() {
        return touristName;
    }

    public void setTouristName(String touristName) {
        this.touristName = touristName;
    }

    public String getTouristPass() {
        return touristPass;
    }

    public void setTouristPass(String touristPass) {
        this.touristPass = touristPass;
    }

    @Override
    public String toString() {
        return "Tourist{" +
                "touristId=" + touristId +
                ", touristName='" + touristName + '\'' +
                ", touristPass='" + touristPass + '\'' +
                '}';
    }
}
