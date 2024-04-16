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
 * An Ice server descriptor.
 **/
public class ServerDescriptor extends CommunicatorDescriptor
{
    public ServerDescriptor()
    {
        super();
        this.id = "";
        this.exe = "";
        this.iceVersion = "";
        this.pwd = "";
        this.activation = "";
        this.activationTimeout = "";
        this.deactivationTimeout = "";
        this.distrib = new DistributionDescriptor();
        this.user = "";
    }

    public ServerDescriptor(java.util.List<AdapterDescriptor> adapters, PropertySetDescriptor propertySet, String[] logs, String description, String id, String exe, String iceVersion, String pwd, java.util.List<java.lang.String> options, java.util.List<java.lang.String> envs, String activation, String activationTimeout, String deactivationTimeout, boolean applicationDistrib, DistributionDescriptor distrib, boolean allocatable, String user)
    {
        super(adapters, propertySet, logs, description);
        this.id = id;
        this.exe = exe;
        this.iceVersion = iceVersion;
        this.pwd = pwd;
        this.options = options;
        this.envs = envs;
        this.activation = activation;
        this.activationTimeout = activationTimeout;
        this.deactivationTimeout = deactivationTimeout;
        this.applicationDistrib = applicationDistrib;
        this.distrib = distrib;
        this.allocatable = allocatable;
        this.user = user;
    }

    /**
     * The server id.
     **/
    public String id;

    /**
     * The path of the server executable.
     **/
    public String exe;

    /**
     * The Ice version used by this server. This is only required if backward compatibility with servers using old
     * Ice versions is needed (otherwise the registry will assume the server is using the same Ice version).
     * For example "3.1.1", "3.2", "3.3.0".
     **/
    public String iceVersion;

    /**
     * The path to the server working directory.
     **/
    public String pwd;

    /**
     * The command line options to pass to the server executable.
     **/
    public java.util.List<java.lang.String> options;

    /**
     * The server environment variables.
     **/
    public java.util.List<java.lang.String> envs;

    /**
     * / The server activation mode (possible values are "on-demand" or "manual").
     **/
    public String activation;

    /**
     * The activation timeout (an integer value representing the number of seconds to wait for activation).
     **/
    public String activationTimeout;

    /**
     * The deactivation timeout (an integer value representing the number of seconds to wait for deactivation).
     **/
    public String deactivationTimeout;

    /**
     * Specifies if the server depends on the application distribution.
     **/
    public boolean applicationDistrib;

    /**
     * The distribution descriptor.
     **/
    public DistributionDescriptor distrib;

    /**
     * Specifies if the server is allocatable.
     **/
    public boolean allocatable;

    /**
     * The user account used to run the server.
     **/
    public String user;

    public ServerDescriptor clone()
    {
        return (ServerDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::ServerDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    public static final long serialVersionUID = -216704487721829626L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, false);
        ostr_.writeString(id);
        ostr_.writeString(exe);
        ostr_.writeString(iceVersion);
        ostr_.writeString(pwd);
        if(options == null)
        {
            ostr_.writeSize(0);
        }
        else
        {
            ostr_.writeSize(options.size());
            for(String elem : options)
            {
                ostr_.writeString(elem);
            }
        }
        if(envs == null)
        {
            ostr_.writeSize(0);
        }
        else
        {
            ostr_.writeSize(envs.size());
            for(String elem : envs)
            {
                ostr_.writeString(elem);
            }
        }
        ostr_.writeString(activation);
        ostr_.writeString(activationTimeout);
        ostr_.writeString(deactivationTimeout);
        ostr_.writeBool(applicationDistrib);
        DistributionDescriptor.ice_write(ostr_, distrib);
        ostr_.writeBool(allocatable);
        ostr_.writeString(user);
        ostr_.endSlice();
        super._iceWriteImpl(ostr_);
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        exe = istr_.readString();
        iceVersion = istr_.readString();
        pwd = istr_.readString();
        options = new java.util.LinkedList<String>();
        final int len0 = istr_.readAndCheckSeqSize(1);
        for(int i0 = 0; i0 < len0; i0++)
        {
            String elem;
            elem = istr_.readString();
            options.add(elem);
        }
        envs = new java.util.LinkedList<String>();
        final int len1 = istr_.readAndCheckSeqSize(1);
        for(int i1 = 0; i1 < len1; i1++)
        {
            String elem;
            elem = istr_.readString();
            envs.add(elem);
        }
        activation = istr_.readString();
        activationTimeout = istr_.readString();
        deactivationTimeout = istr_.readString();
        applicationDistrib = istr_.readBool();
        distrib = DistributionDescriptor.ice_read(istr_);
        allocatable = istr_.readBool();
        user = istr_.readString();
        istr_.endSlice();
        super._iceReadImpl(istr_);
    }
}
