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

package Test.ME;

public class D extends C
{
    public D()
    {
        super();
    }

    public D(int aA, int bB, int cC, int dD)
    {
        super(aA, bB, cC);
        this.dD = dD;
    }

    public int dD;

    public D clone()
    {
        return (D)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::ME::D";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -771857786920203657L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(dD);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        dD = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
