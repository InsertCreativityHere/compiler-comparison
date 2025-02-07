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

package Test;

public class OptionalClass extends com.zeroc.Ice.Value
{
    public OptionalClass()
    {
    }

    public OptionalClass(boolean bo, byte by)
    {
        this.bo = bo;
        this.by = by;
    }

    public OptionalClass(boolean bo, byte by, short sh, int i)
    {
        this.bo = bo;
        this.by = by;
        setSh(sh);
        setI(i);
    }

    public boolean bo;

    public byte by;

    private short sh;
    private boolean _sh;

    public short getSh()
    {
        if(!_sh)
        {
            throw new java.util.NoSuchElementException("sh is not set");
        }
        return sh;
    }

    public void setSh(short sh)
    {
        _sh = true;
        this.sh = sh;
    }

    public boolean hasSh()
    {
        return _sh;
    }

    public void clearSh()
    {
        _sh = false;
    }

    public void optionalSh(java.util.Optional<java.lang.Short> v)
    {
        if(v == null || !v.isPresent())
        {
            _sh = false;
        }
        else
        {
            _sh = true;
            sh = v.get();
        }
    }

    public java.util.Optional<java.lang.Short> optionalSh()
    {
        if(_sh)
        {
            return java.util.Optional.of(sh);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private int i;
    private boolean _i;

    public int getI()
    {
        if(!_i)
        {
            throw new java.util.NoSuchElementException("i is not set");
        }
        return i;
    }

    public void setI(int i)
    {
        _i = true;
        this.i = i;
    }

    public boolean hasI()
    {
        return _i;
    }

    public void clearI()
    {
        _i = false;
    }

    public void optionalI(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _i = false;
        }
        else
        {
            _i = true;
            i = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalI()
    {
        if(_i)
        {
            return java.util.OptionalInt.of(i);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    public OptionalClass clone()
    {
        return (OptionalClass)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::OptionalClass";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -5518902944033788231L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeBool(bo);
        ostr_.writeByte(by);
        if(_sh)
        {
            ostr_.writeShort(1, sh);
        }
        if(_i)
        {
            ostr_.writeInt(2, i);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        bo = istr_.readBool();
        by = istr_.readByte();
        if(_sh = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F2))
        {
            sh = istr_.readShort();
        }
        if(_i = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.F4))
        {
            i = istr_.readInt();
        }
        istr_.endSlice();
    }
}
