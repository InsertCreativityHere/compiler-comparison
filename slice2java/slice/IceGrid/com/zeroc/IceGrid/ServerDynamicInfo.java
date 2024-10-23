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
 * Dynamic information about the state of a server.
 **/
public class ServerDynamicInfo implements java.lang.Cloneable,
                                          java.io.Serializable
{
    /**
     * The id of the server.
     **/
    public String id;

    /**
     * The state of the server.
     **/
    public ServerState state;

    /**
     * The process id of the server.
     **/
    public int pid;

    /**
     * Indicates whether the server is enabled.
     **/
    public boolean enabled;

    public ServerDynamicInfo()
    {
        this.id = "";
        this.state = ServerState.Inactive;
    }

    public ServerDynamicInfo(String id, ServerState state, int pid, boolean enabled)
    {
        this.id = id;
        this.state = state;
        this.pid = pid;
        this.enabled = enabled;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ServerDynamicInfo r = null;
        if(rhs instanceof ServerDynamicInfo)
        {
            r = (ServerDynamicInfo)rhs;
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
            if(this.state != r.state)
            {
                if(this.state == null || r.state == null || !this.state.equals(r.state))
                {
                    return false;
                }
            }
            if(this.pid != r.pid)
            {
                return false;
            }
            if(this.enabled != r.enabled)
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
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, "::IceGrid::ServerDynamicInfo");
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, id);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, state);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, pid);
        h_ = com.zeroc.Ice.HashUtil.hashAdd(h_, enabled);
        return h_;
    }

    public ServerDynamicInfo clone()
    {
        ServerDynamicInfo c = null;
        try
        {
            c = (ServerDynamicInfo)super.clone();
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
        ServerState.ice_write(ostr, this.state);
        ostr.writeInt(this.pid);
        ostr.writeBool(this.enabled);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.id = istr.readString();
        this.state = ServerState.ice_read(istr);
        this.pid = istr.readInt();
        this.enabled = istr.readBool();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ServerDynamicInfo v)
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

    static public ServerDynamicInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        ServerDynamicInfo v = new ServerDynamicInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ServerDynamicInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ServerDynamicInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ServerDynamicInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ServerDynamicInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ServerDynamicInfo _nullMarshalValue = new ServerDynamicInfo();

    /** @hidden */
    private static final long serialVersionUID = 4071667556904232171L;
}
