//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package com.zeroc.IceGrid;

/**
 * Information about an adapter registered with the IceGrid registry.
 **/
public class AdapterInfo implements java.lang.Cloneable,
                                    java.io.Serializable
{
    /**
     * The id of the adapter.
     **/
    public String id;

    /**
     * A dummy direct proxy that contains the adapter endpoints.
     **/
    public com.zeroc.Ice.ObjectPrx proxy;

    /**
     * The replica group id of the object adapter, or empty if the adapter doesn't belong to a replica group.
     **/
    public String replicaGroupId;

    public AdapterInfo()
    {
        this.id = "";
        this.replicaGroupId = "";
    }

    public AdapterInfo(String id, com.zeroc.Ice.ObjectPrx proxy, String replicaGroupId)
    {
        this.id = id;
        this.proxy = proxy;
        this.replicaGroupId = replicaGroupId;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        AdapterInfo r = null;
        if(rhs instanceof AdapterInfo)
        {
            r = (AdapterInfo)rhs;
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
            if(this.proxy != r.proxy)
            {
                if(this.proxy == null || r.proxy == null || !this.proxy.equals(r.proxy))
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

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::AdapterInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, proxy);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, replicaGroupId);
        return h_;
    }

    public AdapterInfo clone()
    {
        AdapterInfo c = null;
        try
        {
            c = (AdapterInfo)super.clone();
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
        ostr.writeProxy(this.proxy);
        ostr.writeString(this.replicaGroupId);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readString();
        this.proxy = istr.readProxy();
        this.replicaGroupId = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, AdapterInfo v)
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

    static public AdapterInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        AdapterInfo v = new AdapterInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<AdapterInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, AdapterInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<AdapterInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(AdapterInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final AdapterInfo _nullMarshalValue = new AdapterInfo();

    /** @hidden */
    public static final long serialVersionUID = -9125816395913420616L;
}
