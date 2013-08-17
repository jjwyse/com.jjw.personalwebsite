package com.jjw.personalwebsite.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Playing around with a GUI
 * 
 * @author jjwyse
 */
@Controller
public class GuiController extends PersonalWebsiteControllerAbs
{
    Logger LOG = Logger.getLogger(GuiController.class);

    @RequestMapping(value ={"/testgui" }, method = RequestMethod.GET)
    public String getTestGui(Map<String, Object> model)
    {
        LOG.info("Handling GET request in test GUI");

        return TEST_GUI;
    }
}
