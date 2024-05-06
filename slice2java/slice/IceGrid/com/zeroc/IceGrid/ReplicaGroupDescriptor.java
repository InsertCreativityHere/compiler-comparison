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
 * A replica group descriptor.
 **/
public class ReplicaGroupDescriptor implements java.lang.Cloneable,
                                               java.io.Serializable
{
    /**
     * The id of the replica group.
     **/
    public String id;

    /**
     * The load balancing policy.
     **/
    public LoadBalancingPolicy loadBalancing;

    /**
     * Default options for proxies created for the replica group.
     **/
    public String proxyOptions;

    /**
     * The object descriptors associated with this object adapter.
     **/
    public java.util.List<ObjectDescriptor> objects;

    /**
     * The description of this replica group.
     **/
    public String description;

    /**
     * The filter to use for this replica group.
     **/
    public String filter;

    public ReplicaGroupDescriptor()
    {
        this.id = "";
        this.proxyOptions = "";
        this.description = "";
        this.filter = "";
    }

    public ReplicaGroupDescriptor(String id, LoadBalancingPolicy loadBalancing, String proxyOptions, java.util.List<ObjectDescriptor> objects, String description, String filter)
    {
        this.id = id;
        this.loadBalancing = loadBalancing;
        this.proxyOptions = proxyOptions;
        this.objects = objects;
        this.description = description;
        this.filter = filter;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ReplicaGroupDescriptor r = null;
        if(rhs instanceof ReplicaGroupDescriptor)
        {
            r = (ReplicaGroupDescriptor)rhs;
        }

        if(r != null)
        {
            if(this.id != r.id)
            {
                if(this.id == null || r.id == null || !this.id.equals(r.id))
                {
                    return false;
                }
            }
            if(this.loadBalancing != r.loadBalancing)
            {
                if(this.loadBalancing == null || r.loadBalancing == null || !this.loadBalancing.equals(r.loadBalancing))
                {
                    return false;
                }
            }
            if(this.proxyOptions != r.proxyOptions)
            {
                if(this.proxyOptions == null || r.proxyOptions == null || !this.proxyOptions.equals(r.proxyOptions))
                {
                    return false;
                }
            }
            if(this.objects != r.objects)
            {
                if(this.objects == null || r.objects == null || !this.objects.equals(r.objects))
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
            if(this.filter != r.filter)
            {
                if(this.filter == null || r.filter == null || !this.filter.equals(r.filter))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::ReplicaGroupDescriptor");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, loadBalancing);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, proxyOptions);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, objects);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, description);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, filter);
        return h_;
    }

    public ReplicaGroupDescriptor clone()
    {
        ReplicaGroupDescriptor c = null;
        try
        {
            c = (ReplicaGroupDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.id);
        ostr.writeValue(this.loadBalancing);
        ostr.writeString(this.proxyOptions);
        ObjectDescriptorSeqHelper.write(ostr, this.objects);
        ostr.writeString(this.description);
        ostr.writeString(this.filter);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readString();
        istr.readValue(v -> loadBalancing = v, LoadBalancingPolicy.class);
        this.proxyOptions = istr.readString();
        this.objects = ObjectDescriptorSeqHelper.read(istr);
        this.description = istr.readString();
        this.filter = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ReplicaGroupDescriptor v)
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

    static public ReplicaGroupDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        ReplicaGroupDescriptor v = new ReplicaGroupDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ReplicaGroupDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ReplicaGroupDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ReplicaGroupDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ReplicaGroupDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ReplicaGroupDescriptor _nullMarshalValue = new ReplicaGroupDescriptor();

    /** @hidden */
    public static final long serialVersionUID = -3888044010684130480L;
}
