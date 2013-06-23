package com.jjw.personalwebsite;

import java.util.Date;

public class BlogEntry
{
    private Date myDate;
    private String myContent;
    /**
     * @return the date
     */
    public Date getDate()
    {
        return myDate;
    }
    /**
     * @param date the date to set
     */
    public void setDate(Date date)
    {
        myDate = date;
    }
    /**
     * @return the content
     */
    public String getContent()
    {
        return myContent;
    }
    /**
     * @param content the content to set
     */
    public void setContent(String content)
    {
        myContent = content;
    }
}
