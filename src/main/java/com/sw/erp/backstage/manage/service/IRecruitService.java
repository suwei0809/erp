package com.sw.erp.backstage.manage.service;

import com.sw.erp.backstage.manage.model.Recruit;

import java.util.List;

public interface IRecruitService {
    List<Recruit> getRecruit(Recruit recruit);
    Recruit getRecruitById(Recruit recruit);

}
