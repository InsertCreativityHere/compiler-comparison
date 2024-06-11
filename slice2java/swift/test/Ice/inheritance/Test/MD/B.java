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

package Test.MD;

public class B extends A
{
    public B()
    {
        super();
    }

    public B(int aA, int bB)
    {
        super(aA);
        this.bB = bB;
    }

    public int bB;

    public B clone()
    {
        return (B)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::MD::B";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 1132522159390608366L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(bB);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        bB = istr_.readInt();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
