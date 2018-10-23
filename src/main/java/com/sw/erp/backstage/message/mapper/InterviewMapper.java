package com.sw.erp.backstage.message.mapper;

import com.sw.erp.backstage.message.model.Interview;

import java.util.List;

public interface InterviewMapper {

    List<Interview> getInterView(Interview interview);
    boolean addInterview(Interview interview);
    boolean editInterview(Interview interview);

}
