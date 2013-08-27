package com.jjw.personalwebsite.controller;

import java.util.List;

/**
 * Form used to send a transfer from the front-end to our back-end controller
 * 
 * @author jjwyse
 * 
 */
public class TransferForm
{
    /** The String representation of what types we want to transfer */
    private List<String> myTransferTypes;
    private String myUser;
    private String myVersion;
    private String myFromDate;
    private String myToDate;

    /**
     * Empty constructor
     */
    public TransferForm()
    {
    }

    /**
     * Main constructor setting all of our fields
     * 
     * @param transferTypes
     * @param user
     * @param version
     * @param fromDate
     * @param toDate
     */
    public TransferForm(List<String> transferTypes, String user, String version, String fromDate, String toDate)
    {
        myTransferTypes = transferTypes;
        myUser = user;
        myVersion = version;
        myFromDate = fromDate;
        myToDate = toDate;
    }

    /**
     * @return the user
     */
    public String getUser()
    {
        return myUser;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user)
    {
        this.myUser = user;
    }

    /**
     * @return the version
     */
    public String getVersion()
    {
        return myVersion;
    }

    /**
     * @param version the version to set
     */
    public void setVersion(String version)
    {
        this.myVersion = version;
    }

    /**
     * @return the fromDate
     */
    public String getFromDate()
    {
        return myFromDate;
    }

    /**
     * @param fromDate the fromDate to set
     */
    public void setFromDate(String fromDate)
    {
        this.myFromDate = fromDate;
    }

    /**
     * @return the toDate
     */
    public String getToDate()
    {
        return myToDate;
    }

    /**
     * @param toDate the toDate to set
     */
    public void setToDate(String toDate)
    {
        this.myToDate = toDate;
    }

    /**
     * @return the transferTypes
     */

    public List<String> getTransferTypes()
    {
        return myTransferTypes;
    }

    /**
     * @param transferTypes the transferTypes to set
     */

    public void setTransferTypes(List<String> transferTypes)
    {
        this.myTransferTypes = transferTypes;
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
        builder.append("TransferForm [myTransferTypes=");
        builder.append(myTransferTypes);
        builder.append(", myUser=");
        builder.append(myUser);
        builder.append(", myVersion=");
        builder.append(myVersion);
        builder.append(", myFromDate=");
        builder.append(myFromDate);
        builder.append(", myToDate=");
        builder.append(myToDate);
        builder.append("]");
        return builder.toString();
    }
}
