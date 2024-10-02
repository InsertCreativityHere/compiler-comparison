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

public class WD extends com.zeroc.Ice.Value
{
    public WD()
    {
        setA(5);
        setS("test");
    }

    public WD(int a, String s)
    {
        setA(a);
        setS(s);
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

    private String s;
    private boolean _s;

    public String getS()
    {
        if(!_s)
        {
            throw new java.util.NoSuchElementException("s is not set");
        }
        return s;
    }

    public void setS(String s)
    {
        _s = true;
        this.s = s;
    }

    public boolean hasS()
    {
        return _s;
    }

    public void clearS()
    {
        _s = false;
    }

    public void optionalS(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _s = false;
        }
        else
        {
            _s = true;
            s = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalS()
    {
        if(_s)
        {
            return java.util.Optional.of(s);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public WD clone()
    {
        return (WD)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::WD";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -8878676842401925106L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_a)
        {
            ostr_.writeInt(1, a);
        }
        if(_s)
        {
            ostr_.writeString(2, s);
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
        if(_s = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.VSize))
        {
            s = istr_.readString();
        }
        istr_.endSlice();
    }
}
