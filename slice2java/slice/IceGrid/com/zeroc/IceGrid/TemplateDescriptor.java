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
 * A template descriptor for server or service templates.
 **/
public class TemplateDescriptor implements java.lang.Cloneable,
                                           java.io.Serializable
{
    /**
     * The template.
     **/
    public CommunicatorDescriptor descriptor;

    /**
     * The parameters required to instantiate the template.
     **/
    public java.util.List<java.lang.String> parameters;

    /**
     * The parameters default values.
     **/
    public java.util.Map<java.lang.String, java.lang.String> parameterDefaults;

    public TemplateDescriptor()
    {
    }

    public TemplateDescriptor(CommunicatorDescriptor descriptor, java.util.List<java.lang.String> parameters, java.util.Map<java.lang.String, java.lang.String> parameterDefaults)
    {
        this.descriptor = descriptor;
        this.parameters = parameters;
        this.parameterDefaults = parameterDefaults;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        TemplateDescriptor r = null;
        if(rhs instanceof TemplateDescriptor)
        {
            r = (TemplateDescriptor)rhs;
        }

        if(r != null)
        {
            if(this.descriptor != r.descriptor)
            {
                if(this.descriptor == null || r.descriptor == null || !this.descriptor.equals(r.descriptor))
                {
                    return false;
                }
            }
            if(this.parameters != r.parameters)
            {
                if(this.parameters == null || r.parameters == null || !this.parameters.equals(r.parameters))
                {
                    return false;
                }
            }
            if(this.parameterDefaults != r.parameterDefaults)
            {
                if(this.parameterDefaults == null || r.parameterDefaults == null || !this.parameterDefaults.equals(r.parameterDefaults))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::TemplateDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, descriptor);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, parameters);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, parameterDefaults);
        return h_;
    }

    public TemplateDescriptor clone()
    {
        TemplateDescriptor c = null;
        try
        {
            c = (TemplateDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeValue(this.descriptor);
        if(this.parameters == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(this.parameters.size());
            for(String elem : this.parameters)
            {
                ostr.writeString(elem);
            }
        }
        StringStringDictHelper.write(ostr, this.parameterDefaults);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        istr.readValue(v -> descriptor = v, CommunicatorDescriptor.class);
        this.parameters = new java.util.LinkedList<String>();
        final int len0 = istr.readAndCheckSeqSize(1);
        for(int i0 = 0; i0 < len0; i0++)
        {
            String elem;
            elem = istr.readString();
            this.parameters.add(elem);
        }
        this.parameterDefaults = StringStringDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, TemplateDescriptor v)
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

    static public TemplateDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        TemplateDescriptor v = new TemplateDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TemplateDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, TemplateDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<TemplateDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(TemplateDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final TemplateDescriptor _nullMarshalValue = new TemplateDescriptor();

    /** @hidden */
    private static final long serialVersionUID = 6756601452920585438L;
}
