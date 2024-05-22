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
 * This exception is raised if an unknown signal was sent to to a server.
 **/
public class BadSignalException extends com.zeroc.Ice.UserException
{
    public BadSignalException()
    {
        this.reason = "";
    }

    public BadSignalException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public BadSignalException(String reason)
    {
        this.reason = reason;
    }

    public BadSignalException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::BadSignalException";
    }

    /**
     * The details of the unknown signal.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::BadSignalException", -1, true);
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
    public static final long serialVersionUID = 4463365625572405314L;
}
