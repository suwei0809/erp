package com.sw.erp.tourist.mapper;

import com.sw.erp.tourist.model.Tourist;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface TouristMapper {

    boolean addTourist(Tourist tourist);

}
