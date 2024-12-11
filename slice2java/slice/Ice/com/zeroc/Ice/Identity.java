//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Identity.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.Ice;

/**
 * The identity of an Ice object. In a proxy, an empty {@link Identity#name} denotes a nil proxy. An identity with
 * an empty {@link Identity#name} and a non-empty {@link Identity#category} is illegal. You cannot add a servant
 * with an empty name to the Active Servant Map.
 *
 * @see ServantLocator
 * @see ObjectAdapter#addServantLocator
 **/
public class Identity implements java.lang.Cloneable,
                                 java.io.Serializable
{
    /**
     * The name of the Ice object.
     **/
    public String name;

    /**
     * The Ice object category.
     **/
    public String category;

    public Identity()
    {
        this.name = "";
        this.category = "";
    }

    public Identity(String name, String category)
    {
        this.name = name;
        this.category = category;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        Identity r = null;
        if(rhs instanceof Identity)
        {
            r = (Identity)rhs;
        }

        if(r != null)
        {
            if(this.name != r.name)
            {
                if(this.name == null || r.name == null || !this.name.equals(r.name))
                {
                    return false;
                }
            }
            if(this.category != r.category)
            {
                if(this.category == null || r.category == null || !this.category.equals(r.category))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::Ice::Identity");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, category);
        return h_;
    }

    public Identity clone()
    {
        Identity c = null;
        try
        {
            c = (Identity)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.name);
        ostr.writeString(this.category);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.category = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, Identity v)
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

    static public Identity ice_read(com.zeroc.Ice.InputStream istr)
    {
        Identity v = new Identity();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<Identity> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, Identity v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<Identity> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(Identity.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final Identity _nullMarshalValue = new Identity();

    /** @hidden */
    private static final long serialVersionUID = 4885721983038229221L;
}
