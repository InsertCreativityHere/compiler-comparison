//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

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

    public CannotCreateSessionException(Throwable cause)
    {
        super(cause);
        this.reason = "";
    }

    public CannotCreateSessionException(String reason)
    {
        this.reason = reason;
    }

    public CannotCreateSessionException(String reason, Throwable cause)
    {
        super(cause);
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
    public com.zeroc.Ice.SlicedData ice_getSlicedData()
    {
        return _slicedData;
    }

    /** @hidden */
    @Override
    public void _write(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.startException(_slicedData);
        _writeImpl(ostr);
        ostr.endException();
    }

    /** @hidden */
    @Override
    public void _read(com.zeroc.Ice.InputStream istr)
    {
        istr.startException();
        _readImpl(istr);
        _slicedData = istr.endException(true);
    }

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
    protected com.zeroc.Ice.SlicedData _slicedData;

    /** @hidden */
    public static final long serialVersionUID = 8990438748789843679L;
}
