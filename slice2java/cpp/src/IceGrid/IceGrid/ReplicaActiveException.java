//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceGrid;

/**
 * This exception is raised if a replica is already registered and
 * active.
 **/
public class ReplicaActiveException extends com.zeroc.Ice.UserException
{
    public ReplicaActiveException()
    {
    }

    public ReplicaActiveException(Throwable cause)
    {
        super(cause);
    }

    public String ice_id()
    {
        return "::IceGrid::ReplicaActiveException";
    }

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::ReplicaActiveException", -1, true);
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
    public static final long serialVersionUID = 2541745497775572523L;
}
