//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

public class AdapterNotActiveException extends com.zeroc.Ice.UserException
{
    public AdapterNotActiveException()
    {
    }

    public AdapterNotActiveException(boolean activatable)
    {
        this.activatable = activatable;
    }

    public String ice_id()
    {
        return "::IceGrid::AdapterNotActiveException";
    }

    /**
     * True if the adapter can be activated on demand.
     **/
    public boolean activatable;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::AdapterNotActiveException", -1, true);
        ostr_.writeBool(activatable);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        activatable = istr_.readBool();
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 7872705626489227691L;
}
