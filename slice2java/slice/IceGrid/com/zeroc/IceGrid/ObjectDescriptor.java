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
 * An Ice object descriptor.
 **/
public class ObjectDescriptor implements java.lang.Cloneable,
                                         java.io.Serializable
{
    /**
     * The identity of the object.
     **/
    public com.zeroc.Ice.Identity id;

    /**
     * The object type.
     **/
    public String type;

    /**
     * Proxy options to use with the proxy created for this Ice object. If empty, the proxy will be created with
     * the proxy options specified on the object adapter or replica group.
     **/
    public String proxyOptions;

    public ObjectDescriptor()
    {
        this.id = new com.zeroc.Ice.Identity();
        this.type = "";
        this.proxyOptions = "";
    }

    public ObjectDescriptor(com.zeroc.Ice.Identity id, String type, String proxyOptions)
    {
        this.id = id;
        this.type = type;
        this.proxyOptions = proxyOptions;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ObjectDescriptor r = null;
        if(rhs instanceof ObjectDescriptor)
        {
            r = (ObjectDescriptor)rhs;
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
            if(this.type != r.type)
            {
                if(this.type == null || r.type == null || !this.type.equals(r.type))
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

            return true;
        }

        return false;
    }

    public int hashCode()
    {
        int h_ = 5381;
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::ObjectDescriptor");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, type);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, proxyOptions);
        return h_;
    }

    public ObjectDescriptor clone()
    {
        ObjectDescriptor c = null;
        try
        {
            c = (ObjectDescriptor)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        com.zeroc.Ice.Identity.ice_write(ostr, this.id);
        ostr.writeString(this.type);
        ostr.writeString(this.proxyOptions);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = com.zeroc.Ice.Identity.ice_read(istr);
        this.type = istr.readString();
        this.proxyOptions = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ObjectDescriptor v)
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

    static public ObjectDescriptor ice_read(com.zeroc.Ice.InputStream istr)
    {
        ObjectDescriptor v = new ObjectDescriptor();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ObjectDescriptor> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ObjectDescriptor v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ObjectDescriptor> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ObjectDescriptor.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ObjectDescriptor _nullMarshalValue = new ObjectDescriptor();

    /** @hidden */
    private static final long serialVersionUID = 6245792786175182109L;
}
