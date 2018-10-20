package com.sw.erp.tourist.service;

import com.sw.erp.tourist.mapper.TouristMapper;
import com.sw.erp.tourist.model.Tourist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TouristService implements ITouristService{

    @Autowired
    private TouristMapper touristMapper;

    @Override
    public boolean addTourist(Tourist tourist) {
        return touristMapper.addTourist(tourist);

    }
}
