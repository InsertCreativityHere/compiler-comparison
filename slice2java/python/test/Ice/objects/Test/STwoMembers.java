//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ServerPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package Test;

public class STwoMembers implements java.lang.Cloneable,
                                    java.io.Serializable
{
    public Empty e1;

    public Empty e2;

    public STwoMembers()
    {
    }

    public STwoMembers(Empty e1, Empty e2)
    {
        this.e1 = e1;
        this.e2 = e2;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        STwoMembers r = null;
        if(rhs instanceof STwoMembers)
        {
            r = (STwoMembers)rhs;
        }

        if(r != null)
        {
            if(this.e1 != r.e1)
            {
                if(this.e1 == null || r.e1 == null || !this.e1.equals(r.e1))
                {
                    return false;
                }
            }
            if(this.e2 != r.e2)
            {
                if(this.e2 == null || r.e2 == null || !this.e2.equals(r.e2))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::STwoMembers");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, e1);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, e2);
        return h_;
    }

    public STwoMembers clone()
    {
        STwoMembers c = null;
        try
        {
            c = (STwoMembers)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeValue(this.e1);
        ostr.writeValue(this.e2);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        istr.readValue(v -> e1 = v, Empty.class);
        istr.readValue(v -> e2 = v, Empty.class);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, STwoMembers v)
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

    static public STwoMembers ice_read(com.zeroc.Ice.InputStream istr)
    {
        STwoMembers v = new STwoMembers();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<STwoMembers> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, STwoMembers v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<STwoMembers> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(STwoMembers.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final STwoMembers _nullMarshalValue = new STwoMembers();

    /** @hidden */
    private static final long serialVersionUID = 8316688952138383362L;
}
