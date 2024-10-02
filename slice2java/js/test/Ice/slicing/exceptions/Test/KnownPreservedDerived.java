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

public class KnownPreservedDerived extends KnownPreserved
{
    public KnownPreservedDerived()
    {
        this.kpd = "";
    }

    public KnownPreservedDerived(String b, String kp, String kpd)
    {
        super(b, kp);
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
    private static final long serialVersionUID = 4528104282940853889L;
}
