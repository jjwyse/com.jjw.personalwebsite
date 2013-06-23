package com.jjw.personalwebsite.controller;

import org.springframework.beans.factory.annotation.Autowired;

import com.jjw.personalwebsite.PersonalWebsiteConstants;
import com.jjw.personalwebsite.dao.BlogEntriesDao;
import com.jjw.personalwebsite.dao.PicturesDao;

public class PersonalWebsiteControllerAbs implements PersonalWebsiteConstants
{
    @Autowired
    protected BlogEntriesDao myBlogEntriesDao;

    @Autowired
    protected PicturesDao myPicturesDao;
}
