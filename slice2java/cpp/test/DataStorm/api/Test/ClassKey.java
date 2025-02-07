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

package Test;

public class ClassKey extends com.zeroc.Ice.Value
{
    public ClassKey()
    {
    }

    public ClassKey(int value)
    {
        this.value = value;
    }

    public int value;

    public ClassKey clone()
    {
        return (ClassKey)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::ClassKey";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 3957510135419651013L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(value);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        value = istr_.readInt();
        istr_.endSlice();
    }
}
