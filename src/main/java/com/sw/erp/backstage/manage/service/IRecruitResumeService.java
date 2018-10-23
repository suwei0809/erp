package com.sw.erp.backstage.manage.service;

import com.sw.erp.backstage.manage.model.RecruitResume;

public interface IRecruitResumeService {

    RecruitResume getRecruitResumeById(RecruitResume recruitResume);

    Integer getRecruitResumeId();
}
