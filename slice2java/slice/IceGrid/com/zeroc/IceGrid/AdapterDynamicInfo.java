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
 * Dynamic information about the state of an adapter.
 **/
public class AdapterDynamicInfo implements java.lang.Cloneable,
                                           java.io.Serializable
{
    /**
     * The id of the adapter.
     **/
    public String id;

    /**
     * The direct proxy containing the adapter endpoints.
     **/
    public com.zeroc.Ice.ObjectPrx proxy;

    public AdapterDynamicInfo()
    {
        this.id = "";
    }

    public AdapterDynamicInfo(String id, com.zeroc.Ice.ObjectPrx proxy)
    {
        this.id = id;
        this.proxy = proxy;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        AdapterDynamicInfo r = null;
        if(rhs instanceof AdapterDynamicInfo)
        {
            r = (AdapterDynamicInfo)rhs;
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

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::AdapterDynamicInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, proxy);
        return h_;
    }

    public AdapterDynamicInfo clone()
    {
        AdapterDynamicInfo c = null;
        try
        {
            c = (AdapterDynamicInfo)super.clone();
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
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readString();
        this.proxy = istr.readProxy();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, AdapterDynamicInfo v)
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

    static public AdapterDynamicInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        AdapterDynamicInfo v = new AdapterDynamicInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<AdapterDynamicInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, AdapterDynamicInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<AdapterDynamicInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(AdapterDynamicInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final AdapterDynamicInfo _nullMarshalValue = new AdapterDynamicInfo();

    /** @hidden */
    public static final long serialVersionUID = -1097618998475611493L;
}
