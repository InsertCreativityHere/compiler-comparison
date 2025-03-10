// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package test.Ice.optional.AMD.Test;

public class G extends com.zeroc.Ice.Value
{
    public G()
    {
        this.gg1Opt = new G1();
        this.gg2 = new G2();
        this.gg2Opt = new G2();
        this.gg1 = new G1();
    }

    public G(G2 gg2, G1 gg1)
    {
        this.gg2 = gg2;
        this.gg1 = gg1;
        this.gg2Opt = new G2();
        this.gg1Opt = new G1();
    }

    public G(G1 gg1Opt, G2 gg2, G2 gg2Opt, G1 gg1)
    {
        setGg1Opt(gg1Opt);
        this.gg2 = gg2;
        setGg2Opt(gg2Opt);
        this.gg1 = gg1;
    }

    private G1 gg1Opt;
    private boolean _gg1Opt;

    public G1 getGg1Opt()
    {
        if(!_gg1Opt)
        {
            throw new java.util.NoSuchElementException("gg1Opt is not set");
        }
        return gg1Opt;
    }

    public void setGg1Opt(G1 gg1Opt)
    {
        _gg1Opt = true;
        this.gg1Opt = gg1Opt;
    }

    public boolean hasGg1Opt()
    {
        return _gg1Opt;
    }

    public void clearGg1Opt()
    {
        _gg1Opt = false;
    }

    public void optionalGg1Opt(java.util.Optional<G1> v)
    {
        if(v == null || !v.isPresent())
        {
            _gg1Opt = false;
        }
        else
        {
            _gg1Opt = true;
            gg1Opt = v.get();
        }
    }

    public java.util.Optional<G1> optionalGg1Opt()
    {
        if(_gg1Opt)
        {
            return java.util.Optional.of(gg1Opt);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public G2 gg2;

    private G2 gg2Opt;
    private boolean _gg2Opt;

    public G2 getGg2Opt()
    {
        if(!_gg2Opt)
        {
            throw new java.util.NoSuchElementException("gg2Opt is not set");
        }
        return gg2Opt;
    }

    public void setGg2Opt(G2 gg2Opt)
    {
        _gg2Opt = true;
        this.gg2Opt = gg2Opt;
    }

    public boolean hasGg2Opt()
    {
        return _gg2Opt;
    }

    public void clearGg2Opt()
    {
        _gg2Opt = false;
    }

    public void optionalGg2Opt(java.util.Optional<G2> v)
    {
        if(v == null || !v.isPresent())
        {
            _gg2Opt = false;
        }
        else
        {
            _gg2Opt = true;
            gg2Opt = v.get();
        }
    }

    public java.util.Optional<G2> optionalGg2Opt()
    {
        if(_gg2Opt)
        {
            return java.util.Optional.of(gg2Opt);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public G1 gg1;

    public G clone()
    {
        return (G)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::G";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = 9097046694444897269L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        G2.ice_write(ostr_, gg2);
        G1.ice_write(ostr_, gg1);
        if(_gg2Opt)
        {
            G2.ice_write(ostr_, 0, gg2Opt);
        }
        if(_gg1Opt)
        {
            G1.ice_write(ostr_, 1, gg1Opt);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        gg2 = G2.ice_read(istr_);
        gg1 = G1.ice_read(istr_);
        if(_gg2Opt = istr_.readOptional(0, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            gg2Opt = G2.ice_read(istr_);
        }
        if(_gg1Opt = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            gg1Opt = G1.ice_read(istr_);
        }
        istr_.endSlice();
    }
}
