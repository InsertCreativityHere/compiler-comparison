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
 * A service template instance descriptor.
 **/
public class ServiceInstanceDescriptor implements java.lang.Cloneable,
                                                  java.io.Serializable
{
    /**
     * The template used by this instance.
     **/
    public String template;

    /**
     * The template parameter values.
     **/
    public java.util.Map<java.lang.String, java.lang.String> parameterValues;

    /**
     * The service definition if the instance isn't a template instance (i.e.: if the template attribute is empty).
     **/
    public ServiceDescriptor descriptor;

    /**
     * The property set.
     **/
    public PropertySetDescriptor propertySet;

    public ServiceInstanceDescriptor()
    {
        this.template = "";
        this.propertySet = new PropertySetDescriptor();
    }

    public ServiceInstanceDescriptor(String template, java.util.Map<java.lang.String, java.lang.String> parameterValues, ServiceDescriptor descriptor, PropertySetDescriptor propertySet)
    {
        this.template = template;
        this.parameterValues = parameterValues;
        this.descriptor = descriptor;
        this.propertySet = propertySet;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ServiceInstanceDescriptor r = null;
        if(rhs instanceof ServiceInstanceDescriptor)
        {
            r = (ServiceInstanceDescriptor)rhs;
        }

        if(r != null)
        {
            if(this.template != r.template)
            {
                if(this.template == null || r.template == null || !this.template.equals(r.template))
                {
                    return false;
                }
            }
            if(this.parameterValues != r.parameterValues)
            {
                if(this.parameterValues == null || r.parameterValues == null || !this.parameterValues.equals(r.parameterValues))
                {
                    return false;
                }
            }
            if(this.descriptor != r.descriptor)
            {
                if(this.descriptor == null || r.descriptor == null || !this.descriptor.equals(r.descriptor))
                {
                    return false;
                }
            }
            if(this.propertySet != r.propertySet)
            {
                if(this.propertySet == null || r.propertySet == null || !this.propertySet.equals(r.propertySet))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::ServiceInstanceDescriptor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, template);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, parameterValues);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, descriptor);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, propertySet);
        return h_;
    }

    public ServiceInstanceDescriptor clone()
    {
        ServiceInstanceDescriptor c = null;
        try
        {
            c = (ServiceInstanceDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.template);
        StringStringDictHelper.write(ostr, this.parameterValues);
        ostr.writeValue(this.descriptor);
        PropertySetDescriptor.ice_write(ostr, this.propertySet);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.template = istr.readString();
        this.parameterValues = StringStringDictHelper.read(istr);
        istr.readValue(v -> descriptor = v, ServiceDescriptor.class);
        this.propertySet = PropertySetDescriptor.ice_read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ServiceInstanceDescriptor v)
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

    static public ServiceInstanceDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        ServiceInstanceDescriptor v = new ServiceInstanceDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ServiceInstanceDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ServiceInstanceDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ServiceInstanceDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ServiceInstanceDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ServiceInstanceDescriptor _nullMarshalValue = new ServiceInstanceDescriptor();

    /** @hidden */
    public static final long serialVersionUID = 254944775946420807L;
}
