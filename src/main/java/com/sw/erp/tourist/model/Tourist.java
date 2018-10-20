package com.sw.erp.tourist.model;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public class Tourist {
    private Integer touristId;
    private String  touristName;
    private String touristPass;

    public Tourist() {
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
}
