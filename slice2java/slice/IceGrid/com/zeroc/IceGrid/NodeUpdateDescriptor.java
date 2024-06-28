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
 * A node update descriptor to describe the updates to apply to a node of a deployed application.
 **/
public class NodeUpdateDescriptor implements java.lang.Cloneable,
                                             java.io.Serializable
{
    /**
     * The name of the node to update.
     **/
    public String name;

    /**
     * The updated description (or null if the description wasn't updated.)
     **/
    public BoxedString description;

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
     * The server instances to update.
     **/
    public java.util.List<ServerInstanceDescriptor> serverInstances;

    /**
     * The servers which are not template instances to update.
     **/
    public java.util.List<ServerDescriptor> servers;

    /**
     * The ids of the servers to remove.
     **/
    public String[] removeServers;

    /**
     * The updated load factor of the node (or null if the load factor was not updated).
     **/
    public BoxedString loadFactor;

    public NodeUpdateDescriptor()
    {
        this.name = "";
    }

    public NodeUpdateDescriptor(String name, BoxedString description, java.util.Map<java.lang.String, java.lang.String> variables, String[] removeVariables, java.util.Map<java.lang.String, PropertySetDescriptor> propertySets, String[] removePropertySets, java.util.List<ServerInstanceDescriptor> serverInstances, java.util.List<ServerDescriptor> servers, String[] removeServers, BoxedString loadFactor)
    {
        this.name = name;
        this.description = description;
        this.variables = variables;
        this.removeVariables = removeVariables;
        this.propertySets = propertySets;
        this.removePropertySets = removePropertySets;
        this.serverInstances = serverInstances;
        this.servers = servers;
        this.removeServers = removeServers;
        this.loadFactor = loadFactor;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        NodeUpdateDescriptor r = null;
        if(rhs instanceof NodeUpdateDescriptor)
        {
            r = (NodeUpdateDescriptor)rhs;
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
            if(this.serverInstances != r.serverInstances)
            {
                if(this.serverInstances == null || r.serverInstances == null || !this.serverInstances.equals(r.serverInstances))
                {
                    return false;
                }
            }
            if(this.servers != r.servers)
            {
                if(this.servers == null || r.servers == null || !this.servers.equals(r.servers))
                {
                    return false;
                }
            }
            if(!java.util.Arrays.equals(this.removeServers, r.removeServers))
            {
                return false;
            }
            if(this.loadFactor != r.loadFactor)
            {
                if(this.loadFactor == null || r.loadFactor == null || !this.loadFactor.equals(r.loadFactor))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::NodeUpdateDescriptor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, variables);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, removeVariables);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, propertySets);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, removePropertySets);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, serverInstances);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, servers);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, removeServers);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, loadFactor);
        return h_;
    }

    public NodeUpdateDescriptor clone()
    {
        NodeUpdateDescriptor c = null;
        try
        {
            c = (NodeUpdateDescriptor)super.clone();
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
        StringStringDictHelper.write(ostr, this.variables);
        ostr.writeStringSeq(this.removeVariables);
        PropertySetDescriptorDictHelper.write(ostr, this.propertySets);
        ostr.writeStringSeq(this.removePropertySets);
        ServerInstanceDescriptorSeqHelper.write(ostr, this.serverInstances);
        ServerDescriptorSeqHelper.write(ostr, this.servers);
        ostr.writeStringSeq(this.removeServers);
        ostr.writeValue(this.loadFactor);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        istr.readValue(v -> description = v, BoxedString.class);
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
        this.serverInstances = ServerInstanceDescriptorSeqHelper.read(istr);
        this.servers = ServerDescriptorSeqHelper.read(istr);
        this.removeServers = istr.readStringSeq();
        istr.readValue(v -> loadFactor = v, BoxedString.class);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, NodeUpdateDescriptor v)
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

    static public NodeUpdateDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        NodeUpdateDescriptor v = new NodeUpdateDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NodeUpdateDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NodeUpdateDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<NodeUpdateDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(NodeUpdateDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final NodeUpdateDescriptor _nullMarshalValue = new NodeUpdateDescriptor();

    /** @hidden */
    private static final long serialVersionUID = 8796949010603756112L;
}
