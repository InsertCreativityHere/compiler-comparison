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

public class MultiOptional extends com.zeroc.Ice.Value
{
    public MultiOptional()
    {
        this.h = "";
        this.i = MyEnum.MyEnumMember;
        this.fs = new FixedStruct();
        this.vs = new VarStruct();
    }

    public MultiOptional(byte a, boolean b, short c, int d, long e, float f, double g, String h, MyEnum i, MyInterfacePrx j, byte[] bs, String[] ss, java.util.Map<java.lang.Integer, java.lang.Integer> iid, java.util.Map<java.lang.String, java.lang.Integer> sid, FixedStruct fs, VarStruct vs, short[] shs, MyEnum[] es, FixedStruct[] fss, VarStruct[] vss, MyInterfacePrx[] mips, java.util.Map<java.lang.Integer, MyEnum> ied, java.util.Map<java.lang.Integer, FixedStruct> ifsd, java.util.Map<java.lang.Integer, VarStruct> ivsd, java.util.Map<java.lang.Integer, MyInterfacePrx> imipd, boolean[] bos, test.Ice.optional.SerializableClass ser)
    {
        setA(a);
        setB(b);
        setC(c);
        setD(d);
        setE(e);
        setF(f);
        setG(g);
        setH(h);
        setI(i);
        setJ(j);
        setBs(bs);
        setSs(ss);
        setIid(iid);
        setSid(sid);
        setFs(fs);
        setVs(vs);
        setShs(shs);
        setEs(es);
        setFss(fss);
        setVss(vss);
        setMips(mips);
        setIed(ied);
        setIfsd(ifsd);
        setIvsd(ivsd);
        setImipd(imipd);
        setBos(bos);
        setSer(ser);
    }

    private byte a;
    private boolean _a;

    public byte getA()
    {
        if(!_a)
        {
            throw new java.util.NoSuchElementException("a is not set");
        }
        return a;
    }

    public void setA(byte a)
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

    public void optionalA(java.util.Optional<java.lang.Byte> v)
    {
        if(v == null || !v.isPresent())
        {
            _a = false;
        }
        else
        {
            _a = true;
            a = v.get();
        }
    }

