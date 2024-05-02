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
 * A property set descriptor.
 **/
public class PropertySetDescriptor implements java.lang.Cloneable,
                                              java.io.Serializable
{
    /**
     * References to named property sets.
     **/
    public String[] references;

    /**
     * The property set properties.
     **/
    public java.util.List<PropertyDescriptor> properties;

    public PropertySetDescriptor()
    {
    }

    public PropertySetDescriptor(String[] references, java.util.List<PropertyDescriptor> properties)
    {
        this.references = references;
        this.properties = properties;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        PropertySetDescriptor r = null;
        if(rhs instanceof PropertySetDescriptor)
        {
            r = (PropertySetDescriptor)rhs;
        }

        if(r != null)
        {
            if(!java.util.Arrays.equals(this.references, r.references))
            {
                return false;
            }
            if(this.properties != r.properties)
            {
                if(this.properties == null || r.properties == null || !this.properties.equals(r.properties))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::PropertySetDescriptor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, references);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, properties);
        return h_;
    }

    public PropertySetDescriptor clone()
    {
        PropertySetDescriptor c = null;
        try
        {
            c = (PropertySetDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeStringSeq(this.references);
        PropertyDescriptorSeqHelper.write(ostr, this.properties);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.references = istr.readStringSeq();
        this.properties = PropertyDescriptorSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, PropertySetDescriptor v)
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

    static public PropertySetDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        PropertySetDescriptor v = new PropertySetDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<PropertySetDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, PropertySetDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<PropertySetDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(PropertySetDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final PropertySetDescriptor _nullMarshalValue = new PropertySetDescriptor();

    /** @hidden */
    public static final long serialVersionUID = -8998342733046622915L;
}
