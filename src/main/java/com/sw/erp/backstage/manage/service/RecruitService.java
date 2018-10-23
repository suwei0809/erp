package com.sw.erp.backstage.manage.service;

import com.sw.erp.backstage.manage.mapper.RecruitMapper;
import com.sw.erp.backstage.manage.model.Recruit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecruitService implements IRecruitService{
    @Autowired
    private RecruitMapper recruitMapper;

    @Override
    public List<Recruit> getRecruit(Recruit recruit) {
        return recruitMapper.getRecruit(recruit);
    }
}
