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

public class InnerStruct2 implements java.lang.Cloneable,
                                     java.io.Serializable
{
    public String a;

    public InnerStruct2()
    {
        this.a = "";
    }

    public InnerStruct2(String a)
    {
        this.a = a;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        InnerStruct2 r = null;
        if(rhs instanceof InnerStruct2)
        {
            r = (InnerStruct2)rhs;
        }

        if(r != null)
        {
            if(this.a != r.a)
            {
                if(this.a == null || r.a == null || !this.a.equals(r.a))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::InnerStruct2");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, a);
        return h_;
    }

    public InnerStruct2 clone()
    {
        InnerStruct2 c = null;
        try
        {
            c = (InnerStruct2)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.a);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.a = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, InnerStruct2 v)
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

    static public InnerStruct2 ice_read(com.zeroc.Ice.InputStream istr)
    {
        InnerStruct2 v = new InnerStruct2();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<InnerStruct2> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, InnerStruct2 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<InnerStruct2> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(InnerStruct2.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final InnerStruct2 _nullMarshalValue = new InnerStruct2();

    /** @hidden */
    private static final long serialVersionUID = 908818878511185899L;
}
