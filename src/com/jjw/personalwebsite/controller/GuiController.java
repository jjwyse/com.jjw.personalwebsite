package com.jjw.personalwebsite.controller;

import java.util.Arrays;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

        model.put("Types1", Arrays.<String> asList("Tigers", "Giants", "Cardinals", "RedSox", "WhiteSox", "BlueJays",
                "Rockies", "Indians", "Twins", "Yankees", "Mets"));

        return TEST_GUI;
    }

    /**
     * Handles the incoming GET requests to [base_url]/testgui/one
     * 
     * @param model The model to pass back to the view
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui/one" }, method = RequestMethod.GET)
    public String getTestGuiOne(ModelMap model)
    {
        LOG.info("Handling GET request in test GUI");

        return TEST_GUI + "_login";
    }

    /**
     * Handles the incoming GET requests to [base_url]/testgui/two
     * 
     * @param model The model to pass back to the view
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui/two" }, method = RequestMethod.GET)
    public String getTestGuiTwo(ModelMap model)
    {
        LOG.info("Handling GET request in test GUI");

        return TEST_GUI + "_login";
    }

    /**
     * Handles the incoming GET requests to [base_url]/testgui/login
     * 
     * @param model The model to pass back to the view
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui/three" }, method = RequestMethod.GET)
    public String getTestGuiThree(ModelMap model)
    {
        LOG.info("Handling GET request in test GUI");

        return TEST_GUI + "_login";
    }

    /**
     * Handles the incoming GET requests to [base_url]/testgui/four
     * 
     * @param model The model to pass back to the view
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui/four" }, method = RequestMethod.GET)
    public String getTestGuiFour(ModelMap model)
    {
        LOG.info("Handling GET request in test GUI");

        return TEST_GUI + "_login";
    }

    /**
     * Handles the incoming POST requests to [base_url]/testgui/transfer
     * 
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui" }, method = RequestMethod.POST)
    @ResponseBody
    public String getPostGui(TransferForm transferForm, ModelMap model)
    {
        LOG.info("Handling POST request in test GUI for transfer form: " + transferForm);

        clearModelMap(model);

        return "Successfully transferred data";
    }

    private void clearModelMap(ModelMap model)
    {
        model.put("toDate", "");
        model.put("fromDate", "");
        model.put("user", "");
        model.put("version", "");
    }

    /**
     * 
     * @param transferForm
     * @return
     */
    private String buildSuccessString(TransferForm transferForm)
    {
        StringBuilder stringBuilder = new StringBuilder();

        stringBuilder.append("Successfully transferred data:").append("\n");
        stringBuilder.append(" " + transferForm.getFromDate()).append(" - ").append(transferForm.getToDate())
                .append("\n");
        stringBuilder.append("  user    : " + transferForm.getUser()).append("\n");
        stringBuilder.append("  version : " + transferForm.getVersion()).append("\n");

        return stringBuilder.toString();
    }
}
