//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package test.Ice.optional.AMD.Test;

public class OptionalWithCustom extends com.zeroc.Ice.Value
{
    public OptionalWithCustom()
    {
        this.s = new ClassVarStruct();
    }

    public OptionalWithCustom(java.util.List<SmallStruct> l, java.util.List<SmallStruct> lp, ClassVarStruct s)
    {
        setL(l);
        setLp(lp);
        setS(s);
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

    protected java.util.List<SmallStruct> lp;
    private boolean _lp;

    public java.util.List<SmallStruct> getLp()
    {
        if(!_lp)
        {
            throw new java.util.NoSuchElementException("lp is not set");
        }
        return lp;
    }

    public void setLp(java.util.List<SmallStruct> lp)
    {
        _lp = true;
        this.lp = lp;
    }

    public boolean hasLp()
    {
        return _lp;
    }

    public void clearLp()
    {
        _lp = false;
    }

    public void optionalLp(java.util.Optional<java.util.List<SmallStruct>> v)
    {
        if(v == null || !v.isPresent())
        {
            _lp = false;
        }
        else
        {
            _lp = true;
            lp = v.get();
        }
    }

    public java.util.Optional<java.util.List<SmallStruct>> optionalLp()
    {
        if(_lp)
        {
            return java.util.Optional.of(lp);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private ClassVarStruct s;
    private boolean _s;

    public ClassVarStruct getS()
    {
        if(!_s)
        {
            throw new java.util.NoSuchElementException("s is not set");
        }
        return s;
    }

    public void setS(ClassVarStruct s)
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

    public void optionalS(java.util.Optional<ClassVarStruct> v)
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

    public java.util.Optional<ClassVarStruct> optionalS()
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
    public static final long serialVersionUID = -5914021886152447430L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_l)
        {
            SmallStructListHelper.write(ostr_, 1, l);
        }
        if(_lp)
        {
            SmallStructListHelper.write(ostr_, 2, lp);
        }
        if(_s)
        {
            ClassVarStruct.ice_write(ostr_, 3, s);
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
        if(_lp = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.VSize))
        {
            lp = SmallStructListHelper.read(istr_);
        }
        if(_s = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            s = ClassVarStruct.ice_read(istr_);
        }
        istr_.endSlice();
    }
}
