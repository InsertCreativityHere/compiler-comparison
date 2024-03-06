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

public class Preserved1 extends KnownPreservedDerived
{
    public Preserved1()
    {
        super();
    }

    public Preserved1(Throwable cause)
    {
        super(cause);
    }

    public Preserved1(String b, String kp, String kpd, BaseClass p1)
    {
        super(b, kp, kpd);
        this.p1 = p1;
    }

    public Preserved1(String b, String kp, String kpd, BaseClass p1, Throwable cause)
    {
        super(b, kp, kpd, cause);
        this.p1 = p1;
    }

    public String ice_id()
    {
        return "::Test::Preserved1";
    }

    public BaseClass p1;

    /** @hidden */
    @Override
    protected void _writeImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice("::Test::Preserved1", -1, false);
        ostr_.writeValue(p1);
        ostr_.endSlice();
        super._writeImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _readImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        istr_.readValue(v -> p1 = v, BaseClass.class);
        istr_.endSlice();
        super._readImpl(istr_);
    }

    /** @hidden */
    @Override
    public boolean _usesClasses()
    {
        return true;
    }

    /** @hidden */
    public static final long serialVersionUID = 6137369771541756287L;
}
