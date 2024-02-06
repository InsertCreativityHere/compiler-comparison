//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `FileServer.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IcePatch2;

/**
 * This exception is raised if a file's contents cannot be read.
 **/
public class FileAccessException extends com.zeroc.Ice.UserException
{
    public FileAccessException()
    {
        this.reason = "";
    }

    public FileAccessException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public FileAccessException(String reason)
    {
        this.reason = reason;
    }

    public FileAccessException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IcePatch2::FileAccessException";
    }

    /**
     * An explanation of the reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IcePatch2::FileAccessException", -1, true);
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
    public static final long serialVersionUID = -5996618046718692081L;
}
