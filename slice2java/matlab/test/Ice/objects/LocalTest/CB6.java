//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;

public class CB6 extends com.zeroc.Ice.Value
{
    public CB6()
    {
    }

    public CB6(C1[][] c1seqseq)
    {
        this.c1seqseq = c1seqseq;
    }

    public C1[][] c1seqseq;

    public CB6 clone()
    {
        return (CB6)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB6";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -1862558042061166152L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        C1SeqSeqHelper.write(ostr_, c1seqseq);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        c1seqseq = C1SeqSeqHelper.read(istr_);
        istr_.endSlice();
    }
}
