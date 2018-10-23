package com.sw.erp.backstage.manage.service;

import com.sw.erp.backstage.manage.mapper.RecruitResumeMapper;
import com.sw.erp.backstage.manage.model.RecruitResume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecruitResumeService implements IRecruitResumeService{

    @Autowired
    private RecruitResumeMapper recruitResumeMapper;

    @Override
    public RecruitResume getRecruitResumeById(RecruitResume recruitResume) {
        List<RecruitResume> recruitResumes = recruitResumeMapper.getRecruitResume(recruitResume);
        if (recruitResumes!=null || recruitResumes.get(0).getId()!=0){
            return recruitResumes.get(0);
        }
        return null;
    }

    @Override
    public Integer getRecruitResumeId() {
        return recruitResumeMapper.getRecruitResumeId();
    }
}
