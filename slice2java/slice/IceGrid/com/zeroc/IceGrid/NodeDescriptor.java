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
 * A node descriptor.
 **/
public class NodeDescriptor implements java.lang.Cloneable,
                                       java.io.Serializable
{
    /**
     * The variables defined for the node.
     **/
    public java.util.Map<java.lang.String, java.lang.String> variables;

    /**
     * The server instances.
     **/
    public java.util.List<ServerInstanceDescriptor> serverInstances;

    /**
     * Servers (which are not template instances).
     **/
    public java.util.List<ServerDescriptor> servers;

    /**
     * Load factor of the node.
     **/
    public String loadFactor;

    /**
     * The description of this node.
     **/
    public String description;

    /**
     * Property set descriptors.
     **/
    public java.util.Map<java.lang.String, PropertySetDescriptor> propertySets;

    public NodeDescriptor()
    {
        this.loadFactor = "";
        this.description = "";
    }

    public NodeDescriptor(java.util.Map<java.lang.String, java.lang.String> variables, java.util.List<ServerInstanceDescriptor> serverInstances, java.util.List<ServerDescriptor> servers, String loadFactor, String description, java.util.Map<java.lang.String, PropertySetDescriptor> propertySets)
    {
        this.variables = variables;
        this.serverInstances = serverInstances;
        this.servers = servers;
        this.loadFactor = loadFactor;
        this.description = description;
        this.propertySets = propertySets;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        NodeDescriptor r = null;
        if(rhs instanceof NodeDescriptor)
        {
            r = (NodeDescriptor)rhs;
        }

        if(r != null)
        {
            if(this.variables != r.variables)
            {
                if(this.variables == null || r.variables == null || !this.variables.equals(r.variables))
                {
                    return false;
                }
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
            if(this.loadFactor != r.loadFactor)
            {
                if(this.loadFactor == null || r.loadFactor == null || !this.loadFactor.equals(r.loadFactor))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::NodeDescriptor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, variables);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, serverInstances);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, servers);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, loadFactor);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, propertySets);
        return h_;
    }

    public NodeDescriptor clone()
    {
        NodeDescriptor c = null;
        try
        {
            c = (NodeDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        StringStringDictHelper.write(ostr, this.variables);
        ServerInstanceDescriptorSeqHelper.write(ostr, this.serverInstances);
        ServerDescriptorSeqHelper.write(ostr, this.servers);
        ostr.writeString(this.loadFactor);
        ostr.writeString(this.description);
        PropertySetDescriptorDictHelper.write(ostr, this.propertySets);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
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
        this.serverInstances = ServerInstanceDescriptorSeqHelper.read(istr);
        this.servers = ServerDescriptorSeqHelper.read(istr);
        this.loadFactor = istr.readString();
        this.description = istr.readString();
        this.propertySets = PropertySetDescriptorDictHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, NodeDescriptor v)
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

    static public NodeDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        NodeDescriptor v = new NodeDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<NodeDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, NodeDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<NodeDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(NodeDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final NodeDescriptor _nullMarshalValue = new NodeDescriptor();

    /** @hidden */
    public static final long serialVersionUID = 6260594065162699026L;
}
