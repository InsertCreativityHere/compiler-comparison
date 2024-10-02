//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Internal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

package IceGrid;

public class InternalServerDescriptor extends com.zeroc.Ice.Value
{
    public InternalServerDescriptor()
    {
        this.id = "";
        this.application = "";
        this.uuid = "";
        this.sessionId = "";
        this.exe = "";
        this.pwd = "";
        this.user = "";
        this.activation = "";
        this.activationTimeout = "";
        this.deactivationTimeout = "";
    }

    public InternalServerDescriptor(String id, String application, String uuid, int revision, String sessionId, String exe, String pwd, String user, String activation, String activationTimeout, String deactivationTimeout, boolean processRegistered, String[] options, String[] envs, String[] logs, InternalAdapterDescriptor[] adapters, InternalDbEnvDescriptor[] dbEnvs, java.util.Map<java.lang.String, java.util.List<com.zeroc.IceGrid.PropertyDescriptor>> properties)
    {
        this.id = id;
        this.application = application;
        this.uuid = uuid;
        this.revision = revision;
        this.sessionId = sessionId;
        this.exe = exe;
        this.pwd = pwd;
        this.user = user;
        this.activation = activation;
        this.activationTimeout = activationTimeout;
        this.deactivationTimeout = deactivationTimeout;
        this.processRegistered = processRegistered;
        this.options = options;
        this.envs = envs;
        this.logs = logs;
        this.adapters = adapters;
        this.dbEnvs = dbEnvs;
        this.properties = properties;
    }

    public InternalServerDescriptor(String id, String application, String uuid, int revision, String sessionId, String exe, String pwd, String user, String activation, String activationTimeout, String deactivationTimeout, boolean processRegistered, String[] options, String[] envs, String[] logs, InternalAdapterDescriptor[] adapters, InternalDbEnvDescriptor[] dbEnvs, java.util.Map<java.lang.String, java.util.List<com.zeroc.IceGrid.PropertyDescriptor>> properties, String[] services)
    {
        this.id = id;
        this.application = application;
        this.uuid = uuid;
        this.revision = revision;
        this.sessionId = sessionId;
        this.exe = exe;
        this.pwd = pwd;
        this.user = user;
        this.activation = activation;
        this.activationTimeout = activationTimeout;
        this.deactivationTimeout = deactivationTimeout;
        this.processRegistered = processRegistered;
        this.options = options;
        this.envs = envs;
        this.logs = logs;
        this.adapters = adapters;
        this.dbEnvs = dbEnvs;
        this.properties = properties;
        setServices(services);
    }

    /**
     * The server ID.
     **/
    public String id;

    /**
     * The server application
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
     * The id of the session which allocated the server.
     **/
    public String sessionId;

    /**
     * The server executable.
     **/
    public String exe;

    /**
     * The server working directory.
     **/
    public String pwd;

    /**
     * The user ID to use to run the server.
     **/
    public String user;

    /**
     * The server activation mode.
     **/
    public String activation;

    /**
     * The server activation timeout.
     **/
    public String activationTimeout;

    /**
     * The server deactivation timeout.
     **/
    public String deactivationTimeout;

    /**
     * Specifies if a process object is registered.
     **/
    public boolean processRegistered;

    /**
     * The server command line options.
     **/
    public String[] options;

    /**
     * The server environment variables.
     **/
    public String[] envs;

    /**
     * The path of the server logs.
     **/
    public String[] logs;

    /**
     * The indirect object adapters.
     **/
    public InternalAdapterDescriptor[] adapters;

    public InternalDbEnvDescriptor[] dbEnvs;

    /**
     * The configuration files of the server.
     **/
    public java.util.Map<java.lang.String, java.util.List<com.zeroc.IceGrid.PropertyDescriptor>> properties;

    /**
     * IceBox service names
     **/
    private String[] services;
    private boolean _services;

    /**
     * IceBox service names
     **/
    public String[] getServices()
    {
        if(!_services)
        {
            throw new java.util.NoSuchElementException("services is not set");
        }
        return services;
    }

    /**
     * IceBox service names
     **/
    public void setServices(String[] services)
    {
        _services = true;
        this.services = services;
    }

    /**
     * IceBox service names
     **/
    public boolean hasServices()
    {
        return _services;
    }

    /**
     * IceBox service names
     **/
    public void clearServices()
    {
        _services = false;
    }

    /**
     * IceBox service names
     **/
    public void optionalServices(java.util.Optional<String[]> v)
    {
        if(v == null || !v.isPresent())
        {
            _services = false;
        }
        else
        {
            _services = true;
            services = v.get();
        }
    }

    /**
     * IceBox service names
     **/
    public java.util.Optional<String[]> optionalServices()
    {
        if(_services)
        {
            return java.util.Optional.of(services);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }

    public String getServices(int index)
    {
        if(!_services)
        {
            throw new java.util.NoSuchElementException("services is not set");
        }
        return this.services[index];
    }

    public void setServices(int index, String val)
    {
        if(!_services)
        {
            throw new java.util.NoSuchElementException("services is not set");
        }
        this.services[index] = val;
    }

    public InternalServerDescriptor clone()
    {
        return (InternalServerDescriptor)super.clone();
    }

    public static String ice_staticId()
    {
        return "::IceGrid::InternalServerDescriptor";
    }

    @Override
    public String ice_id()
    {
        return ice_staticId();
    }

    /** @hidden */
    private static final long serialVersionUID = -8608900988101044531L;

    /** @hidden */
    @Override
    protected void _iceWriteImpl(com.zeroc.Ice.OutputStream ostr_)
    {
        ostr_.startSlice(ice_staticId(), -1, true);
        ostr_.writeString(id);
        ostr_.writeString(application);
        ostr_.writeString(uuid);
        ostr_.writeInt(revision);
        ostr_.writeString(sessionId);
        ostr_.writeString(exe);
        ostr_.writeString(pwd);
        ostr_.writeString(user);
        ostr_.writeString(activation);
        ostr_.writeString(activationTimeout);
        ostr_.writeString(deactivationTimeout);
        ostr_.writeBool(processRegistered);
        ostr_.writeStringSeq(options);
        ostr_.writeStringSeq(envs);
        ostr_.writeStringSeq(logs);
        InternalAdapterDescriptorSeqHelper.write(ostr_, adapters);
        InternalDbEnvDescriptorSeqHelper.write(ostr_, dbEnvs);
        PropertyDescriptorSeqDictHelper.write(ostr_, properties);
        if(_services)
        {
            ostr_.writeStringSeq(1, services);
        }
        ostr_.endSlice();
    }

    /** @hidden */
    @Override
    protected void _iceReadImpl(com.zeroc.Ice.InputStream istr_)
    {
        istr_.startSlice();
        id = istr_.readString();
        application = istr_.readString();
        uuid = istr_.readString();
        revision = istr_.readInt();
        sessionId = istr_.readString();
        exe = istr_.readString();
        pwd = istr_.readString();
        user = istr_.readString();
        activation = istr_.readString();
        activationTimeout = istr_.readString();
        deactivationTimeout = istr_.readString();
        processRegistered = istr_.readBool();
        options = istr_.readStringSeq();
        envs = istr_.readStringSeq();
        logs = istr_.readStringSeq();
        adapters = InternalAdapterDescriptorSeqHelper.read(istr_);
        dbEnvs = InternalDbEnvDescriptorSeqHelper.read(istr_);
        properties = PropertyDescriptorSeqDictHelper.read(istr_);
        if(_services = istr_.readOptional(1, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr_.skip(4);
            services = istr_.readStringSeq();
        }
        istr_.endSlice();
    }
}
