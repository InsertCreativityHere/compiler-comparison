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

package test.Ice.optional.Test;

public class C extends B
{
    public C()
    {
        super();
        this.ss = "";
        this.ms = "";
    }

    public C(int requiredA, int requiredB, String ss)
    {
        super(requiredA, requiredB);
        this.ss = ss;
        this.ms = "";
    }

    public C(int requiredA, int ma, int mb, int mc, int requiredB, int md, String ss, String ms)
    {
        super(requiredA, ma, mb, mc, requiredB, md);
        this.ss = ss;
        setMs(ms);
    }

    public String ss;

    private String ms;
    private boolean _ms;

    public String getMs()
    {
        if(!_ms)
        {
            throw new java.util.NoSuchElementException("ms is not set");
        }
        return ms;
    }

    public void setMs(String ms)
    {
        _ms = true;
        this.ms = ms;
    }

    public boolean hasMs()
    {
        return _ms;
    }

    public void clearMs()
    {
        _ms = false;
    }

    public void optionalMs(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _ms = false;
        }
        else
        {
            _ms = true;
            ms = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalMs()
    {
        if(_ms)
        {
            return java.util.Optional.of(ms);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

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
    private static final long serialVersionUID = -8768200967369095939L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(ss);
        if(_ms)
        {
            ostr_.writeString(890, ms);
        }
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ss = istr_.readString();
        if(_ms = istr_.readOptional(890, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ms = istr_.readString();
        }
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
