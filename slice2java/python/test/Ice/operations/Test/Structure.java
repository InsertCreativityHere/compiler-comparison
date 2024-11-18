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

public class Structure implements java.lang.Cloneable,
                                  java.io.Serializable
{
    public MyClassPrx p;

    public MyEnum e;

    public AnotherStruct s;

    public Structure()
    {
        this.e = MyEnum.enum1;
        this.s = new AnotherStruct();
    }

    public Structure(MyClassPrx p, MyEnum e, AnotherStruct s)
    {
        this.p = p;
        this.e = e;
        this.s = s;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Structure r = null;
        if(rhs instanceof Structure)
        {
            r = (Structure)rhs;
        }

        if(r != null)
        {
            if(this.p != r.p)
            {
                if(this.p == null || r.p == null || !this.p.equals(r.p))
                {
                    return false;
                }
            }
            if(this.e != r.e)
            {
                if(this.e == null || r.e == null || !this.e.equals(r.e))
                {
                    return false;
                }
            }
            if(this.s != r.s)
            {
                if(this.s == null || r.s == null || !this.s.equals(r.s))
                {
                    return false;
                }
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::Structure");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, p);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, e);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s);
        return h_;
    }

    public Structure clone()
    {
        Structure c = null;
        try
        {
            c = (Structure)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeProxy(this.p);
        MyEnum.ice_write(ostr, this.e);
        AnotherStruct.ice_write(ostr, this.s);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.p = MyClassPrx.uncheckedCast(istr.readProxy());
        this.e = MyEnum.ice_read(istr);
        this.s = AnotherStruct.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Structure v)
    {
        if(v == null)
        {
            _nullMarshalValue.ice_writeMembers(ostr);
        }
        else
        {
            v.ice_writeMembers(ostr);
        }
    }

    static public Structure ice_read(com.zeroc.Ice.InputStream istr)
    {
        Structure v = new Structure();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Structure> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Structure v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Structure> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Structure.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Structure _nullMarshalValue = new Structure();

    /** @hidden */
    private static final long serialVersionUID = -6681639522205493663L;
}
