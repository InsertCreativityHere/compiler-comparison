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

public class TEstNv implements java.lang.Cloneable,
                               java.io.Serializable
{
    public java.util.Map<java.lang.Integer, java.lang.Integer> d;

    public int[] s;

    public TEstNv()
    {
    }

    public TEstNv(java.util.Map<java.lang.Integer, java.lang.Integer> d, int[] s)
    {
        this.d = d;
        this.s = s;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        TEstNv r = null;
        if(rhs instanceof TEstNv)
        {
            r = (TEstNv)rhs;
        }

        if(r != null)
        {
            if(this.d != r.d)
            {
                if(this.d == null || r.d == null || !this.d.equals(r.d))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.s, r.s))
            {
                return false;
            }

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::TEstNv");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, d);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, s);
        return h_;
    }

    public TEstNv clone()
    {
        TEstNv c = null;
        try
        {
            c = (TEstNv)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        NVHelper.write(ostr, this.d);
        ostr.writeIntSeq(this.s);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.d = NVHelper.read(istr);
        this.s = istr.readIntSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, TEstNv v)
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

    static public TEstNv ice_read(com.zeroc.Ice.InputStream istr)
    {
        TEstNv v = new TEstNv();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TEstNv> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, TEstNv v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<TEstNv> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(TEstNv.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final TEstNv _nullMarshalValue = new TEstNv();

    /** @hidden */
    private static final long serialVersionUID = 4042431053916462018L;
}
