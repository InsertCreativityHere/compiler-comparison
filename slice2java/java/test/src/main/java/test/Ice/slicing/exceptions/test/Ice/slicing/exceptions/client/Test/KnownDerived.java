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

package test.Ice.slicing.exceptions.client.Test;

public class KnownDerived extends Base
{
    public KnownDerived()
    {
        super();
        this.kd = "";
    }

    public KnownDerived(Throwable cause)
    {
        super(cause);
        this.kd = "";
    }

    public KnownDerived(String b, String kd)
    {
        super(b);
        this.kd = kd;
    }

    public KnownDerived(String b, String kd, Throwable cause)
    {
        super(b, cause);
        this.kd = kd;
    }

    public String ice_id()
    {
        return "::Test::KnownDerived";
    }

    public String kd;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::KnownDerived", -1, false);
        ostr_.writeString(kd);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        kd = istr_.readString();
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    public static final long serialVersionUID = 3485213120474664026L;
}
