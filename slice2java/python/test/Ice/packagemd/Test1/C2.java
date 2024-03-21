//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `NoPackage.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test1;

public class C2 extends C1
{
    public C2()
    {
        super();
    }

    public C2(int i, long l)
    {
        super(i);
        this.l = l;
    }

    public long l;

    public C2 clone()
    {
        return (C2)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test1::C2";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 2892575999899240077L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeLong(l);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        l = istr_.readLong();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
