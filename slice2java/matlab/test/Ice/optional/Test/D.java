//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class D extends B
{
    public D()
    {
        super();
        this.ds = "";
    }

    public D(int requiredA, int requiredB, String ds)
    {
        super(requiredA, requiredB);
        this.ds = ds;
    }

    public D(int requiredA, int ma, int mb, int mc, int requiredB, int md, String ds, String[] seq, A ao)
    {
        super(requiredA, ma, mb, mc, requiredB, md);
        this.ds = ds;
        setSeq(seq);
        setAo(ao);
    }

    public String ds;

    private String[] seq;
    private boolean _seq;

    public String[] getSeq()
    {
        if(!_seq)
        {
            throw new java.util.NoSuchElementException("seq is not set");
        }
        return seq;
    }

    public void setSeq(String[] seq)
    {
        _seq = true;
        this.seq = seq;
    }

    public boolean hasSeq()
    {
        return _seq;
    }

    public void clearSeq()
    {
        _seq = false;
    }

    public void optionalSeq(java.util.Optional<String[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _seq = false;
        }
        else
        {
            _seq = true;
            seq = v.get();
        }
    }

    public java.util.Optional<String[]> optionalSeq()
    {
        if(_seq)
        {
            return java.util.Optional.of(seq);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String getSeq(int index)
    {
        if(!_seq)
        {
            throw new java.util.NoSuchElementException("seq is not set");
        }
        return this.seq[index];
    }

    public void setSeq(int index, String val)
    {
        if(!_seq)
        {
            throw new java.util.NoSuchElementException("seq is not set");
        }
        this.seq[index] = val;
    }

    private A ao;
    private boolean _ao;

    public A getAo()
    {
        if(!_ao)
        {
            throw new java.util.NoSuchElementException("ao is not set");
        }
        return ao;
    }

    public void setAo(A ao)
    {
        _ao = true;
        this.ao = ao;
    }

    public boolean hasAo()
    {
        return _ao;
    }

    public void clearAo()
    {
        _ao = false;
    }

    public void optionalAo(java.util.Optional<A> v)
    {
        if(v == null || !v.isPresent())
        {
            _ao = false;
        }
        else
        {
            _ao = true;
            ao = v.get();
        }
    }

    public java.util.Optional<A> optionalAo()
    {
        if(_ao)
        {
            return java.util.Optional.ofNullable(ao);
        }
        else
        {
            return java.util.Optional.empty();
        }
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
    public static final long serialVersionUID = 8350528643824732472L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(ds);
        if(_seq)
        {
            ostr_.writeStringSeq(990, seq);
        }
        if(_ao)
        {
            ostr_.writeValue(1000, ao);
        }
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        ds = istr_.readString();
        if(_seq = istr_.readOptional(990, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            seq = istr_.readStringSeq();
        }
        if(_ao = istr_.readOptional(1000, com.zeroc.Ice.OptionalFormat.Class))
        {
            istr_.readValue(v -> ao = v, A.class);
        }
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