    public java.util.Optional<java.lang.Byte> optionalA()
    {
        if(_a)
        {
            return java.util.Optional.of(a);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private boolean b;
    private boolean _b;

    public boolean getB()
    {
        if(!_b)
        {
            throw new java.util.NoSuchElementException("b is not set");
        }
        return b;
    }

    public void setB(boolean b)
    {
        _b = true;
        this.b = b;
    }

    public boolean hasB()
    {
        return _b;
    }

    public void clearB()
    {
        _b = false;
    }

    public void optionalB(java.util.Optional<java.lang.Boolean> v)
    {
        if(v == null || !v.isPresent())
        {
            _b = false;
        }
        else
        {
            _b = true;
            b = v.get();
        }
    }

    public java.util.Optional<java.lang.Boolean> optionalB()
    {
        if(_b)
        {
            return java.util.Optional.of(b);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean isB()
    {
        if(!_b)
        {
            throw new java.util.NoSuchElementException("b is not set");
        }
        return b;
    }

    private short c;
    private boolean _c;

    public short getC()
    {
        if(!_c)
        {
            throw new java.util.NoSuchElementException("c is not set");
        }
        return c;
    }

    public void setC(short c)
    {
        _c = true;
        this.c = c;
    }

    public boolean hasC()
    {
        return _c;
    }

    public void clearC()
    {
        _c = false;
    }

    public void optionalC(java.util.Optional<java.lang.Short> v)
    {
        if(v == null || !v.isPresent())
        {
            _c = false;
        }
        else
        {
            _c = true;
            c = v.get();
        }
    }

    public java.util.Optional<java.lang.Short> optionalC()
    {
        if(_c)
        {
            return java.util.Optional.of(c);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private int d;
    private boolean _d;

    public int getD()
    {
        if(!_d)
        {
            throw new java.util.NoSuchElementException("d is not set");
        }
        return d;
    }

    public void setD(int d)
    {
        _d = true;
        this.d = d;
    }

    public boolean hasD()
    {
        return _d;
    }

    public void clearD()
    {
        _d = false;
    }

    public void optionalD(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _d = false;
        }
        else
        {
            _d = true;
            d = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalD()
    {
        if(_d)
        {
            return java.util.OptionalInt.of(d);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    private long e;
    private boolean _e;

    public long getE()
    {
        if(!_e)
        {
            throw new java.util.NoSuchElementException("e is not set");
        }
        return e;
    }

    public void setE(long e)
    {
        _e = true;
        this.e = e;
    }

    public boolean hasE()
    {
        return _e;
    }

    public void clearE()
    {
        _e = false;
    }

    public void optionalE(java.util.OptionalLong v)
    {
        if(v == null || !v.isPresent())
        {
            _e = false;
        }
        else
        {
            _e = true;
            e = v.getAsLong();
        }
    }

    public java.util.OptionalLong optionalE()
    {
        if(_e)
        {
            return java.util.OptionalLong.of(e);
        }
        else
        {
            return java.util.OptionalLong.empty();
        }
    }

    private float f;
    private boolean _f;

    public float getF()
    {
        if(!_f)
        {
            throw new java.util.NoSuchElementException("f is not set");
        }
        return f;
    }

    public void setF(float f)
    {
        _f = true;
        this.f = f;
    }

    public boolean hasF()
    {
        return _f;
    }

    public void clearF()
    {
        _f = false;
    }

    public void optionalF(java.util.Optional<java.lang.Float> v)
    {
        if(v == null || !v.isPresent())
        {
            _f = false;
        }
        else
        {
            _f = true;
            f = v.get();
        }
    }

    public java.util.Optional<java.lang.Float> optionalF()
    {
        if(_f)
        {
            return java.util.Optional.of(f);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private double g;
    private boolean _g;

    public double getG()
    {
        if(!_g)
        {
            throw new java.util.NoSuchElementException("g is not set");
        }
        return g;
    }

    public void setG(double g)
    {
        _g = true;
        this.g = g;
    }

    public boolean hasG()
    {
        return _g;
    }

    public void clearG()
    {
        _g = false;
    }

    public void optionalG(java.util.OptionalDouble v)
    {
        if(v == null || !v.isPresent())
        {
            _g = false;
        }
        else
        {
            _g = true;
            g = v.getAsDouble();
        }
    }

    public java.util.OptionalDouble optionalG()
    {
        if(_g)
        {
            return java.util.OptionalDouble.of(g);
        }
        else
        {
            return java.util.OptionalDouble.empty();
        }
    }

    private String h;
    private boolean _h;

    public String getH()
    {
        if(!_h)
        {
            throw new java.util.NoSuchElementException("h is not set");
        }
        return h;
    }

    public void setH(String h)
    {
        _h = true;
        this.h = h;
    }

    public boolean hasH()
    {
        return _h;
    }

    public void clearH()
    {
        _h = false;
    }

    public void optionalH(java.util.Optional<java.lang.String> v)
    {
        if(v == null || !v.isPresent())
        {
            _h = false;
        }
        else
        {
            _h = true;
            h = v.get();
        }
    }

    public java.util.Optional<java.lang.String> optionalH()
    {
        if(_h)
        {
            return java.util.Optional.of(h);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private MyEnum i;
    private boolean _i;

    public MyEnum getI()
    {
        if(!_i)
        {
            throw new java.util.NoSuchElementException("i is not set");
        }
        return i;
    }

    public void setI(MyEnum i)
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

    public void optionalI(java.util.Optional<MyEnum> v)
    {
        if(v == null || !v.isPresent())
        {
            _i = false;
        }
        else
        {
            _i = true;
            i = v.get();
        }
    }

    public java.util.Optional<MyEnum> optionalI()
    {
        if(_i)
        {
            return java.util.Optional.of(i);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private MyInterfacePrx j;
    private boolean _j;

    public MyInterfacePrx getJ()
    {
        if(!_j)
        {
            throw new java.util.NoSuchElementException("j is not set");
        }
        return j;
    }

    public void setJ(MyInterfacePrx j)
    {
        _j = true;
        this.j = j;
    }

    public boolean hasJ()
    {
        return _j;
    }

    public void clearJ()
    {
        _j = false;
    }

    public void optionalJ(java.util.Optional<MyInterfacePrx> v)
    {
        if(v == null || !v.isPresent())
        {
            _j = false;
        }
        else
        {
            _j = true;
            j = v.get();
        }
    }

    public java.util.Optional<MyInterfacePrx> optionalJ()
    {
        if(_j)
        {
            return java.util.Optional.of(j);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private byte[] bs;
    private boolean _bs;

    public byte[] getBs()
    {
        if(!_bs)
        {
            throw new java.util.NoSuchElementException("bs is not set");
        }
        return bs;
    }

    public void setBs(byte[] bs)
    {
        _bs = true;
        this.bs = bs;
    }

    public boolean hasBs()
    {
        return _bs;
    }

    public void clearBs()
    {
        _bs = false;
    }

    public void optionalBs(java.util.Optional<byte[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _bs = false;
        }
        else
        {
            _bs = true;
            bs = v.get();
        }
    }

    public java.util.Optional<byte[]> optionalBs()
    {
        if(_bs)
        {
            return java.util.Optional.of(bs);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public byte getBs(int index)
    {
        if(!_bs)
        {
            throw new java.util.NoSuchElementException("bs is not set");
        }
        return this.bs[index];
    }

    public void setBs(int index, byte val)
    {
        if(!_bs)
        {
            throw new java.util.NoSuchElementException("bs is not set");
        }
        this.bs[index] = val;
    }

    private String[] ss;
    private boolean _ss;

    public String[] getSs()
    {
        if(!_ss)
        {
            throw new java.util.NoSuchElementException("ss is not set");
        }
        return ss;
    }

    public void setSs(String[] ss)
    {
        _ss = true;
        this.ss = ss;
    }

    public boolean hasSs()
    {
        return _ss;
    }

    public void clearSs()
    {
        _ss = false;
    }

    public void optionalSs(java.util.Optional<String[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _ss = false;
        }
        else
        {
            _ss = true;
            ss = v.get();
        }
    }

    public java.util.Optional<String[]> optionalSs()
    {
        if(_ss)
        {
            return java.util.Optional.of(ss);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String getSs(int index)
    {
        if(!_ss)
        {
            throw new java.util.NoSuchElementException("ss is not set");
        }
        return this.ss[index];
    }

    public void setSs(int index, String val)
    {
        if(!_ss)
        {
            throw new java.util.NoSuchElementException("ss is not set");
        }
        this.ss[index] = val;
    }

    private java.util.Map<java.lang.Integer, java.lang.Integer> iid;
    private boolean _iid;

    public java.util.Map<java.lang.Integer, java.lang.Integer> getIid()
    {
        if(!_iid)
        {
            throw new java.util.NoSuchElementException("iid is not set");
        }
        return iid;
    }

    public void setIid(java.util.Map<java.lang.Integer, java.lang.Integer> iid)
    {
        _iid = true;
        this.iid = iid;
    }

    public boolean hasIid()
    {
        return _iid;
    }

    public void clearIid()
    {
        _iid = false;
    }

    public void optionalIid(java.util.Optional<java.util.Map<java.lang.Integer, java.lang.Integer>> v)
    {
        if(v == null || !v.isPresent())
        {
            _iid = false;
        }
        else
        {
            _iid = true;
            iid = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Integer, java.lang.Integer>> optionalIid()
    {
        if(_iid)
        {
            return java.util.Optional.of(iid);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private java.util.Map<java.lang.String, java.lang.Integer> sid;
    private boolean _sid;

    public java.util.Map<java.lang.String, java.lang.Integer> getSid()
    {
        if(!_sid)
        {
            throw new java.util.NoSuchElementException("sid is not set");
        }
        return sid;
    }

    public void setSid(java.util.Map<java.lang.String, java.lang.Integer> sid)
    {
        _sid = true;
        this.sid = sid;
    }

    public boolean hasSid()
    {
        return _sid;
    }

    public void clearSid()
    {
        _sid = false;
    }

    public void optionalSid(java.util.Optional<java.util.Map<java.lang.String, java.lang.Integer>> v)
    {
        if(v == null || !v.isPresent())
        {
            _sid = false;
        }
        else
        {
            _sid = true;
            sid = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.String, java.lang.Integer>> optionalSid()
    {
        if(_sid)
        {
            return java.util.Optional.of(sid);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private FixedStruct fs;
    private boolean _fs;

    public FixedStruct getFs()
    {
        if(!_fs)
        {
            throw new java.util.NoSuchElementException("fs is not set");
        }
        return fs;
    }

    public void setFs(FixedStruct fs)
    {
        _fs = true;
        this.fs = fs;
    }

    public boolean hasFs()
    {
        return _fs;
    }

    public void clearFs()
    {
        _fs = false;
    }

    public void optionalFs(java.util.Optional<FixedStruct> v)
    {
        if(v == null || !v.isPresent())
        {
            _fs = false;
        }
        else
        {
            _fs = true;
            fs = v.get();
        }
    }

    public java.util.Optional<FixedStruct> optionalFs()
    {
        if(_fs)
        {
            return java.util.Optional.of(fs);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private VarStruct vs;
    private boolean _vs;

    public VarStruct getVs()
    {
        if(!_vs)
        {
            throw new java.util.NoSuchElementException("vs is not set");
        }
        return vs;
    }

    public void setVs(VarStruct vs)
    {
        _vs = true;
        this.vs = vs;
    }

    public boolean hasVs()
    {
        return _vs;
    }

    public void clearVs()
    {
        _vs = false;
    }

    public void optionalVs(java.util.Optional<VarStruct> v)
    {
        if(v == null || !v.isPresent())
        {
            _vs = false;
        }
        else
        {
            _vs = true;
            vs = v.get();
        }
    }

    public java.util.Optional<VarStruct> optionalVs()
    {
        if(_vs)
        {
            return java.util.Optional.of(vs);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private short[] shs;
    private boolean _shs;

    public short[] getShs()
    {
        if(!_shs)
        {
            throw new java.util.NoSuchElementException("shs is not set");
        }
        return shs;
    }

    public void setShs(short[] shs)
    {
        _shs = true;
        this.shs = shs;
    }

    public boolean hasShs()
    {
        return _shs;
    }

    public void clearShs()
    {
        _shs = false;
    }

    public void optionalShs(java.util.Optional<short[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _shs = false;
        }
        else
        {
            _shs = true;
            shs = v.get();
        }
    }

    public java.util.Optional<short[]> optionalShs()
    {
        if(_shs)
        {
            return java.util.Optional.of(shs);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public short getShs(int index)
    {
        if(!_shs)
        {
            throw new java.util.NoSuchElementException("shs is not set");
        }
        return this.shs[index];
    }

    public void setShs(int index, short val)
    {
        if(!_shs)
        {
            throw new java.util.NoSuchElementException("shs is not set");
        }
        this.shs[index] = val;
    }

    private MyEnum[] es;
    private boolean _es;

    public MyEnum[] getEs()
    {
        if(!_es)
        {
            throw new java.util.NoSuchElementException("es is not set");
        }
        return es;
    }

    public void setEs(MyEnum[] es)
    {
        _es = true;
        this.es = es;
    }

    public boolean hasEs()
    {
        return _es;
    }

    public void clearEs()
    {
        _es = false;
    }

    public void optionalEs(java.util.Optional<MyEnum[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _es = false;
        }
        else
        {
            _es = true;
            es = v.get();
        }
    }

    public java.util.Optional<MyEnum[]> optionalEs()
    {
        if(_es)
        {
            return java.util.Optional.of(es);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public MyEnum getEs(int index)
    {
        if(!_es)
        {
            throw new java.util.NoSuchElementException("es is not set");
        }
        return this.es[index];
    }

    public void setEs(int index, MyEnum val)
    {
        if(!_es)
        {
            throw new java.util.NoSuchElementException("es is not set");
        }
        this.es[index] = val;
    }

    private FixedStruct[] fss;
    private boolean _fss;

    public FixedStruct[] getFss()
    {
        if(!_fss)
        {
            throw new java.util.NoSuchElementException("fss is not set");
        }
        return fss;
    }

    public void setFss(FixedStruct[] fss)
    {
        _fss = true;
        this.fss = fss;
    }

    public boolean hasFss()
    {
        return _fss;
    }

    public void clearFss()
    {
        _fss = false;
    }

    public void optionalFss(java.util.Optional<FixedStruct[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _fss = false;
        }
        else
        {
            _fss = true;
            fss = v.get();
        }
    }

    public java.util.Optional<FixedStruct[]> optionalFss()
    {
        if(_fss)
        {
            return java.util.Optional.of(fss);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public FixedStruct getFss(int index)
    {
        if(!_fss)
        {
            throw new java.util.NoSuchElementException("fss is not set");
        }
        return this.fss[index];
    }

    public void setFss(int index, FixedStruct val)
    {
        if(!_fss)
        {
            throw new java.util.NoSuchElementException("fss is not set");
        }
        this.fss[index] = val;
    }

    private VarStruct[] vss;
    private boolean _vss;

    public VarStruct[] getVss()
    {
        if(!_vss)
        {
            throw new java.util.NoSuchElementException("vss is not set");
        }
        return vss;
    }

    public void setVss(VarStruct[] vss)
    {
        _vss = true;
        this.vss = vss;
    }

    public boolean hasVss()
    {
        return _vss;
    }

    public void clearVss()
    {
        _vss = false;
    }

    public void optionalVss(java.util.Optional<VarStruct[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _vss = false;
        }
        else
        {
            _vss = true;
            vss = v.get();
        }
    }

    public java.util.Optional<VarStruct[]> optionalVss()
    {
        if(_vss)
        {
            return java.util.Optional.of(vss);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public VarStruct getVss(int index)
    {
        if(!_vss)
        {
            throw new java.util.NoSuchElementException("vss is not set");
        }
        return this.vss[index];
    }

    public void setVss(int index, VarStruct val)
    {
        if(!_vss)
        {
            throw new java.util.NoSuchElementException("vss is not set");
        }
        this.vss[index] = val;
    }

    private MyInterfacePrx[] mips;
    private boolean _mips;

    public MyInterfacePrx[] getMips()
    {
        if(!_mips)
        {
            throw new java.util.NoSuchElementException("mips is not set");
        }
        return mips;
    }

    public void setMips(MyInterfacePrx[] mips)
    {
        _mips = true;
        this.mips = mips;
    }

    public boolean hasMips()
    {
        return _mips;
    }

    public void clearMips()
    {
        _mips = false;
    }

    public void optionalMips(java.util.Optional<MyInterfacePrx[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _mips = false;
        }
        else
        {
            _mips = true;
            mips = v.get();
        }
    }

    public java.util.Optional<MyInterfacePrx[]> optionalMips()
    {
        if(_mips)
        {
            return java.util.Optional.of(mips);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public MyInterfacePrx getMips(int index)
    {
        if(!_mips)
        {
            throw new java.util.NoSuchElementException("mips is not set");
        }
        return this.mips[index];
    }

    public void setMips(int index, MyInterfacePrx val)
    {
        if(!_mips)
        {
            throw new java.util.NoSuchElementException("mips is not set");
        }
        this.mips[index] = val;
    }

    private java.util.Map<java.lang.Integer, MyEnum> ied;
    private boolean _ied;

    public java.util.Map<java.lang.Integer, MyEnum> getIed()
    {
        if(!_ied)
        {
            throw new java.util.NoSuchElementException("ied is not set");
        }
        return ied;
    }

    public void setIed(java.util.Map<java.lang.Integer, MyEnum> ied)
    {
        _ied = true;
        this.ied = ied;
    }

    public boolean hasIed()
    {
        return _ied;
    }

    public void clearIed()
    {
        _ied = false;
    }

    public void optionalIed(java.util.Optional<java.util.Map<java.lang.Integer, MyEnum>> v)
    {
        if(v == null || !v.isPresent())
        {
            _ied = false;
        }
        else
        {
            _ied = true;
            ied = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Integer, MyEnum>> optionalIed()
    {
        if(_ied)
        {
            return java.util.Optional.of(ied);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private java.util.Map<java.lang.Integer, FixedStruct> ifsd;
    private boolean _ifsd;

    public java.util.Map<java.lang.Integer, FixedStruct> getIfsd()
    {
        if(!_ifsd)
        {
            throw new java.util.NoSuchElementException("ifsd is not set");
        }
        return ifsd;
    }

    public void setIfsd(java.util.Map<java.lang.Integer, FixedStruct> ifsd)
    {
        _ifsd = true;
        this.ifsd = ifsd;
    }

    public boolean hasIfsd()
    {
        return _ifsd;
    }

    public void clearIfsd()
    {
        _ifsd = false;
    }

    public void optionalIfsd(java.util.Optional<java.util.Map<java.lang.Integer, FixedStruct>> v)
    {
        if(v == null || !v.isPresent())
        {
            _ifsd = false;
        }
        else
        {
            _ifsd = true;
            ifsd = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Integer, FixedStruct>> optionalIfsd()
    {
        if(_ifsd)
        {
            return java.util.Optional.of(ifsd);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private java.util.Map<java.lang.Integer, VarStruct> ivsd;
    private boolean _ivsd;

    public java.util.Map<java.lang.Integer, VarStruct> getIvsd()
    {
        if(!_ivsd)
        {
            throw new java.util.NoSuchElementException("ivsd is not set");
        }
        return ivsd;
    }

    public void setIvsd(java.util.Map<java.lang.Integer, VarStruct> ivsd)
    {
        _ivsd = true;
        this.ivsd = ivsd;
    }

    public boolean hasIvsd()
    {
        return _ivsd;
    }

    public void clearIvsd()
    {
        _ivsd = false;
    }

    public void optionalIvsd(java.util.Optional<java.util.Map<java.lang.Integer, VarStruct>> v)
    {
        if(v == null || !v.isPresent())
        {
            _ivsd = false;
        }
        else
        {
            _ivsd = true;
            ivsd = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Integer, VarStruct>> optionalIvsd()
    {
        if(_ivsd)
        {
            return java.util.Optional.of(ivsd);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private java.util.Map<java.lang.Integer, MyInterfacePrx> imipd;
    private boolean _imipd;

    public java.util.Map<java.lang.Integer, MyInterfacePrx> getImipd()
    {
        if(!_imipd)
        {
            throw new java.util.NoSuchElementException("imipd is not set");
        }
        return imipd;
    }

    public void setImipd(java.util.Map<java.lang.Integer, MyInterfacePrx> imipd)
    {
        _imipd = true;
        this.imipd = imipd;
    }

    public boolean hasImipd()
    {
        return _imipd;
    }

    public void clearImipd()
    {
        _imipd = false;
    }

    public void optionalImipd(java.util.Optional<java.util.Map<java.lang.Integer, MyInterfacePrx>> v)
    {
        if(v == null || !v.isPresent())
        {
            _imipd = false;
        }
        else
        {
            _imipd = true;
            imipd = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Integer, MyInterfacePrx>> optionalImipd()
    {
        if(_imipd)
        {
            return java.util.Optional.of(imipd);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private boolean[] bos;
    private boolean _bos;

    public boolean[] getBos()
    {
        if(!_bos)
        {
            throw new java.util.NoSuchElementException("bos is not set");
        }
        return bos;
    }

    public void setBos(boolean[] bos)
    {
        _bos = true;
        this.bos = bos;
    }

    public boolean hasBos()
    {
        return _bos;
    }

    public void clearBos()
    {
        _bos = false;
    }

    public void optionalBos(java.util.Optional<boolean[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _bos = false;
        }
        else
        {
            _bos = true;
            bos = v.get();
        }
    }

    public java.util.Optional<boolean[]> optionalBos()
    {
        if(_bos)
        {
            return java.util.Optional.of(bos);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public boolean getBos(int index)
    {
        if(!_bos)
        {
            throw new java.util.NoSuchElementException("bos is not set");
        }
        return this.bos[index];
    }

    public void setBos(int index, boolean val)
    {
        if(!_bos)
        {
            throw new java.util.NoSuchElementException("bos is not set");
        }
        this.bos[index] = val;
    }

    private test.Ice.optional.SerializableClass ser;
    private boolean _ser;

    public test.Ice.optional.SerializableClass getSer()
    {
        if(!_ser)
        {
            throw new java.util.NoSuchElementException("ser is not set");
        }
        return ser;
    }

    public void setSer(test.Ice.optional.SerializableClass ser)
    {
        _ser = true;
        this.ser = ser;
    }

    public boolean hasSer()
    {
        return _ser;
    }

    public void clearSer()
    {
        _ser = false;
    }

    public void optionalSer(java.util.Optional<test.Ice.optional.SerializableClass> v)
    {
        if(v == null || !v.isPresent())
        {
            _ser = false;
        }
        else
        {
            _ser = true;
            ser = v.get();
        }
    }

    public java.util.Optional<test.Ice.optional.SerializableClass> optionalSer()
    {
        if(_ser)
        {
            return java.util.Optional.of(ser);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public MultiOptional clone()
    {
        return (MultiOptional)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::MultiOptional";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 7303305648768890101L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_a)
        {
            ostr_.writeByte(1, a);
        }
        if(_b)
        {
            ostr_.writeBool(2, b);
        }
        if(_c)
        {
            ostr_.writeShort(3, c);
        }
        if(_d)
        {
            ostr_.writeInt(4, d);
        }
        if(_e)
        {
            ostr_.writeLong(5, e);
        }
        if(_f)
        {
            ostr_.writeFloat(6, f);
        }
        if(_g)
        {
            ostr_.writeDouble(7, g);
        }
        if(_h)
        {
            ostr_.writeString(8, h);
        }
        if(_i)
        {
            MyEnum.ice_write(ostr_, 9, i);
        }
        if(_j)
        {
            ostr_.writeProxy(10, j);
        }
        if(_bs)
        {
            ostr_.writeByteSeq(12, bs);
        }
        if(_ss)
        {
            ostr_.writeStringSeq(13, ss);
        }
        if(_iid)
        {
            IntIntDictHelper.write(ostr_, 14, iid);
        }
        if(_sid)
        {
            StringIntDictHelper.write(ostr_, 15, sid);
        }
        if(_fs)
        {
            FixedStruct.ice_write(ostr_, 16, fs);
        }
        if(_vs)
        {
            VarStruct.ice_write(ostr_, 17, vs);
        }
        if(_shs)
        {
            ostr_.writeShortSeq(18, shs);
        }
        if(_es)
        {
            MyEnumSeqHelper.write(ostr_, 19, es);
        }
        if(_fss)
        {
            FixedStructSeqHelper.write(ostr_, 20, fss);
        }
        if(_vss)
        {
            VarStructSeqHelper.write(ostr_, 21, vss);
        }
        if(_mips)
        {
            MyInterfacePrxSeqHelper.write(ostr_, 23, mips);
        }
        if(_ied)
        {
            IntEnumDictHelper.write(ostr_, 24, ied);
        }
        if(_ifsd)
        {
            IntFixedStructDictHelper.write(ostr_, 25, ifsd);
        }
        if(_ivsd)
        {
            IntVarStructDictHelper.write(ostr_, 26, ivsd);
        }
        if(_imipd)
        {
            IntMyInterfacePrxDictHelper.write(ostr_, 28, imipd);
        }
        if(_bos)
        {
            ostr_.writeBoolSeq(29, bos);
        }
        if(_ser)
        {
            ostr_.writeSerializable(30, ser);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_a = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.F1))
        {
            a = istr_.readByte();
        }
        if(_b = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.F1))
        {
            b = istr_.readBool();
        }
        if(_c = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.F2))
        {
            c = istr_.readShort();
        }
        if(_d = istr_.readOptional(4, com.zeroc.Ice.OptionalFormat.F4))
        {
            d = istr_.readInt();
        }
        if(_e = istr_.readOptional(5, com.zeroc.Ice.OptionalFormat.F8))
        {
            e = istr_.readLong();
        }
        if(_f = istr_.readOptional(6, com.zeroc.Ice.OptionalFormat.F4))
        {
            f = istr_.readFloat();
        }
        if(_g = istr_.readOptional(7, com.zeroc.Ice.OptionalFormat.F8))
        {
            g = istr_.readDouble();
        }
        if(_h = istr_.readOptional(8, com.zeroc.Ice.OptionalFormat.VSize))
        {
            h = istr_.readString();
        }
        if(_i = istr_.readOptional(9, com.zeroc.Ice.OptionalFormat.Size))
        {
            i = MyEnum.ice_read(istr_);
        }
        if(_j = istr_.readOptional(10, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            j = MyInterfacePrx.uncheckedCast(istr_.readProxy());
        }
        if(_bs = istr_.readOptional(12, com.zeroc.Ice.OptionalFormat.VSize))
        {
            bs = istr_.readByteSeq();
        }
        if(_ss = istr_.readOptional(13, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            ss = istr_.readStringSeq();
        }
        if(_iid = istr_.readOptional(14, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            iid = IntIntDictHelper.read(istr_);
        }
        if(_sid = istr_.readOptional(15, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            sid = StringIntDictHelper.read(istr_);
        }
        if(_fs = istr_.readOptional(16, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            fs = FixedStruct.ice_read(istr_);
        }
        if(_vs = istr_.readOptional(17, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            vs = VarStruct.ice_read(istr_);
        }
        if(_shs = istr_.readOptional(18, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            shs = istr_.readShortSeq();
        }
        if(_es = istr_.readOptional(19, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            es = MyEnumSeqHelper.read(istr_);
        }
        if(_fss = istr_.readOptional(20, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            fss = FixedStructSeqHelper.read(istr_);
        }
        if(_vss = istr_.readOptional(21, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            vss = VarStructSeqHelper.read(istr_);
        }
        if(_mips = istr_.readOptional(23, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            mips = MyInterfacePrxSeqHelper.read(istr_);
        }
        if(_ied = istr_.readOptional(24, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            ied = IntEnumDictHelper.read(istr_);
        }
        if(_ifsd = istr_.readOptional(25, com.zeroc.Ice.OptionalFormat.VSize))
        {
            istr_.skipSize();
            ifsd = IntFixedStructDictHelper.read(istr_);
        }
        if(_ivsd = istr_.readOptional(26, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            ivsd = IntVarStructDictHelper.read(istr_);
        }
        if(_imipd = istr_.readOptional(28, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            imipd = IntMyInterfacePrxDictHelper.read(istr_);
        }
        if(_bos = istr_.readOptional(29, com.zeroc.Ice.OptionalFormat.VSize))
        {
            bos = istr_.readBoolSeq();
        }
        if(_ser = istr_.readOptional(30, com.zeroc.Ice.OptionalFormat.VSize))
        {
            ser = istr_.readSerializable(test.Ice.optional.SerializableClass.class);
        }
        istr_.endSlice();
    }
}
