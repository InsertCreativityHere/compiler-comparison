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

public class F extends E
{
    public F()
    {
        super();
    }

    public F(A ae)
    {
        super(ae);
    }

    public F(A ae, A af)
    {
        super(ae);
        setAf(af);
    }

    private A af;
    private boolean _af;

    public A getAf()
    {
        if(!_af)
        {
            throw new java.util.NoSuchElementException("af is not set");
        }
        return af;
    }

    public void setAf(A af)
    {
        _af = true;
        this.af = af;
    }

    public boolean hasAf()
    {
        return _af;
    }

    public void clearAf()
    {
        _af = false;
    }

    public void optionalAf(java.util.Optional<A> v)
    {
        if(v == null || !v.isPresent())
        {
            _af = false;
        }
        else
        {
            _af = true;
            af = v.get();
        }
    }

    public java.util.Optional<A> optionalAf()
    {
        if(_af)
        {
            return java.util.Optional.ofNullable(af);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public F clone()
    {
        return (F)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::F";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 2111941045425723232L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        if(_af)
        {
            ostr_.writeValue(1, af);
        }
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_af = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.Class))
        {
            istr_.readValue(v -> af = v, A.class);
        }
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
