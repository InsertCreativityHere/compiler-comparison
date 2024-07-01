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
 * Information about an IceGrid registry replica.
 **/
public class RegistryInfo implements java.lang.Cloneable,
                                     java.io.Serializable
{
    /**
     * The name of the registry.
     **/
    public String name;

    /**
     * The network name of the host running this registry (as defined in uname()).
     **/
    public String hostname;

    public RegistryInfo()
    {
        this.name = "";
        this.hostname = "";
    }

    public RegistryInfo(String name, String hostname)
    {
        this.name = name;
        this.hostname = hostname;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        RegistryInfo r = null;
        if(rhs instanceof RegistryInfo)
        {
            r = (RegistryInfo)rhs;
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
            if(this.hostname != r.hostname)
            {
                if(this.hostname == null || r.hostname == null || !this.hostname.equals(r.hostname))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::RegistryInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, name);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, hostname);
        return h_;
    }

    public RegistryInfo clone()
    {
        RegistryInfo c = null;
        try
        {
            c = (RegistryInfo)super.clone();
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
        ostr.writeString(this.hostname);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.name = istr.readString();
        this.hostname = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, RegistryInfo v)
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

    static public RegistryInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        RegistryInfo v = new RegistryInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<RegistryInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, RegistryInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<RegistryInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(RegistryInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final RegistryInfo _nullMarshalValue = new RegistryInfo();

    /** @hidden */
    private static final long serialVersionUID = 2091483145948337255L;
}
