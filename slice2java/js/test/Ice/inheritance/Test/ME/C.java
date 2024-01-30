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

public class C extends B
{
    public C()
    {
        super();
    }

    public C(int aA, int bB, int cC)
    {
        super(aA, bB);
        this.cC = cC;
    }

    public int cC;

    public C clone()
    {
        return (C)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::ME::C";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -8808278393867317529L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(cC);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        cC = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
