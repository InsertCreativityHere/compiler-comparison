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

public class B extends A
{
    public B()
    {
        super();
    }

    public B(int requiredA, int requiredB)
    {
        super(requiredA);
        this.requiredB = requiredB;
    }

    public B(int requiredA, int ma, int mb, int mc, int requiredB, int md)
    {
        super(requiredA, ma, mb, mc);
        this.requiredB = requiredB;
        setMd(md);
    }

    public int requiredB;

    private int md;
    private boolean _md;

    public int getMd()
    {
        if(!_md)
        {
            throw new java.util.NoSuchElementException("md is not set");
        }
        return md;
    }

    public void setMd(int md)
    {
        _md = true;
        this.md = md;
    }

    public boolean hasMd()
    {
        return _md;
    }

    public void clearMd()
    {
        _md = false;
    }

    public void optionalMd(java.util.OptionalInt v)
    {
        if(v == null || !v.isPresent())
        {
            _md = false;
        }
        else
        {
            _md = true;
            md = v.getAsInt();
        }
    }

    public java.util.OptionalInt optionalMd()
    {
        if(_md)
        {
            return java.util.OptionalInt.of(md);
        }
        else
        {
            return java.util.OptionalInt.empty();
        }
    }

    public B clone()
    {
        return (B)super.clone();
    }

    public static String ice_staticId()
    {
        return "::Test::B";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = 5755951926375240803L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeInt(requiredB);
        if(_md)
        {
            ostr_.writeInt(10, md);
        }
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        requiredB = istr_.readInt();
        if(_md = istr_.readOptional(10, com.zeroc.Ice.OptionalFormat.F4))
        {
            md = istr_.readInt();
        }
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
