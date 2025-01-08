//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Locator.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice;

/**
 * This exception is raised if an object cannot be found.
 **/
public class ObjectNotFoundException extends com.zeroc.Ice.UserException
{
    public ObjectNotFoundException()
    {
    }

    public String ice_id()
    {
        return "::Ice::ObjectNotFoundException";
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Ice::ObjectNotFoundException", -1, true);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 3509254788035907082L;
}
