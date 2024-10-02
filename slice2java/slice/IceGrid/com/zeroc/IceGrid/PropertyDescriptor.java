//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * Property descriptor.
 **/
public class PropertyDescriptor implements java.lang.Cloneable,
                                           java.io.Serializable
{
    /**
     * The name of the property.
     **/
    public String name;

    /**
     * The value of the property.
     **/
    public String value;

    public PropertyDescriptor()
    {
        this.name = "";
        this.value = "";
    }

    public PropertyDescriptor(String name, String value)
    {
        this.name = name;
        this.value = value;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        PropertyDescriptor r = null;
        if(rhs instanceof PropertyDescriptor)
        {
            r = (PropertyDescriptor)rhs;
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
            if(this.value != r.value)
            {
                if(this.value == null || r.value == null || !this.value.equals(r.value))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::PropertyDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, value);
        return h_;
    }

    public PropertyDescriptor clone()
    {
        PropertyDescriptor c = null;
        try
        {
            c = (PropertyDescriptor)super.clone();
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
        ostr.writeString(this.value);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.value = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, PropertyDescriptor v)
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

    static public PropertyDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        PropertyDescriptor v = new PropertyDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<PropertyDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, PropertyDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<PropertyDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(PropertyDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final PropertyDescriptor _nullMarshalValue = new PropertyDescriptor();

    /** @hidden */
    private static final long serialVersionUID = 4887857610218824452L;
}
