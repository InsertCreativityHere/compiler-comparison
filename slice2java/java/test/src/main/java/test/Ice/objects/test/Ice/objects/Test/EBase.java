// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.objects.Test;

public class EBase extends com.zeroc.Ice.UserException
{
    public EBase()
    {
    }

    public EBase(A1 a1, A1 a2)
    {
        this.a1 = a1;
        this.a2 = a2;
    }

    public String ice_id()
    {
        return "::Test::EBase";
    }

    public A1 a1;

    public A1 a2;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::EBase", -1, true);
        ostr_.writeValue(a1);
        ostr_.writeValue(a2);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> a1 = v, A1.class);
        istr_.readValue(v -> a2 = v, A1.class);
        istr_.endSlice();
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    private static final long serialVersionUID = -7186220158679299679L;
}
