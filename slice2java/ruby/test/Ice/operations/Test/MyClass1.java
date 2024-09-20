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

public class MyClass1 extends com.zeroc.Ice.Value
{
    public MyClass1()
    {
        this.tesT = "";
        this.myClass1 = "";
    }

    public MyClass1(String tesT, MyClassPrx myClass, String myClass1)
    {
        this.tesT = tesT;
        this.myClass = myClass;
        this.myClass1 = myClass1;
    }

    public String tesT;

    public MyClassPrx myClass;

    public String myClass1;

    public MyClass1 clone()
    {
        return (MyClass1)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::MyClass1";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 4069264482936179251L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(tesT);
        ostr_.writeProxy(myClass);
        ostr_.writeString(myClass1);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        tesT = istr_.readString();
        myClass = MyClassPrx.uncheckedCast(istr_.readProxy());
        myClass1 = istr_.readString();
        istr_.endSlice();
    }
}
