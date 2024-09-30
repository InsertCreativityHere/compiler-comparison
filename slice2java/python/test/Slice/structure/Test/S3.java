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

public class S3 implements java.lang.Cloneable,
                           java.io.Serializable
{
    public C obj;

    public java.util.Map<java.lang.String, java.lang.String> sd;

    public com.zeroc.Ice.ObjectPrx prx;

    public S3()
    {
    }

    public S3(C obj, java.util.Map<java.lang.String, java.lang.String> sd, com.zeroc.Ice.ObjectPrx prx)
    {
        this.obj = obj;
        this.sd = sd;
        this.prx = prx;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        S3 r = null;
        if(rhs instanceof S3)
        {
            r = (S3)rhs;
        }

        if(r != null)
        {
            if(this.obj != r.obj)
            {
                if(this.obj == null || r.obj == null || !this.obj.equals(r.obj))
                {
                    return false;
                }
            }
            if(this.sd != r.sd)
            {
                if(this.sd == null || r.sd == null || !this.sd.equals(r.sd))
                {
                    return false;
                }
            }
            if(this.prx != r.prx)
            {
                if(this.prx == null || r.prx == null || !this.prx.equals(r.prx))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Test::S3");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, obj);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, sd);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, prx);
        return h_;
    }

    public S3 clone()
    {
        S3 c = null;
        try
        {
            c = (S3)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeValue(this.obj);
        StringDictHelper.write(ostr, this.sd);
        ostr.writeProxy(this.prx);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        istr.readValue(v -> obj = v, C.class);
        this.sd = StringDictHelper.read(istr);
        this.prx = istr.readProxy();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, S3 v)
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

    static public S3 ice_read(com.zeroc.Ice.InputStream istr)
    {
        S3 v = new S3();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<S3> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, S3 v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<S3> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(S3.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final S3 _nullMarshalValue = new S3();

    /** @hidden */
    private static final long serialVersionUID = 3220115374915576542L;
}
