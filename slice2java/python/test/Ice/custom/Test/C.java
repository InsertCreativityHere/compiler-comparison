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

public class C extends com.zeroc.Ice.Value
{
    public C()
    {
    }

    public C(byte[] b1, byte[] b2, byte[] b3, byte[] b4, String[] s1, String[] s2, String[] s3, String[] s4)
    {
        this.b1 = b1;
        this.b2 = b2;
        this.b3 = b3;
        this.b4 = b4;
        this.s1 = s1;
        this.s2 = s2;
        this.s3 = s3;
        this.s4 = s4;
    }

    public byte[] b1;

    public byte[] b2;

    public byte[] b3;

    public byte[] b4;

    public String[] s1;

    public String[] s2;

    public String[] s3;

    public String[] s4;

    public C clone()
    {
        return (C)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::C";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -3721260862311426665L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeByteSeq(b1);
        ostr_.writeByteSeq(b2);
        ostr_.writeByteSeq(b3);
        ostr_.writeByteSeq(b4);
        ostr_.writeStringSeq(s1);
        ostr_.writeStringSeq(s2);
        ostr_.writeStringSeq(s3);
        ostr_.writeStringSeq(s4);
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        b1 = istr_.readByteSeq();
        b2 = istr_.readByteSeq();
        b3 = istr_.readByteSeq();
        b4 = istr_.readByteSeq();
        s1 = istr_.readStringSeq();
        s2 = istr_.readStringSeq();
        s3 = istr_.readStringSeq();
        s4 = istr_.readStringSeq();
        istr_.endSlice();
    }
}
