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

package test.Ice.seqMapping.Test;

public class Bar extends com.zeroc.Ice.UserException
{
    public Bar()
    {
    }

    public Bar(test.Ice.seqMapping.Serialize.Large SLmem, test.Ice.seqMapping.Serialize.Large[] SLSmem)
    {
        this.SLmem = SLmem;
        this.SLSmem = SLSmem;
    }

    public String ice_id()
    {
        return "::Test::Bar";
    }

    public test.Ice.seqMapping.Serialize.Large SLmem;

    public test.Ice.seqMapping.Serialize.Large[] SLSmem;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Bar", -1, true);
        ostr_.writeSerializable(SLmem);
        SLSHelper.write(ostr_, SLSmem);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        SLmem = istr_.readSerializable(test.Ice.seqMapping.Serialize.Large.class);
        SLSmem = SLSHelper.read(istr_);
        istr_.endSlice();
    }

    /** @hidden */
    private static final long serialVersionUID = 4534280171650896359L;
}
