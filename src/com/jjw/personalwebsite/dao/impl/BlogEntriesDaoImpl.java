package com.jjw.personalwebsite.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;

import com.jjw.personalwebsite.BlogEntry;
import com.jjw.personalwebsite.dao.BlogEntriesDao;

public class BlogEntriesDaoImpl implements BlogEntriesDao
{
    Logger LOG = Logger.getLogger(BlogEntriesDaoImpl.class);

    @Override
    public List<BlogEntry> getBlogEntries()
    {
        LOG.info("Not Implemented");

        return null;
    }
}
