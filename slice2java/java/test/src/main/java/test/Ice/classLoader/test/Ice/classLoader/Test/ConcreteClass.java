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

package test.Ice.classLoader.Test;

public class ConcreteClass extends com.zeroc.Ice.Value
{
    public ConcreteClass()
    {
    }

    public ConcreteClass(int i)
    {
        this.i = i;
    }

    public int i;

    public ConcreteClass clone()
    {
        return (ConcreteClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::ConcreteClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 6434296748890871833L;

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
