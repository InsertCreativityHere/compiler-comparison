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
 * Information about a server managed by an IceGrid node.
 **/
public class ServerInfo implements java.lang.Cloneable,
                                   java.io.Serializable
{
    /**
     * The server application.
     **/
    public String application;

    /**
     * The application uuid.
     **/
    public String uuid;

    /**
     * The application revision.
     **/
    public int revision;

    /**
     * The server node.
     **/
    public String node;

    /**
     * The server descriptor.
     **/
    public ServerDescriptor descriptor;

    /**
     * The id of the session which allocated the server.
     **/
    public String sessionId;

    public ServerInfo()
    {
        this.application = "";
        this.uuid = "";
        this.node = "";
        this.sessionId = "";
    }

    public ServerInfo(String application, String uuid, int revision, String node, ServerDescriptor descriptor, String sessionId)
    {
        this.application = application;
        this.uuid = uuid;
        this.revision = revision;
        this.node = node;
        this.descriptor = descriptor;
        this.sessionId = sessionId;
    }

    public boolean equals(java.lang.Object rhs)
    {
        if(this == rhs)
        {
            return true;
        }
        ServerInfo r = null;
        if(rhs instanceof ServerInfo)
        {
            r = (ServerInfo)rhs;
        }

        if(r != null)
        {
            if(this.application != r.application)
            {
                if(this.application == null || r.application == null || !this.application.equals(r.application))
                {
                    return false;
                }
            }
            if(this.uuid != r.uuid)
            {
                if(this.uuid == null || r.uuid == null || !this.uuid.equals(r.uuid))
                {
                    return false;
                }
            }
            if(this.revision != r.revision)
            {
                return false;
            }
            if(this.node != r.node)
            {
                if(this.node == null || r.node == null || !this.node.equals(r.node))
                {
                    return false;
                }
            }
            if(this.descriptor != r.descriptor)
            {
                if(this.descriptor == null || r.descriptor == null || !this.descriptor.equals(r.descriptor))
                {
                    return false;
                }
            }
            if(this.sessionId != r.sessionId)
            {
                if(this.sessionId == null || r.sessionId == null || !this.sessionId.equals(r.sessionId))
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
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, "::IceGrid::ServerInfo");
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, application);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, uuid);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, revision);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, node);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, descriptor);
        h_ = com.zeroc.IceInternal.HashUtil.hashAdd(h_, sessionId);
        return h_;
    }

    public ServerInfo clone()
    {
        ServerInfo c = null;
        try
        {
            c = (ServerInfo)super.clone();
        }
        catch(CloneNotSupportedException ex)
        {
            assert false; // impossible
        }
        return c;
    }

    public void ice_writeMembers(com.zeroc.Ice.OutputStream ostr)
    {
        ostr.writeString(this.application);
        ostr.writeString(this.uuid);
        ostr.writeInt(this.revision);
        ostr.writeString(this.node);
        ostr.writeValue(this.descriptor);
        ostr.writeString(this.sessionId);
    }

    public void ice_readMembers(com.zeroc.Ice.InputStream istr)
    {
        this.application = istr.readString();
        this.uuid = istr.readString();
        this.revision = istr.readInt();
        this.node = istr.readString();
        istr.readValue(v -> descriptor = v, ServerDescriptor.class);
        this.sessionId = istr.readString();
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, ServerInfo v)
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

    static public ServerInfo ice_read(com.zeroc.Ice.InputStream istr)
    {
        ServerInfo v = new ServerInfo();
        v.ice_readMembers(istr);
        return v;
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<ServerInfo> v)
    {
        if(v != null && v.isPresent())
        {
            ice_write(ostr, tag, v.get());
        }
    }

    static public void ice_write(com.zeroc.Ice.OutputStream ostr, int tag, ServerInfo v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            ice_write(ostr, v);
            ostr.endSize(pos);
        }
    }

    static public java.util.Optional<ServerInfo> ice_read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            return java.util.Optional.of(ServerInfo.ice_read(istr));
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    private static final ServerInfo _nullMarshalValue = new ServerInfo();

    /** @hidden */
    public static final long serialVersionUID = -7406970032341853056L;
}
