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
 * An application descriptor.
 **/
public class ApplicationDescriptor implements java.lang.Cloneable,
                                              java.io.Serializable
{
    /**
     * The application name.
     **/
    public String name;

    /**
     * The variables defined in the application descriptor.
     **/
    public java.util.Map<java.lang.String, java.lang.String> variables;

    /**
     * The replica groups.
     **/
    public java.util.List<ReplicaGroupDescriptor> replicaGroups;

    /**
     * The server templates.
     **/
    public java.util.Map<java.lang.String, TemplateDescriptor> serverTemplates;

    /**
     * The service templates.
     **/
    public java.util.Map<java.lang.String, TemplateDescriptor> serviceTemplates;

    /**
     * The application nodes.
     **/
    public java.util.Map<java.lang.String, NodeDescriptor> nodes;

    /**
     * The application distribution.
     **/
    public DistributionDescriptor distrib;

    /**
     * The description of this application.
     **/
    public String description;

    /**
     * Property set descriptors.
     **/
    public java.util.Map<java.lang.String, PropertySetDescriptor> propertySets;

    public ApplicationDescriptor()
    {
        this.name = "";
        this.distrib = new DistributionDescriptor();
        this.description = "";
    }

    public ApplicationDescriptor(String name, java.util.Map<java.lang.String, java.lang.String> variables, java.util.List<ReplicaGroupDescriptor> replicaGroups, java.util.Map<java.lang.String, TemplateDescriptor> serverTemplates, java.util.Map<java.lang.String, TemplateDescriptor> serviceTemplates, java.util.Map<java.lang.String, NodeDescriptor> nodes, DistributionDescriptor distrib, String description, java.util.Map<java.lang.String, PropertySetDescriptor> propertySets)
    {
        this.name = name;
        this.variables = variables;
        this.replicaGroups = replicaGroups;
        this.serverTemplates = serverTemplates;
        this.serviceTemplates = serviceTemplates;
        this.nodes = nodes;
        this.distrib = distrib;
        this.description = description;
        this.propertySets = propertySets;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ApplicationDescriptor r = null;
        if(rhs instanceof ApplicationDescriptor)
        {
            r = (ApplicationDescriptor)rhs;
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
            if(this.variables != r.variables)
            {
                if(this.variables == null || r.variables == null || !this.variables.equals(r.variables))
                {
                    return false;
                }
            }
            if(this.replicaGroups != r.replicaGroups)
            {
                if(this.replicaGroups == null || r.replicaGroups == null || !this.replicaGroups.equals(r.replicaGroups))
                {
                    return false;
                }
            }
            if(this.serverTemplates != r.serverTemplates)
            {
                if(this.serverTemplates == null || r.serverTemplates == null || !this.serverTemplates.equals(r.serverTemplates))
                {
                    return false;
                }
            }
            if(this.serviceTemplates != r.serviceTemplates)
            {
                if(this.serviceTemplates == null || r.serviceTemplates == null || !this.serviceTemplates.equals(r.serviceTemplates))
                {
                    return false;
                }
            }
            if(this.nodes != r.nodes)
            {
                if(this.nodes == null || r.nodes == null || !this.nodes.equals(r.nodes))
                {
                    return false;
                }
            }
            if(this.distrib != r.distrib)
            {
                if(this.distrib == null || r.distrib == null || !this.distrib.equals(r.distrib))
                {
                    return false;
                }
            }
            if(this.description != r.description)
            {
                if(this.description == null || r.description == null || !this.description.equals(r.description))
                {
                    return false;
                }
            }
            if(this.propertySets != r.propertySets)
            {
                if(this.propertySets == null || r.propertySets == null || !this.propertySets.equals(r.propertySets))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::ApplicationDescriptor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, variables);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, replicaGroups);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, serverTemplates);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, serviceTemplates);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, nodes);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, distrib);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, propertySets);
        return h_;
    }

    public ApplicationDescriptor clone()
    {
        ApplicationDescriptor c = null;
        try
        {
            c = (ApplicationDescriptor)super.clone();
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
        StringStringDictHelper.write(ostr, this.variables);
        ReplicaGroupDescriptorSeqHelper.write(ostr, this.replicaGroups);
        TemplateDescriptorDictHelper.write(ostr, this.serverTemplates);
        TemplateDescriptorDictHelper.write(ostr, this.serviceTemplates);
        NodeDescriptorDictHelper.write(ostr, this.nodes);
        DistributionDescriptor.ice_write(ostr, this.distrib);
        ostr.writeString(this.description);
        PropertySetDescriptorDictHelper.write(ostr, this.propertySets);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.variables = new java.util.TreeMap<String, String>();
        int sz0 = istr.readSize();
        for(int i0 = 0; i0 < sz0; i0++)
        {
            String key;
            key = istr.readString();
            String value;
            value = istr.readString();
            this.variables.put(key, value);
        }
        this.replicaGroups = ReplicaGroupDescriptorSeqHelper.read(istr);
        this.serverTemplates = TemplateDescriptorDictHelper.read(istr);
        this.serviceTemplates = TemplateDescriptorDictHelper.read(istr);
        this.nodes = NodeDescriptorDictHelper.read(istr);
        this.distrib = DistributionDescriptor.ice_read(istr);
        this.description = istr.readString();
        this.propertySets = PropertySetDescriptorDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ApplicationDescriptor v)
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

    static public ApplicationDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        ApplicationDescriptor v = new ApplicationDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ApplicationDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ApplicationDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ApplicationDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ApplicationDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ApplicationDescriptor _nullMarshalValue = new ApplicationDescriptor();

    /** @hidden */
    public static final long serialVersionUID = -3396107659928037199L;
}
