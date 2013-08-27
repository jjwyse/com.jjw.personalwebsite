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

        model.put("Types1", Arrays.<String> asList("Type 1", "Type 2", "Type 3", "Type 4", "Type 5", "Type 6",
                "Type 7", "Type 8", "Type 9", "Type 10", "Type 11"));
        model.put("Types2", Arrays.<String> asList("Type 1"));

        return TEST_GUI;
    }

    /**
     * Handles the incoming GET requests to [base_url]/testgui/login
     * 
     * @param model The model to pass back to the view
     * @return The view to display
     */
    @RequestMapping(value = { "/testgui/login" }, method = RequestMethod.GET)
    public String getTestGuiLog(ModelMap model)
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
    public String getPostGui()
    {
        LOG.info("Handling POST request in test GUI");

        return "Successfully initiated transfer of data for transfer form";
    }

    public class TransferForm
    {
        // Map<String, Boolean> transferTypes;
        String user;
        String version;
        String from;
        String to;

        /**
         * @return the user
         */
        public String getUser()
        {
            return user;
        }

        /**
         * @param user the user to set
         */
        public void setUser(String user)
        {
            this.user = user;
        }

        /**
         * @return the version
         */
        public String getVersion()
        {
            return version;
        }

        /**
         * @param version the version to set
         */
        public void setVersion(String version)
        {
            this.version = version;
        }

        /**
         * @return the from
         */
        public String getFrom()
        {
            return from;
        }

        /**
         * @param from the from to set
         */
        public void setFrom(String from)
        {
            this.from = from;
        }

        /**
         * @return the to
         */
        public String getTo()
        {
            return to;
        }

        /**
         * @param to the to to set
         */
        public void setTo(String to)
        {
            this.to = to;
        }

        /*
         * (non-Javadoc)
         * 
         * @see java.lang.Object#toString()
         */
        @Override
        public String toString()
        {
            StringBuilder builder = new StringBuilder();
            builder.append("TransferForm [user=");
            builder.append(user);
            builder.append(", version=");
            builder.append(version);
            builder.append(", from=");
            builder.append(from);
            builder.append(", to=");
            builder.append(to);
            builder.append("]");
            return builder.toString();
        }
    }
}
