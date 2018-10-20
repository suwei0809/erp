package com.sw.erp.tourist.controller;

import com.sw.erp.tourist.model.Tourist;
import com.sw.erp.tourist.service.ITouristService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@EnableAutoConfiguration
@Controller
public class TouristController {

    @Autowired
    private ITouristService touristService;

    @RequestMapping("/homePage")
    public String homePage(){
        return "tourist/register";
    }


    @RequestMapping("/addTourist")
    public void addTourist(){
        Tourist tourist = new Tourist();
        tourist.setTouristName("aa0");
        tourist.setTouristPass("sssa");
        touristService.addTourist(tourist);
//        return "sss";
    }

}
