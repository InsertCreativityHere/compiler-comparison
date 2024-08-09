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

public class F3 extends com.zeroc.Ice.Value
{
    public F3()
    {
    }

    public F3(F1 f1, F2Prx f2)
    {
        this.f1 = f1;
        this.f2 = f2;
    }

    public F1 f1;

    public F2Prx f2;

    public F3 clone()
    {
        return (F3)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::F3";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -4124519169234335925L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeValue(f1);
        ostr_.writeProxy(f2);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> f1 = v, F1.class);
        f2 = F2Prx.uncheckedCast(istr_.readProxy());
        istr_.endSlice();
    }
}
