package com.sw.erp.tourist.mapper;

import com.sw.erp.tourist.model.Resume;
import com.sw.erp.tourist.model.Tourist;

import java.util.List;

public interface ResumeMapper {

    boolean addResume(Resume resume);
    List<Resume> getResumesByTouristId(Resume resume);
    boolean editResume(Resume resume);
    boolean deleteResume(Resume resume);

}
