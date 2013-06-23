package com.jjw.personalwebsite.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PersonalWebsiteHomeController extends PersonalWebsiteControllerAbs
{
    Logger LOG = Logger.getLogger(PersonalWebsiteHomeController.class);

    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
    public String showHomePage(Map<String, Object> model)
    {
        LOG.info("Handling request in PersonalWebsiteHomeController");

        model.put(BLOG_ENTRIES, myBlogEntriesDao.getBlogEntries());
        model.put(PICTURES, myPicturesDao.getPictures());

        return HOME;
    }
}
