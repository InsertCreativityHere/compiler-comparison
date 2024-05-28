//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package classdef._break;

public class global extends persistent
{
    public global()
    {
        super();
        this.enumeration = 1;
    }

    public global(Throwable cause)
    {
        super(cause);
        this.enumeration = 1;
    }

    public global(String identifier, String message, String stack, String cause, String type, logical end, int enumeration)
    {
        super(identifier, message, stack, cause, type, end);
        this.enumeration = enumeration;
    }

    public global(String identifier, String message, String stack, String cause, String type, logical end, int enumeration, Throwable cause_)
    {
        super(identifier, message, stack, cause, type, end, cause_);
        this.enumeration = enumeration;
    }

    public String ice_id()
    {
        return "::classdef::break::global";
    }

    public int enumeration;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::classdef::break::global", -1, false);
        ostr_.writeInt(enumeration);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        enumeration = istr_.readInt();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 2421486040391860857L;
}
