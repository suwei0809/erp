package com.sw.erp.tourist.service;

import com.sw.erp.backstage.manage.mapper.RecruitResumeMapper;
import com.sw.erp.backstage.manage.model.RecruitResume;
import com.sw.erp.backstage.message.mapper.MessageMapper;
import com.sw.erp.backstage.message.model.Message;
import com.sw.erp.tourist.mapper.ResumeMapper;
import com.sw.erp.tourist.mapper.TouristMapper;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.model.Tourist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TouristService implements ITouristService{

    @Autowired
    private TouristMapper touristMapper;
    @Autowired
    private ResumeMapper resumeMapper;
    @Autowired
    private MessageMapper messageMapper;
    @Autowired
    private RecruitResumeMapper recruitResumeMapper;


    @Override
    public boolean addTourist(Tourist tourist) {
        return touristMapper.addTourist(tourist);
    }

    @Override
    public Tourist getTourist(Tourist tourist) {
        return touristMapper.getTourist(tourist);
    }

    @Override
    public boolean addResume(Resume resume) {
        return resumeMapper.addResume(resume);
    }

    @Override
    public List<Resume> getResumesByTouristId(Resume resume) {
        return resumeMapper.getResumesByTouristId(resume);
    }

    @Override
    public boolean editResume(Resume resume) {
        return resumeMapper.editResume(resume);
    }

    @Override
    public boolean deleteResume(Resume resume) {
        return resumeMapper.deleteResume(resume);
    }

    @Override
    public Resume getResumesById(Resume resume) {
        List<Resume> resumeList= resumeMapper.getResumesByTouristId(resume);
        if (null!= resumeList && 0!=resumeList.get(0).getId()){
            return resumeList.get(0);
        }
        return null;
    }

    @Override
    public boolean addMessage(Message message) {
        String mes = "收到新的简历请及时查看！！！";
        message.setMessage(mes);
        return messageMapper.addMessage(message);
    }

    @Override
    public List<Message> getMessage(Message message) {
        return messageMapper.getMessages(message);
    }

    @Override
    public boolean addRecruitResume(RecruitResume recruitResume) {
        return recruitResumeMapper.addRecruitResume(recruitResume);
    }


}
