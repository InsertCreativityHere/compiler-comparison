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
 * This exception is raised if an observer is already registered with the registry.
 *
 * @see AdminSession#setObservers
 * @see AdminSession#setObserversByIdentity
 **/
public class ObserverAlreadyRegisteredException extends com.zeroc.Ice.UserException
{
    public ObserverAlreadyRegisteredException()
    {
        this.id = new com.zeroc.Ice.Identity();
    }

    public ObserverAlreadyRegisteredException(com.zeroc.Ice.Identity id)
    {
        this.id = id;
    }

    public String ice_id()
    {
        return "::IceGrid::ObserverAlreadyRegisteredException";
    }

    /**
     * The identity of the observer.
     **/
    public com.zeroc.Ice.Identity id;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::ObserverAlreadyRegisteredException", -1, true);
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
    private static final long serialVersionUID = 2733097836449829656L;
}
