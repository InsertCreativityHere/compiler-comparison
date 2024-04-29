//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Exception.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * An exception for deployment errors.
 **/
public class DeploymentException extends com.zeroc.Ice.UserException
{
    public DeploymentException()
    {
        this.reason = "";
    }

    public DeploymentException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public DeploymentException(String reason)
    {
        this.reason = reason;
    }

    public DeploymentException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::DeploymentException";
    }

    /**
     * The reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::DeploymentException", -1, true);
        ostr_.writeString(reason);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        reason = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -6801510367659313072L;
}
