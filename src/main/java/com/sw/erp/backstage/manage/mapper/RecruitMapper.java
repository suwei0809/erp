package com.sw.erp.backstage.manage.mapper;

import com.sw.erp.backstage.manage.model.Recruit;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecruitMapper {

    List<Recruit> getRecruit(Recruit recruit);


}
