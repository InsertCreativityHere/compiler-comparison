//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
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

public class KnownPreservedDerived extends KnownPreserved
{
    public KnownPreservedDerived()
    {
        super();
        this.kpd = "";
    }

    public KnownPreservedDerived(Throwable cause)
    {
        super(cause);
        this.kpd = "";
    }

    public KnownPreservedDerived(String b, String kp, String kpd)
    {
        super(b, kp);
        this.kpd = kpd;
    }

    public KnownPreservedDerived(String b, String kp, String kpd, Throwable cause)
    {
        super(b, kp, cause);
        this.kpd = kpd;
    }

    public String ice_id()
    {
        return "::Test::KnownPreservedDerived";
    }

    public String kpd;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownPreservedDerived", -1, false);
        ostr_.writeString(kpd);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        kpd = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 4528102730750594582L;
}
