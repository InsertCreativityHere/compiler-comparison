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
 * Information about an Ice object.
 **/
public class ObjectInfo implements java.lang.Cloneable,
                                   java.io.Serializable
{
    /**
     * The proxy of the object.
     **/
    public com.zeroc.Ice.ObjectPrx proxy;

    /**
     * The type of the object.
     **/
    public String type;

    public ObjectInfo()
    {
        this.type = "";
    }

    public ObjectInfo(com.zeroc.Ice.ObjectPrx proxy, String type)
    {
        this.proxy = proxy;
        this.type = type;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ObjectInfo r = null;
        if(rhs instanceof ObjectInfo)
        {
            r = (ObjectInfo)rhs;
        }

        if(r != null)
        {
            if(this.proxy != r.proxy)
            {
                if(this.proxy == null || r.proxy == null || !this.proxy.equals(r.proxy))
                {
                    return false;
                }
            }
            if(this.type != r.type)
            {
                if(this.type == null || r.type == null || !this.type.equals(r.type))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::ObjectInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, proxy);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, type);
        return h_;
    }

    public ObjectInfo clone()
    {
        ObjectInfo c = null;
        try
        {
            c = (ObjectInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeProxy(this.proxy);
        ostr.writeString(this.type);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.proxy = istr.readProxy();
        this.type = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ObjectInfo v)
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

    static public ObjectInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        ObjectInfo v = new ObjectInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ObjectInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ObjectInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ObjectInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ObjectInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ObjectInfo _nullMarshalValue = new ObjectInfo();

    /** @hidden */
    public static final long serialVersionUID = 1156596090024631820L;
}
