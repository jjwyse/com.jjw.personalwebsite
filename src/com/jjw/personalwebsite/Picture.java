package com.jjw.personalwebsite;

public class Picture
{
    private String myTitle;
    private String myMonth;
    private int myYear;
    /**
     * @return the month
     */
    public String getMonth()
    {
        return myMonth;
    }
    /**
     * @param month the month to set
     */
    public void setMonth(String month)
    {
        myMonth = month;
    }
    /**
     * @return the title
     */
    public String getTitle()
    {
        return myTitle;
    }
    /**
     * @param title the title to set
     */
    public void setTitle(String title)
    {
        myTitle = title;
    }
    /**
     * @return the year
     */
    public int getYear()
    {
        return myYear;
    }
    /**
     * @param year the year to set
     */
    public void setYear(int year)
    {
        myYear = year;
    }
}
