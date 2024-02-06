//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LocalTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package LocalTest;

public class Opt extends com.zeroc.Ice.Value
{
    public Opt()
    {
        this.s1 = new S1();
    }

    public Opt(S1 s1, C1[] c1seq, java.util.Map<java.lang.Integer, S1> s1dict)
    {
        setS1(s1);
        setC1seq(c1seq);
        setS1dict(s1dict);
    }

    private S1 s1;
    private boolean _s1;

    public S1 getS1()
    {
        if(!_s1)
        {
            throw new java.util.NoSuchElementException("s1 is not set");
        }
        return s1;
    }

    public void setS1(S1 s1)
    {
        _s1 = true;
        this.s1 = s1;
    }

    public boolean hasS1()
    {
        return _s1;
    }

    public void clearS1()
    {
        _s1 = false;
    }

    public void optionalS1(java.util.Optional<S1> v)
    {
        if(v == null || !v.isPresent())
        {
            _s1 = false;
        }
        else
        {
            _s1 = true;
            s1 = v.get();
        }
    }

    public java.util.Optional<S1> optionalS1()
    {
        if(_s1)
        {
            return java.util.Optional.of(s1);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private C1[] c1seq;
    private boolean _c1seq;

    public C1[] getC1seq()
    {
        if(!_c1seq)
        {
            throw new java.util.NoSuchElementException("c1seq is not set");
        }
        return c1seq;
    }

    public void setC1seq(C1[] c1seq)
    {
        _c1seq = true;
        this.c1seq = c1seq;
    }

    public boolean hasC1seq()
    {
        return _c1seq;
    }

    public void clearC1seq()
    {
        _c1seq = false;
    }

    public void optionalC1seq(java.util.Optional<C1[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _c1seq = false;
        }
        else
        {
            _c1seq = true;
            c1seq = v.get();
        }
    }

    public java.util.Optional<C1[]> optionalC1seq()
    {
        if(_c1seq)
        {
            return java.util.Optional.of(c1seq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public C1 getC1seq(int index)
    {
        if(!_c1seq)
        {
            throw new java.util.NoSuchElementException("c1seq is not set");
        }
        return this.c1seq[index];
    }

    public void setC1seq(int index, C1 val)
    {
        if(!_c1seq)
        {
            throw new java.util.NoSuchElementException("c1seq is not set");
        }
        this.c1seq[index] = val;
    }

    private java.util.Map<java.lang.Integer, S1> s1dict;
    private boolean _s1dict;

    public java.util.Map<java.lang.Integer, S1> getS1dict()
    {
        if(!_s1dict)
        {
            throw new java.util.NoSuchElementException("s1dict is not set");
        }
        return s1dict;
    }

    public void setS1dict(java.util.Map<java.lang.Integer, S1> s1dict)
    {
        _s1dict = true;
        this.s1dict = s1dict;
    }

    public boolean hasS1dict()
    {
        return _s1dict;
    }

    public void clearS1dict()
    {
        _s1dict = false;
    }

    public void optionalS1dict(java.util.Optional<java.util.Map<java.lang.Integer, S1>> v)
    {
        if(v == null || !v.isPresent())
        {
            _s1dict = false;
        }
        else
        {
            _s1dict = true;
            s1dict = v.get();
        }
    }

    public java.util.Optional<java.util.Map<java.lang.Integer, S1>> optionalS1dict()
    {
        if(_s1dict)
        {
            return java.util.Optional.of(s1dict);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public Opt clone()
    {
        return (Opt)super.clone();
    }

    public static String ice_staticId()
    {
        return "::LocalTest::Opt";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 8583870158164654355L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        if(_s1)
        {
            S1.ice_write(ostr_, 1, s1);
        }
        if(_c1seq)
        {
            C1SeqHelper.write(ostr_, 2, c1seq);
        }
        if(_s1dict)
        {
            S1DictHelper.write(ostr_, 3, s1dict);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        if(_s1 = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            s1 = S1.ice_read(istr_);
        }
        if(_c1seq = istr_.readOptional(2, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            c1seq = C1SeqHelper.read(istr_);
        }
        if(_s1dict = istr_.readOptional(3, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            s1dict = S1DictHelper.read(istr_);
        }
        istr_.endSlice();
    }
}
