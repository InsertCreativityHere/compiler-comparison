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

public class SOneMember implements java.lang.Cloneable,
                                   java.io.Serializable
{
    public Empty e;

    public SOneMember()
    {
    }

    public SOneMember(Empty e)
    {
        this.e = e;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        SOneMember r = null;
        if(rhs instanceof SOneMember)
        {
            r = (SOneMember)rhs;
        }

        if(r != null)
        {
            if(this.e != r.e)
            {
                if(this.e == null || r.e == null || !this.e.equals(r.e))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::SOneMember");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, e);
        return h_;
    }

    public SOneMember clone()
    {
        SOneMember c = null;
        try
        {
            c = (SOneMember)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeValue(this.e);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        istr.readValue(v -> e = v, Empty.class);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, SOneMember v)
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

    static public SOneMember ice_read(com.zeroc.Ice.InputStream istr)
    {
        SOneMember v = new SOneMember();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<SOneMember> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, SOneMember v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<SOneMember> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(SOneMember.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final SOneMember _nullMarshalValue = new SOneMember();

    /** @hidden */
    private static final long serialVersionUID = 6227753214044590233L;
}
