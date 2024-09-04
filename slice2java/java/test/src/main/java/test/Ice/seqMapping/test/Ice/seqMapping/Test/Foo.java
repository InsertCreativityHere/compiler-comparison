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

package test.Ice.seqMapping.Test;

public class Foo implements java.lang.Cloneable,
                            java.io.Serializable
{
    public test.Ice.seqMapping.Serialize.Large SLmem;

    public test.Ice.seqMapping.Serialize.Large[] SLSmem;

    public Foo()
    {
    }

    public Foo(test.Ice.seqMapping.Serialize.Large SLmem, test.Ice.seqMapping.Serialize.Large[] SLSmem)
    {
        this.SLmem = SLmem;
        this.SLSmem = SLSmem;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Foo r = null;
        if(rhs instanceof Foo)
        {
            r = (Foo)rhs;
        }

        if(r != null)
        {
            if(this.SLmem != r.SLmem)
            {
                if(this.SLmem == null || r.SLmem == null || !this.SLmem.equals(r.SLmem))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.SLSmem, r.SLSmem))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Foo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, SLmem);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, SLSmem);
        return h_;
    }

    public Foo clone()
    {
        Foo c = null;
        try
        {
            c = (Foo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeSerializable(this.SLmem);
        SLSHelper.write(ostr, this.SLSmem);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.SLmem = istr.readSerializable(test.Ice.seqMapping.Serialize.Large.class);
        this.SLSmem = SLSHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Foo v)
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

    static public Foo ice_read(com.zeroc.Ice.InputStream istr)
    {
        Foo v = new Foo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Foo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Foo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Foo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Foo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Foo _nullMarshalValue = new Foo();

    /** @hidden */
    private static final long serialVersionUID = 8255458842745989226L;
}
