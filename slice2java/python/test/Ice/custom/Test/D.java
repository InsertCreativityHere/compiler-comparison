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

public class D extends com.zeroc.Ice.Value
{
    public D()
    {
    }

    public D(boolean[] boolSeq, byte[] byteSeq, short[] shortSeq, int[] intSeq, long[] longSeq, float[] floatSeq, double[] doubleSeq)
    {
        setBoolSeq(boolSeq);
        setByteSeq(byteSeq);
        setShortSeq(shortSeq);
        setIntSeq(intSeq);
        setLongSeq(longSeq);
        setFloatSeq(floatSeq);
        setDoubleSeq(doubleSeq);
    }

    private boolean[] boolSeq;
    private boolean _boolSeq;

    public boolean[] getBoolSeq()
    {
        if(!_boolSeq)
        {
            throw new java.util.NoSuchElementException("boolSeq is not set");
        }
        return boolSeq;
    }

    public void setBoolSeq(boolean[] boolSeq)
    {
        _boolSeq = true;
        this.boolSeq = boolSeq;
    }

    public boolean hasBoolSeq()
    {
        return _boolSeq;
    }

    public void clearBoolSeq()
    {
        _boolSeq = false;
    }

    public void optionalBoolSeq(java.util.Optional<boolean[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _boolSeq = false;
        }
        else
        {
            _boolSeq = true;
            boolSeq = v.get();
        }
    }

