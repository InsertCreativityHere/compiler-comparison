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
 * A server template instance descriptor.
 **/
public class ServerInstanceDescriptor implements java.lang.Cloneable,
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
     * The property set.
     **/
    public PropertySetDescriptor propertySet;

    /**
     * The services property sets. It's only valid to set these property sets if the template is an IceBox server
     * template.
     **/
    public java.util.Map<java.lang.String, PropertySetDescriptor> servicePropertySets;

    public ServerInstanceDescriptor()
    {
        this.template = "";
        this.propertySet = new PropertySetDescriptor();
    }

    public ServerInstanceDescriptor(String template, java.util.Map<java.lang.String, java.lang.String> parameterValues, PropertySetDescriptor propertySet, java.util.Map<java.lang.String, PropertySetDescriptor> servicePropertySets)
    {
        this.template = template;
        this.parameterValues = parameterValues;
        this.propertySet = propertySet;
        this.servicePropertySets = servicePropertySets;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ServerInstanceDescriptor r = null;
        if(rhs instanceof ServerInstanceDescriptor)
        {
            r = (ServerInstanceDescriptor)rhs;
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
            if(this.propertySet != r.propertySet)
            {
                if(this.propertySet == null || r.propertySet == null || !this.propertySet.equals(r.propertySet))
                {
                    return false;
                }
            }
            if(this.servicePropertySets != r.servicePropertySets)
            {
                if(this.servicePropertySets == null || r.servicePropertySets == null || !this.servicePropertySets.equals(r.servicePropertySets))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::ServerInstanceDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, template);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, parameterValues);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, propertySet);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, servicePropertySets);
        return h_;
    }

    public ServerInstanceDescriptor clone()
    {
        ServerInstanceDescriptor c = null;
        try
        {
            c = (ServerInstanceDescriptor)super.clone();
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
        PropertySetDescriptor.ice_write(ostr, this.propertySet);
        PropertySetDescriptorDictHelper.write(ostr, this.servicePropertySets);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.template = istr.readString();
        this.parameterValues = StringStringDictHelper.read(istr);
        this.propertySet = PropertySetDescriptor.ice_read(istr);
        this.servicePropertySets = PropertySetDescriptorDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ServerInstanceDescriptor v)
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

    static public ServerInstanceDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        ServerInstanceDescriptor v = new ServerInstanceDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ServerInstanceDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ServerInstanceDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ServerInstanceDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ServerInstanceDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ServerInstanceDescriptor _nullMarshalValue = new ServerInstanceDescriptor();

    /** @hidden */
    private static final long serialVersionUID = 5029082896933942148L;
}
