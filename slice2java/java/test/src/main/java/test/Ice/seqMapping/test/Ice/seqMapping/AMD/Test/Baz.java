//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.seqMapping.AMD.Test;

public class Baz extends com.zeroc.Ice.Value
{
    public Baz()
    {
    }

    public Baz(test.Ice.seqMapping.Serialize.Large SLmem, test.Ice.seqMapping.Serialize.Large[] SLSmem)
    {
        this.SLmem = SLmem;
        this.SLSmem = SLSmem;
    }

    public test.Ice.seqMapping.Serialize.Large SLmem;

    public test.Ice.seqMapping.Serialize.Large[] SLSmem;

    public Baz clone()
    {
        return (Baz)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::Baz";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 5857698680594237623L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeSerializable(SLmem);
        SLSHelper.write(ostr_, SLSmem);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        SLmem = istr_.readSerializable(test.Ice.seqMapping.Serialize.Large.class);
        SLSmem = SLSHelper.read(istr_);
        istr_.endSlice();
    }
}
