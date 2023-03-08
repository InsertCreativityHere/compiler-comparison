//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.serialize.Test;

public class Ex extends com.zeroc.Ice.UserException
{
    public Ex()
    {
        this.s = new Struct1();
    }

    public Ex(Throwable cause)
    {
        super(cause);
        this.s = new Struct1();
    }

    public Ex(Struct1 s, Base b)
    {
        this.s = s;
        this.b = b;
    }

    public Ex(Struct1 s, Base b, Throwable cause)
    {
        super(cause);
        this.s = s;
        this.b = b;
    }

    public String ice_id()
    {
        return "::Test::Ex";
    }

    public Struct1 s;

    public Base b;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Ex", -1, true);
        Struct1.ice_write(ostr_, s);
        ostr_.writeValue(b);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s = Struct1.ice_read(istr_);
        istr_.readValue(v -> b = v, Base.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    public static final long serialVersionUID = 1004L;
}
