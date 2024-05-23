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

public class A extends com.zeroc.Ice.Value
{
    public A()
    {
        this.requiredA = 0;
    }

    public A(int requiredA)
    {
        this.requiredA = requiredA;
    }

    public A(int requiredA, int ma, int mb, int mc)
    {
        this.requiredA = requiredA;
        setMa(ma);
        setMb(mb);
        setMc(mc);
    }

    public int requiredA;

    private int ma;
    private boolean _ma;

    public int getMa()
    {
        if(!_ma)
        {
            throw new java.util.NoSuchElementException("ma is not set");
        }
        return ma;
    }

    public void setMa(int ma)
    {
        _ma = true;
        this.ma = ma;
    }

    public boolean hasMa()
    {
        return _ma;
    }

    public void clearMa()
    {
        _ma = false;
    }

    public void optionalMa(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _ma = false;
        }
        else
        {
            _ma = true;
            ma = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalMa()
    {
        if(_ma)
        {
            return java.util.OptionalInt.of(ma);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    private int mb;
    private boolean _mb;

    public int getMb()
    {
        if(!_mb)
        {
            throw new java.util.NoSuchElementException("mb is not set");
        }
        return mb;
    }

    public void setMb(int mb)
    {
        _mb = true;
        this.mb = mb;
    }

    public boolean hasMb()
    {
        return _mb;
    }

    public void clearMb()
    {
        _mb = false;
    }

    public void optionalMb(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _mb = false;
        }
        else
        {
            _mb = true;
            mb = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalMb()
    {
        if(_mb)
        {
            return java.util.OptionalInt.of(mb);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    private int mc;
    private boolean _mc;

    public int getMc()
    {
        if(!_mc)
        {
            throw new java.util.NoSuchElementException("mc is not set");
        }
        return mc;
    }

    public void setMc(int mc)
    {
        _mc = true;
        this.mc = mc;
    }

    public boolean hasMc()
    {
        return _mc;
    }

    public void clearMc()
    {
        _mc = false;
    }

    public void optionalMc(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _mc = false;
        }
        else
        {
            _mc = true;
            mc = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalMc()
    {
        if(_mc)
        {
            return java.util.OptionalInt.of(mc);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    public A clone()
    {
        return (A)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::A";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 7862492576044755728L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeInt(requiredA);
        if(_ma)
        {
            ostr_.writeInt(1, ma);
        }
        if(_mb)
        {
            ostr_.writeInt(50, mb);
        }
        if(_mc)
        {
            ostr_.writeInt(500, mc);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        requiredA = istr_.readInt();
        if(_ma = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F4))
        {
            ma = istr_.readInt();
        }
        if(_mb = istr_.readOptional(50, com.zeroc.Ice.OptionalFormat.F4))
        {
            mb = istr_.readInt();
        }
        if(_mc = istr_.readOptional(500, com.zeroc.Ice.OptionalFormat.F4))
        {
            mc = istr_.readInt();
        }
        istr_.endSlice();
    }
}
