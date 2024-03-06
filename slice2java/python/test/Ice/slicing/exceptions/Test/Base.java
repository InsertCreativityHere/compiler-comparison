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

package Test;

public class Base extends com.zeroc.Ice.UserException
{
    public Base()
    {
        this.b = "";
    }

    public Base(Throwable cause)
    {
        super(cause);
        this.b = "";
    }

    public Base(String b)
    {
        this.b = b;
    }

    public Base(String b, Throwable cause)
    {
        super(cause);
        this.b = b;
    }

    public String ice_id()
    {
        return "::Test::Base";
    }

    public String b;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Base", -1, true);
        ostr_.writeString(b);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        b = istr_.readString();
        istr_.endSlice();
    }

    /** @hidden */
    public static final long serialVersionUID = -477021712508076095L;
}
