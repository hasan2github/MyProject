/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kgate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kgate.model.ProjectDetails;
import com.kgate.service.ProjectService;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

/**
 *
 * @author user
 */
@Controller
public class TestClass {

    @Autowired
    ProjectService projectservice;

//    @InitBinder("projectDetails")
//    public void initBinder(WebDataBinder binder) {
//        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
//        dateFormat.setLenient(false);
//        binder.registerCustomEditor(Date.class,"pstart_Date" ,new CustomDateEditor(
//                dateFormat, false));
//    }

    @RequestMapping(value = "/cproject", method = RequestMethod.POST)
    public ModelAndView createProject(@ModelAttribute("projectDetails") ProjectDetails projectDetails) {
        // ModelAndView model = new ModelAndView();
        ModelAndView model = new ModelAndView("success");
        projectservice.createProject(projectDetails);

        return model;

    }
}
