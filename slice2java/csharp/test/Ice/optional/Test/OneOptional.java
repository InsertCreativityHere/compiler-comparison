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

public class OneOptional extends com.zeroc.Ice.Value
{
    public OneOptional()
    {
    }

    public OneOptional(int a)
    {
        setA(a);
    }

    private int a;
    private boolean _a;

    public int getA()
    {
        if(!_a)
        {
            throw new java.util.NoSuchElementException("a is not set");
        }
        return a;
    }

    public void setA(int a)
    {
        _a = true;
        this.a = a;
    }

    public boolean hasA()
    {
        return _a;
    }

    public void clearA()
    {
        _a = false;
    }

    public void optionalA(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _a = false;
        }
        else
        {
            _a = true;
            a = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalA()
    {
        if(_a)
        {
            return java.util.OptionalInt.of(a);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    public OneOptional clone()
    {
        return (OneOptional)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::OneOptional";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -7219605352022036408L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_a)
        {
            ostr_.writeInt(1, a);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_a = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F4))
        {
            a = istr_.readInt();
        }
        istr_.endSlice();
    }
}
