//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class MyClass extends com.zeroc.Ice.Value
{
    public MyClass()
    {
    }

    public MyClass(int i)
    {
        this.i = i;
    }

    public int i;

    public MyClass clone()
    {
        return (MyClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::MyClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4147521232198857691L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(i);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        i = istr_.readInt();
        istr_.endSlice();
    }
}
