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
 * An application update descriptor to describe the updates to apply to a deployed application.
 **/
public class ApplicationUpdateDescriptor implements java.lang.Cloneable,
                                                    java.io.Serializable
{
    /**
     * The name of the application to update.
     **/
    public String name;

    /**
     * The updated description (or null if the description wasn't updated.)
     **/
    public BoxedString description;

    /**
     * The updated distribution application descriptor.
     **/
    public BoxedDistributionDescriptor distrib;

    /**
     * The variables to update.
     **/
    public java.util.Map<java.lang.String, java.lang.String> variables;

    /**
     * The variables to remove.
     **/
    public String[] removeVariables;

    /**
     * The property sets to update.
     **/
    public java.util.Map<java.lang.String, PropertySetDescriptor> propertySets;

    /**
     * The property sets to remove.
     **/
    public String[] removePropertySets;

    /**
     * The replica groups to update.
     **/
    public java.util.List<ReplicaGroupDescriptor> replicaGroups;

    /**
     * The replica groups to remove.
     **/
    public String[] removeReplicaGroups;

    /**
     * The server templates to update.
     **/
    public java.util.Map<java.lang.String, TemplateDescriptor> serverTemplates;

    /**
     * The ids of the server template to remove.
     **/
    public String[] removeServerTemplates;

    /**
     * The service templates to update.
     **/
    public java.util.Map<java.lang.String, TemplateDescriptor> serviceTemplates;

    /**
     * The ids of the service template to remove.
     **/
    public String[] removeServiceTemplates;

    /**
     * The application nodes to update.
     **/
    public java.util.List<NodeUpdateDescriptor> nodes;

    /**
     * The nodes to remove.
     **/
    public String[] removeNodes;

    public ApplicationUpdateDescriptor()
    {
        this.name = "";
    }

    public ApplicationUpdateDescriptor(String name, BoxedString description, BoxedDistributionDescriptor distrib, java.util.Map<java.lang.String, java.lang.String> variables, String[] removeVariables, java.util.Map<java.lang.String, PropertySetDescriptor> propertySets, String[] removePropertySets, java.util.List<ReplicaGroupDescriptor> replicaGroups, String[] removeReplicaGroups, java.util.Map<java.lang.String, TemplateDescriptor> serverTemplates, String[] removeServerTemplates, java.util.Map<java.lang.String, TemplateDescriptor> serviceTemplates, String[] removeServiceTemplates, java.util.List<NodeUpdateDescriptor> nodes, String[] removeNodes)
    {
        this.name = name;
        this.description = description;
        this.distrib = distrib;
        this.variables = variables;
        this.removeVariables = removeVariables;
        this.propertySets = propertySets;
        this.removePropertySets = removePropertySets;
        this.replicaGroups = replicaGroups;
        this.removeReplicaGroups = removeReplicaGroups;
        this.serverTemplates = serverTemplates;
        this.removeServerTemplates = removeServerTemplates;
        this.serviceTemplates = serviceTemplates;
        this.removeServiceTemplates = removeServiceTemplates;
        this.nodes = nodes;
        this.removeNodes = removeNodes;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ApplicationUpdateDescriptor r = null;
        if(rhs instanceof ApplicationUpdateDescriptor)
        {
            r = (ApplicationUpdateDescriptor)rhs;
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
            if(this.description != r.description)
            {
                if(this.description == null || r.description == null || !this.description.equals(r.description))
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
            if(this.variables != r.variables)
            {
                if(this.variables == null || r.variables == null || !this.variables.equals(r.variables))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removeVariables, r.removeVariables))
            {
                return false;
            }
            if(this.propertySets != r.propertySets)
            {
                if(this.propertySets == null || r.propertySets == null || !this.propertySets.equals(r.propertySets))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removePropertySets, r.removePropertySets))
            {
                return false;
            }
            if(this.replicaGroups != r.replicaGroups)
            {
                if(this.replicaGroups == null || r.replicaGroups == null || !this.replicaGroups.equals(r.replicaGroups))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removeReplicaGroups, r.removeReplicaGroups))
            {
                return false;
            }
            if(this.serverTemplates != r.serverTemplates)
            {
                if(this.serverTemplates == null || r.serverTemplates == null || !this.serverTemplates.equals(r.serverTemplates))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removeServerTemplates, r.removeServerTemplates))
            {
                return false;
            }
            if(this.serviceTemplates != r.serviceTemplates)
            {
                if(this.serviceTemplates == null || r.serviceTemplates == null || !this.serviceTemplates.equals(r.serviceTemplates))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removeServiceTemplates, r.removeServiceTemplates))
            {
                return false;
            }
            if(this.nodes != r.nodes)
            {
                if(this.nodes == null || r.nodes == null || !this.nodes.equals(r.nodes))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removeNodes, r.removeNodes))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::ApplicationUpdateDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, distrib);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, variables);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, removeVariables);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, propertySets);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, removePropertySets);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, replicaGroups);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, removeReplicaGroups);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, serverTemplates);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, removeServerTemplates);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, serviceTemplates);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, removeServiceTemplates);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, nodes);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, removeNodes);
        return h_;
    }

    public ApplicationUpdateDescriptor clone()
    {
        ApplicationUpdateDescriptor c = null;
        try
        {
            c = (ApplicationUpdateDescriptor)super.clone();
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
        ostr.writeValue(this.description);
        ostr.writeValue(this.distrib);
        StringStringDictHelper.write(ostr, this.variables);
        ostr.writeStringSeq(this.removeVariables);
        PropertySetDescriptorDictHelper.write(ostr, this.propertySets);
        ostr.writeStringSeq(this.removePropertySets);
        ReplicaGroupDescriptorSeqHelper.write(ostr, this.replicaGroups);
        ostr.writeStringSeq(this.removeReplicaGroups);
        TemplateDescriptorDictHelper.write(ostr, this.serverTemplates);
        ostr.writeStringSeq(this.removeServerTemplates);
        TemplateDescriptorDictHelper.write(ostr, this.serviceTemplates);
        ostr.writeStringSeq(this.removeServiceTemplates);
        NodeUpdateDescriptorSeqHelper.write(ostr, this.nodes);
        ostr.writeStringSeq(this.removeNodes);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        istr.readValue(v -> description = v, BoxedString.class);
        istr.readValue(v -> distrib = v, BoxedDistributionDescriptor.class);
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
        this.removeVariables = istr.readStringSeq();
        this.propertySets = PropertySetDescriptorDictHelper.read(istr);
        this.removePropertySets = istr.readStringSeq();
        this.replicaGroups = ReplicaGroupDescriptorSeqHelper.read(istr);
        this.removeReplicaGroups = istr.readStringSeq();
        this.serverTemplates = TemplateDescriptorDictHelper.read(istr);
        this.removeServerTemplates = istr.readStringSeq();
        this.serviceTemplates = TemplateDescriptorDictHelper.read(istr);
        this.removeServiceTemplates = istr.readStringSeq();
        this.nodes = NodeUpdateDescriptorSeqHelper.read(istr);
        this.removeNodes = istr.readStringSeq();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ApplicationUpdateDescriptor v)
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

    static public ApplicationUpdateDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        ApplicationUpdateDescriptor v = new ApplicationUpdateDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ApplicationUpdateDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ApplicationUpdateDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ApplicationUpdateDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ApplicationUpdateDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ApplicationUpdateDescriptor _nullMarshalValue = new ApplicationUpdateDescriptor();

    /** @hidden */
    private static final long serialVersionUID = -5913964012061152169L;
}
