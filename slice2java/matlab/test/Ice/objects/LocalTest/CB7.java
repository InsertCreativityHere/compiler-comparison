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

public class CB7 extends com.zeroc.Ice.Value
{
    public CB7()
    {
    }

    public CB7(S1[][] s1seqseq)
    {
        this.s1seqseq = s1seqseq;
    }

    public S1[][] s1seqseq;

    public CB7 clone()
    {
        return (CB7)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::CB7";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -2187164971472967819L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        S1SeqSeqHelper.write(ostr_, s1seqseq);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        s1seqseq = S1SeqSeqHelper.read(istr_);
        istr_.endSlice();
    }
}
