package com.sw.erp.backstage.manage.mapper;

import com.sw.erp.backstage.manage.model.RecruitResume;

import java.util.List;

public interface RecruitResumeMapper {

    boolean addRecruitResume(RecruitResume recruitResume);

    List<RecruitResume> getRecruitResume(RecruitResume recruitResume);

    Integer getRecruitResumeId();

}
