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
 * This exception is raised if a file is not available.
 *
 * @see AdminSession#openServerStdOut
 * @see AdminSession#openServerStdErr
 * @see AdminSession#openNodeStdOut
 * @see AdminSession#openNodeStdErr
 * @see AdminSession#openRegistryStdOut
 * @see AdminSession#openRegistryStdErr
 **/
public class FileNotAvailableException extends com.zeroc.Ice.UserException
{
    public FileNotAvailableException()
    {
        this.reason = "";
    }

    public FileNotAvailableException(String reason)
    {
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::FileNotAvailableException";
    }

    /**
     * The reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::FileNotAvailableException", -1, true);
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
    private static final long serialVersionUID = -8985151642272244406L;
}
