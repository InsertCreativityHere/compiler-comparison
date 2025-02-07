// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Descriptor.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package com.zeroc.IceGrid;

/**
 * An Ice object adapter descriptor.
 **/
public class AdapterDescriptor implements java.lang.Cloneable,
                                          java.io.Serializable
{
    /**
     * The object adapter name.
     **/
    public String name;

    /**
     * The description of this object adapter.
     **/
    public String description;

    /**
     * The object adapter id.
     **/
    public String id;

    /**
     * The replica id of this adapter.
     **/
    public String replicaGroupId;

    /**
     * The adapter priority. This is eventually used when the adapter is member of a replica group to sort the
     * adapter endpoints by priority.
     **/
    public String priority;

    /**
     * Flag to specify if the object adapter will register a process object.
     **/
    public boolean registerProcess;

    /**
     * If true the lifetime of this object adapter is the same of the server lifetime. This information is used by
     * the IceGrid node to figure out the server state: the server is active only if all its "server lifetime"
     * adapters are active.
     **/
    public boolean serverLifetime;

    /**
     * The well-known object descriptors associated with this object adapter.
     **/
    public java.util.List<ObjectDescriptor> objects;

    /**
     * The allocatable object descriptors associated with this object adapter.
     **/
    public java.util.List<ObjectDescriptor> allocatables;

    public AdapterDescriptor()
    {
        this.name = "";
        this.description = "";
        this.id = "";
        this.replicaGroupId = "";
        this.priority = "";
    }

    public AdapterDescriptor(String name, String description, String id, String replicaGroupId, String priority, boolean registerProcess, boolean serverLifetime, java.util.List<ObjectDescriptor> objects, java.util.List<ObjectDescriptor> allocatables)
    {
        this.name = name;
        this.description = description;
        this.id = id;
        this.replicaGroupId = replicaGroupId;
        this.priority = priority;
        this.registerProcess = registerProcess;
        this.serverLifetime = serverLifetime;
        this.objects = objects;
        this.allocatables = allocatables;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        AdapterDescriptor r = null;
        if(rhs instanceof AdapterDescriptor)
        {
            r = (AdapterDescriptor)rhs;
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
            if(this.id != r.id)
            {
                if(this.id == null || r.id == null || !this.id.equals(r.id))
                {
                    return false;
                }
            }
            if(this.replicaGroupId != r.replicaGroupId)
            {
                if(this.replicaGroupId == null || r.replicaGroupId == null || !this.replicaGroupId.equals(r.replicaGroupId))
                {
                    return false;
                }
            }
            if(this.priority != r.priority)
            {
                if(this.priority == null || r.priority == null || !this.priority.equals(r.priority))
                {
                    return false;
                }
            }
            if(this.registerProcess != r.registerProcess)
            {
                return false;
            }
            if(this.serverLifetime != r.serverLifetime)
            {
                return false;
            }
            if(this.objects != r.objects)
            {
                if(this.objects == null || r.objects == null || !this.objects.equals(r.objects))
                {
                    return false;
                }
            }
            if(this.allocatables != r.allocatables)
            {
                if(this.allocatables == null || r.allocatables == null || !this.allocatables.equals(r.allocatables))
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::AdapterDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, replicaGroupId);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, priority);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, registerProcess);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, serverLifetime);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, objects);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, allocatables);
        return h_;
    }

    public AdapterDescriptor clone()
    {
        AdapterDescriptor c = null;
        try
        {
            c = (AdapterDescriptor)super.clone();
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
        ostr.writeString(this.description);
        ostr.writeString(this.id);
        ostr.writeString(this.replicaGroupId);
        ostr.writeString(this.priority);
        ostr.writeBool(this.registerProcess);
        ostr.writeBool(this.serverLifetime);
        ObjectDescriptorSeqHelper.write(ostr, this.objects);
        ObjectDescriptorSeqHelper.write(ostr, this.allocatables);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.description = istr.readString();
        this.id = istr.readString();
        this.replicaGroupId = istr.readString();
        this.priority = istr.readString();
        this.registerProcess = istr.readBool();
        this.serverLifetime = istr.readBool();
        this.objects = ObjectDescriptorSeqHelper.read(istr);
        this.allocatables = ObjectDescriptorSeqHelper.read(istr);
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, AdapterDescriptor v)
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

    static public AdapterDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        AdapterDescriptor v = new AdapterDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<AdapterDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, AdapterDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<AdapterDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(AdapterDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final AdapterDescriptor _nullMarshalValue = new AdapterDescriptor();

    /** @hidden */
    private static final long serialVersionUID = 372728080530308619L;
}
