package com.jjw.personalwebsite.controller;

import java.util.Arrays;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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

    /**
     * Handles the incoming GET requests to [base_url]/testgui
     * 
     * @param model The model to pass back to the view
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui" }, method = RequestMethod.GET)
    public String getTestGui(ModelMap model)
    {
        LOG.info("Handling GET request in test GUI");

        model.put("Types1", Arrays.<String> asList("Type 1", "Type 2", "Type 3", "Type 4", "Type 5", "Type 6",
                "Type 7", "Type 8", "Type 9", "Type 10", "Type 11"));
        model.put("Types2", Arrays.<String> asList("Type 1"));

        return TEST_GUI;
    }
}
