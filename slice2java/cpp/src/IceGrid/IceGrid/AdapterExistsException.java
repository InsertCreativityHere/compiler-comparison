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

/**
 * This exception is raised if an adapter with the same name already exists.
 **/
public class AdapterExistsException extends com.zeroc.Ice.UserException
{
    public AdapterExistsException()
    {
        this.id = "";
    }

    public AdapterExistsException(Throwable cause)
    {
        super(cause);
        this.id = "";
    }

    public AdapterExistsException(String id)
    {
        this.id = id;
    }

    public AdapterExistsException(String id, Throwable cause)
    {
        super(cause);
        this.id = id;
    }

    public String ice_id()
    {
        return "::IceGrid::AdapterExistsException";
    }

    public String id;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::IceGrid::AdapterExistsException", -1, true);
        ostr_.writeString(id);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = 3774326701800293957L;
}
