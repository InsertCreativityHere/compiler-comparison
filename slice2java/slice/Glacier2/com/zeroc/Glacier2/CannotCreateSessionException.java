// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.Glacier2;

/**
 * This exception is raised if an attempt to create a new session failed.
 **/
public class CannotCreateSessionException extends com.zeroc.Ice.UserException
{
    public CannotCreateSessionException()
    {
        this.reason = "";
    }

    public CannotCreateSessionException(String reason)
    {
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::Glacier2::CannotCreateSessionException";
    }

    /**
     * The reason why session creation has failed.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Glacier2::CannotCreateSessionException", -1, true);
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
    private static final long serialVersionUID = -3986259877380207726L;
}
