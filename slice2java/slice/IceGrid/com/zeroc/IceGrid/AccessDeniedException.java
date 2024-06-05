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
 * his exception is raised if a registry lock wasn't acquired or is already held by a session.
 **/
public class AccessDeniedException extends com.zeroc.Ice.UserException
{
    public AccessDeniedException()
    {
        this.lockUserId = "";
    }

    public AccessDeniedException(Throwable cause)
    {
        super(cause);
        this.lockUserId = "";
    }

    public AccessDeniedException(String lockUserId)
    {
        this.lockUserId = lockUserId;
    }

    public AccessDeniedException(String lockUserId, Throwable cause)
    {
        super(cause);
        this.lockUserId = lockUserId;
    }

    public String ice_id()
    {
        return "::IceGrid::AccessDeniedException";
    }

    /**
     * The id of the user holding the lock (if any).
     **/
    public String lockUserId;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::AccessDeniedException", -1, true);
        ostr_.writeString(lockUserId);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        lockUserId = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 5447244557620505811L;
}
