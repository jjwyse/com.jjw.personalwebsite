package com.jjw.personalwebsite.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;

import com.jjw.personalwebsite.Picture;
import com.jjw.personalwebsite.dao.PicturesDao;

public class PicturesDaoImpl implements PicturesDao
{
    Logger LOG = Logger.getLogger(PicturesDaoImpl.class);

    @Override
    public List<Picture> getPictures()
    {
        LOG.info("Not Implemented");

        return null;
    }
}
