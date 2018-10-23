package com.sw.erp.tourist.service;

import com.sw.erp.backstage.manage.model.Message;
import com.sw.erp.backstage.manage.model.RecruitResume;
import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.model.Tourist;

import java.util.List;

public interface ITouristService {
    boolean addTourist(Tourist tourist);
    Tourist getTourist(Tourist tourist);
    boolean addResume(Resume resume);
    List<Resume> getResumesByTouristId(Resume resume);
    boolean editResume(Resume resume);
    boolean deleteResume(Resume resume);
    Resume getResumesById(Resume resume);
    boolean addMessage(Message message);
    List<Message> getMessage(Message message);
    boolean addRecruitResume(RecruitResume recruitResume);
}
