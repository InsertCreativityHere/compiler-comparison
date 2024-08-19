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

public class E extends com.zeroc.Ice.Value
{
    public E()
    {
        this.s = "";
    }

    public E(int i, String s)
    {
        this.i = i;
        this.s = s;
    }

    protected int i;

    protected String s;

    public E clone()
    {
        return (E)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::E";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 2627152744069470464L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(i);
        ostr_.writeString(s);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        i = istr_.readInt();
        s = istr_.readString();
        istr_.endSlice();
    }
}
