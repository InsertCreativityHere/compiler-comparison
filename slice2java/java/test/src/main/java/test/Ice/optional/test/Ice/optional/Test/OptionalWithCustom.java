// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.optional.Test;

public class OptionalWithCustom extends com.zeroc.Ice.Value
{
    public OptionalWithCustom()
    {
    }

    public OptionalWithCustom(java.util.List<SmallStruct> l)
    {
        setL(l);
    }

    private java.util.List<SmallStruct> l;
    private boolean _l;

    public java.util.List<SmallStruct> getL()
    {
        if(!_l)
        {
            throw new java.util.NoSuchElementException("l is not set");
        }
        return l;
    }

    public void setL(java.util.List<SmallStruct> l)
    {
        _l = true;
        this.l = l;
    }

    public boolean hasL()
    {
        return _l;
    }

    public void clearL()
    {
        _l = false;
    }

    public void optionalL(java.util.Optional<java.util.List<SmallStruct>> v)
    {
        if(v == null || !v.isPresent())
        {
            _l = false;
        }
        else
        {
            _l = true;
            l = v.get();
        }
    }

    public java.util.Optional<java.util.List<SmallStruct>> optionalL()
    {
        if(_l)
        {
            return java.util.Optional.of(l);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public OptionalWithCustom clone()
    {
        return (OptionalWithCustom)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::OptionalWithCustom";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 504026651055432422L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_l)
        {
            SmallStructListHelper.write(ostr_, 1, l);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_l = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            l = SmallStructListHelper.read(istr_);
        }
        istr_.endSlice();
    }
}