    public java.util.Optional<boolean[]> optionalBoolSeq()
    {
        if(_boolSeq)
        {
            return java.util.Optional.of(boolSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean getBoolSeq(int index)
    {
        if(!_boolSeq)
        {
            throw new java.util.NoSuchElementException("boolSeq is not set");
        }
        return this.boolSeq[index];
    }

    public void setBoolSeq(int index, boolean val)
    {
        if(!_boolSeq)
        {
            throw new java.util.NoSuchElementException("boolSeq is not set");
        }
        this.boolSeq[index] = val;
    }

    private byte[] byteSeq;
    private boolean _byteSeq;

    public byte[] getByteSeq()
    {
        if(!_byteSeq)
        {
            throw new java.util.NoSuchElementException("byteSeq is not set");
        }
        return byteSeq;
    }

    public void setByteSeq(byte[] byteSeq)
    {
        _byteSeq = true;
        this.byteSeq = byteSeq;
    }

    public boolean hasByteSeq()
    {
        return _byteSeq;
    }

    public void clearByteSeq()
    {
        _byteSeq = false;
    }

    public void optionalByteSeq(java.util.Optional<byte[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _byteSeq = false;
        }
        else
        {
            _byteSeq = true;
            byteSeq = v.get();
        }
    }

    public java.util.Optional<byte[]> optionalByteSeq()
    {
        if(_byteSeq)
        {
            return java.util.Optional.of(byteSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public byte getByteSeq(int index)
    {
        if(!_byteSeq)
        {
            throw new java.util.NoSuchElementException("byteSeq is not set");
        }
        return this.byteSeq[index];
    }

    public void setByteSeq(int index, byte val)
    {
        if(!_byteSeq)
        {
            throw new java.util.NoSuchElementException("byteSeq is not set");
        }
        this.byteSeq[index] = val;
    }

    private short[] shortSeq;
    private boolean _shortSeq;

    public short[] getShortSeq()
    {
        if(!_shortSeq)
        {
            throw new java.util.NoSuchElementException("shortSeq is not set");
        }
        return shortSeq;
    }

    public void setShortSeq(short[] shortSeq)
    {
        _shortSeq = true;
        this.shortSeq = shortSeq;
    }

    public boolean hasShortSeq()
    {
        return _shortSeq;
    }

    public void clearShortSeq()
    {
        _shortSeq = false;
    }

    public void optionalShortSeq(java.util.Optional<short[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _shortSeq = false;
        }
        else
        {
            _shortSeq = true;
            shortSeq = v.get();
        }
    }

    public java.util.Optional<short[]> optionalShortSeq()
    {
        if(_shortSeq)
        {
            return java.util.Optional.of(shortSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public short getShortSeq(int index)
    {
        if(!_shortSeq)
        {
            throw new java.util.NoSuchElementException("shortSeq is not set");
        }
        return this.shortSeq[index];
    }

    public void setShortSeq(int index, short val)
    {
        if(!_shortSeq)
        {
            throw new java.util.NoSuchElementException("shortSeq is not set");
        }
        this.shortSeq[index] = val;
    }

    private int[] intSeq;
    private boolean _intSeq;

    public int[] getIntSeq()
    {
        if(!_intSeq)
        {
            throw new java.util.NoSuchElementException("intSeq is not set");
        }
        return intSeq;
    }

    public void setIntSeq(int[] intSeq)
    {
        _intSeq = true;
        this.intSeq = intSeq;
    }

    public boolean hasIntSeq()
    {
        return _intSeq;
    }

    public void clearIntSeq()
    {
        _intSeq = false;
    }

    public void optionalIntSeq(java.util.Optional<int[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _intSeq = false;
        }
        else
        {
            _intSeq = true;
            intSeq = v.get();
        }
    }

    public java.util.Optional<int[]> optionalIntSeq()
    {
        if(_intSeq)
        {
            return java.util.Optional.of(intSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public int getIntSeq(int index)
    {
        if(!_intSeq)
        {
            throw new java.util.NoSuchElementException("intSeq is not set");
        }
        return this.intSeq[index];
    }

    public void setIntSeq(int index, int val)
    {
        if(!_intSeq)
        {
            throw new java.util.NoSuchElementException("intSeq is not set");
        }
        this.intSeq[index] = val;
    }

    private long[] longSeq;
    private boolean _longSeq;

    public long[] getLongSeq()
    {
        if(!_longSeq)
        {
            throw new java.util.NoSuchElementException("longSeq is not set");
        }
        return longSeq;
    }

    public void setLongSeq(long[] longSeq)
    {
        _longSeq = true;
        this.longSeq = longSeq;
    }

    public boolean hasLongSeq()
    {
        return _longSeq;
    }

    public void clearLongSeq()
    {
        _longSeq = false;
    }

    public void optionalLongSeq(java.util.Optional<long[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _longSeq = false;
        }
        else
        {
            _longSeq = true;
            longSeq = v.get();
        }
    }

    public java.util.Optional<long[]> optionalLongSeq()
    {
        if(_longSeq)
        {
            return java.util.Optional.of(longSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public long getLongSeq(int index)
    {
        if(!_longSeq)
        {
            throw new java.util.NoSuchElementException("longSeq is not set");
        }
        return this.longSeq[index];
    }

    public void setLongSeq(int index, long val)
    {
        if(!_longSeq)
        {
            throw new java.util.NoSuchElementException("longSeq is not set");
        }
        this.longSeq[index] = val;
    }

    private float[] floatSeq;
    private boolean _floatSeq;

    public float[] getFloatSeq()
    {
        if(!_floatSeq)
        {
            throw new java.util.NoSuchElementException("floatSeq is not set");
        }
        return floatSeq;
    }

    public void setFloatSeq(float[] floatSeq)
    {
        _floatSeq = true;
        this.floatSeq = floatSeq;
    }

    public boolean hasFloatSeq()
    {
        return _floatSeq;
    }

    public void clearFloatSeq()
    {
        _floatSeq = false;
    }

    public void optionalFloatSeq(java.util.Optional<float[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _floatSeq = false;
        }
        else
        {
            _floatSeq = true;
            floatSeq = v.get();
        }
    }

    public java.util.Optional<float[]> optionalFloatSeq()
    {
        if(_floatSeq)
        {
            return java.util.Optional.of(floatSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public float getFloatSeq(int index)
    {
        if(!_floatSeq)
        {
            throw new java.util.NoSuchElementException("floatSeq is not set");
        }
        return this.floatSeq[index];
    }

    public void setFloatSeq(int index, float val)
    {
        if(!_floatSeq)
        {
            throw new java.util.NoSuchElementException("floatSeq is not set");
        }
        this.floatSeq[index] = val;
    }

    private double[] doubleSeq;
    private boolean _doubleSeq;

    public double[] getDoubleSeq()
    {
        if(!_doubleSeq)
        {
            throw new java.util.NoSuchElementException("doubleSeq is not set");
        }
        return doubleSeq;
    }

    public void setDoubleSeq(double[] doubleSeq)
    {
        _doubleSeq = true;
        this.doubleSeq = doubleSeq;
    }

    public boolean hasDoubleSeq()
    {
        return _doubleSeq;
    }

    public void clearDoubleSeq()
    {
        _doubleSeq = false;
    }

    public void optionalDoubleSeq(java.util.Optional<double[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _doubleSeq = false;
        }
        else
        {
            _doubleSeq = true;
            doubleSeq = v.get();
        }
    }

    public java.util.Optional<double[]> optionalDoubleSeq()
    {
        if(_doubleSeq)
        {
            return java.util.Optional.of(doubleSeq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public double getDoubleSeq(int index)
    {
        if(!_doubleSeq)
        {
            throw new java.util.NoSuchElementException("doubleSeq is not set");
        }
        return this.doubleSeq[index];
    }

    public void setDoubleSeq(int index, double val)
    {
        if(!_doubleSeq)
        {
            throw new java.util.NoSuchElementException("doubleSeq is not set");
        }
        this.doubleSeq[index] = val;
    }

    public D clone()
    {
        return (D)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::D";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -4188808604560841429L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_boolSeq)
        {
            ostr_.writeBoolSeq(1, boolSeq);
        }
        if(_byteSeq)
        {
            ostr_.writeByteSeq(2, byteSeq);
        }
        if(_shortSeq)
        {
            ostr_.writeShortSeq(3, shortSeq);
        }
        if(_intSeq)
        {
            ostr_.writeIntSeq(4, intSeq);
        }
        if(_longSeq)
        {
            ostr_.writeLongSeq(5, longSeq);
        }
        if(_floatSeq)
        {
            ostr_.writeFloatSeq(6, floatSeq);
        }
        if(_doubleSeq)
        {
            ostr_.writeDoubleSeq(7, doubleSeq);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_boolSeq = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.VSize))
        {
            boolSeq = istr_.readBoolSeq();
        }
        if(_byteSeq = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.VSize))
        {
            byteSeq = istr_.readByteSeq();
        }
        if(_shortSeq = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            shortSeq = istr_.readShortSeq();
        }
        if(_intSeq = istr_.readOptional(4, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            intSeq = istr_.readIntSeq();
        }
        if(_longSeq = istr_.readOptional(5, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            longSeq = istr_.readLongSeq();
        }
        if(_floatSeq = istr_.readOptional(6, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            floatSeq = istr_.readFloatSeq();
        }
        if(_doubleSeq = istr_.readOptional(7, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            doubleSeq = istr_.readDoubleSeq();
        }
        istr_.endSlice();
    }
}
