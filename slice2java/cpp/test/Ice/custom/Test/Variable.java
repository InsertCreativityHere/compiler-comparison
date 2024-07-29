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

public class Variable implements java.lang.Cloneable,
                                 java.io.Serializable
{
    public String s;

    public boolean[] bl;

    public String[] ss;

    public Variable()
    {
        this.s = "";
    }

    public Variable(String s, boolean[] bl, String[] ss)
    {
        this.s = s;
        this.bl = bl;
        this.ss = ss;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Variable r = null;
        if(rhs instanceof Variable)
        {
            r = (Variable)rhs;
        }

        if(r != null)
        {
            if(this.s != r.s)
            {
                if(this.s == null || r.s == null || !this.s.equals(r.s))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.bl, r.bl))
            {
                return false;
            }
            if(!java.util.Arrays.equals(this.ss, r.ss))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::Test::Variable");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, s);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, bl);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, ss);
        return h_;
    }

    public Variable clone()
    {
        Variable c = null;
        try
        {
            c = (Variable)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.s);
        ostr.writeBoolSeq(this.bl);
        ostr.writeStringSeq(this.ss);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.s = istr.readString();
        this.bl = istr.readBoolSeq();
        this.ss = istr.readStringSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Variable v)
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

    static public Variable ice_read(com.zeroc.Ice.InputStream istr)
    {
        Variable v = new Variable();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Variable> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Variable v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Variable> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Variable.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Variable _nullMarshalValue = new Variable();

    /** @hidden */
    private static final long serialVersionUID = -5378472094211244784L;
}
