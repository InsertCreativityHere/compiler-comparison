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
 * This exception is raised if a client is denied the ability to create a session with IceGrid.
 **/
public class PermissionDeniedException extends com.zeroc.Ice.UserException
{
    public PermissionDeniedException()
    {
        this.reason = "";
    }

    public PermissionDeniedException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public PermissionDeniedException(String reason)
    {
        this.reason = reason;
    }

    public PermissionDeniedException(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceGrid::PermissionDeniedException";
    }

    /**
     * The reason why permission was denied.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::PermissionDeniedException", -1, true);
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
    private static final long serialVersionUID = 7526795789821632960L;
}
