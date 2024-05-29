//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Glacier2;

/**
 * This exception is raised if a client is denied the ability to create a session with the router.
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
        return "::Glacier2::PermissionDeniedException";
    }

    /**
     * The reason why permission was denied.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Glacier2::PermissionDeniedException", -1, true);
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
    public static final long serialVersionUID = -5089373126141697593L;
}
