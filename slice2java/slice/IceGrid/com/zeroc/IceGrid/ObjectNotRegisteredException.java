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
 * This exception is raised if an object is not registered.
 **/
public class ObjectNotRegisteredException extends com.zeroc.Ice.UserException
{
    public ObjectNotRegisteredException()
    {
        this.id = new com.zeroc.Ice.Identity();
    }

    public ObjectNotRegisteredException(Throwable cause)
    {
        super(cause);
        this.id = new com.zeroc.Ice.Identity();
    }

    public ObjectNotRegisteredException(com.zeroc.Ice.Identity id)
    {
        this.id = id;
    }

    public ObjectNotRegisteredException(com.zeroc.Ice.Identity id, Throwable cause)
    {
        super(cause);
        this.id = id;
    }

    public String ice_id()
    {
        return "::IceGrid::ObjectNotRegisteredException";
    }

    /**
     * The identity of the object.
     **/
    public com.zeroc.Ice.Identity id;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::ObjectNotRegisteredException", -1, true);
        com.zeroc.Ice.Identity.ice_write(ostr_, id);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = com.zeroc.Ice.Identity.ice_read(istr_);
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 7672370394518637857L;
}
