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

public class OptionalWithCustom extends com.zeroc.Ice.Value
{
    public OptionalWithCustom()
    {
    }

    public OptionalWithCustom(SmallStruct[] l, SmallStruct[] lp)
    {
        setL(l);
        setLp(lp);
    }

    private SmallStruct[] l;
    private boolean _l;

    public SmallStruct[] getL()
    {
        if(!_l)
        {
            throw new java.util.NoSuchElementException("l is not set");
        }
        return l;
    }

    public void setL(SmallStruct[] l)
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

    public void optionalL(java.util.Optional<SmallStruct[]> v)
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

    public java.util.Optional<SmallStruct[]> optionalL()
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

    public SmallStruct getL(int index)
    {
        if(!_l)
        {
            throw new java.util.NoSuchElementException("l is not set");
        }
        return this.l[index];
    }

    public void setL(int index, SmallStruct val)
    {
        if(!_l)
        {
            throw new java.util.NoSuchElementException("l is not set");
        }
        this.l[index] = val;
    }

    protected SmallStruct[] lp;
    private boolean _lp;

    public SmallStruct[] getLp()
    {
        if(!_lp)
        {
            throw new java.util.NoSuchElementException("lp is not set");
        }
        return lp;
    }

    public void setLp(SmallStruct[] lp)
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

    public void optionalLp(java.util.Optional<SmallStruct[]> v)
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

    public java.util.Optional<SmallStruct[]> optionalLp()
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

    public SmallStruct getLp(int index)
    {
        if(!_lp)
        {
            throw new java.util.NoSuchElementException("lp is not set");
        }
        return this.lp[index];
    }

    public void setLp(int index, SmallStruct val)
    {
        if(!_lp)
        {
            throw new java.util.NoSuchElementException("lp is not set");
        }
        this.lp[index] = val;
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
    private static final long serialVersionUID = 630012992343999803L;

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
        istr_.endSlice();
    }
}
