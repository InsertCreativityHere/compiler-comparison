//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceStorm;

/**
 * This exception indicates that a subscription failed due to an invalid QoS.
 **/
public class BadQoS extends com.zeroc.Ice.UserException
{
    public BadQoS()
    {
        this.reason = "";
    }

    public BadQoS(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public BadQoS(String reason)
    {
        this.reason = reason;
    }

    public BadQoS(String reason, Throwable cause)
    {
        super(cause);
        this.reason = reason;
    }

    public String ice_id()
    {
        return "::IceStorm::BadQoS";
    }

    /**
     * The reason for the failure.
     **/
    public String reason;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceStorm::BadQoS", -1, true);
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
    private static final long serialVersionUID = 7896658074983430463L;
}
