//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class KnownPreserved extends Base
{
    public KnownPreserved()
    {
        this.kp = "";
    }

    public KnownPreserved(String b, String kp)
    {
        super(b);
        this.kp = kp;
    }

    public String ice_id()
    {
        return "::Test::KnownPreserved";
    }

    public String kp;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownPreserved", -1, false);
        ostr_.writeString(kp);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        kp = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    private static final long serialVersionUID = -2733710254882418426L;
}
