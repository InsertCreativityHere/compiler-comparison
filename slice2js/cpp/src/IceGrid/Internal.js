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

/* eslint-disable */
/* jshint ignore: start */

import { Glacier2, 
import { Ice, 
import { IceGrid } from "ice";


export const IceGrid = {};

IceGrid.InternalDbEnvDescriptor = class extends Ice.Value
{
    constructor(name = "", properties = null)
    {
        super();
        this.name = name;
        this.properties = properties;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.name);
        IceGrid.PropertyDescriptorSeqHelper.write(ostr, this.properties);
    }

    _iceReadMemberImpl(istr)
    {
        this.name = istr.readString();
        this.properties = IceGrid.PropertyDescriptorSeqHelper.read(istr);
    }
};

Ice.defineValue(IceGrid.InternalDbEnvDescriptor, "::IceGrid::InternalDbEnvDescriptor");
Ice.TypeRegistry.declareValueType("IceGrid.InternalDbEnvDescriptor", IceGrid.InternalDbEnvDescriptor);

IceGrid.InternalDbEnvDescriptorSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "IceGrid.InternalDbEnvDescriptor");

IceGrid.InternalAdapterDescriptor = class extends Ice.Value
{
    constructor(id = "", serverLifetime = false)
    {
        super();
        this.id = id;
        this.serverLifetime = serverLifetime;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.id);
        ostr.writeBool(this.serverLifetime);
    }

    _iceReadMemberImpl(istr)
    {
        this.id = istr.readString();
        this.serverLifetime = istr.readBool();
    }
};

Ice.defineValue(IceGrid.InternalAdapterDescriptor, "::IceGrid::InternalAdapterDescriptor");
Ice.TypeRegistry.declareValueType("IceGrid.InternalAdapterDescriptor", IceGrid.InternalAdapterDescriptor);

IceGrid.InternalAdapterDescriptorSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ObjectHelper, false, "IceGrid.InternalAdapterDescriptor");

[IceGrid.PropertyDescriptorSeqDict, IceGrid.PropertyDescriptorSeqDictHelper] = Ice.defineDictionary(Ice.StringHelper, IceGrid.PropertyDescriptorSeqHelper, false, undefined);

IceGrid.InternalServerDescriptor = class extends Ice.Value
{
    constructor(id = "", application = "", uuid = "", revision = 0, sessionId = "", exe = "", pwd = "", user = "", activation = "", activationTimeout = "", deactivationTimeout = "", processRegistered = false, options = null, envs = null, logs = null, adapters = null, dbEnvs = null, properties = null, services = undefined)
    {
        super();
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
        this.services = services;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.id);
        ostr.writeString(this.application);
        ostr.writeString(this.uuid);
        ostr.writeInt(this.revision);
        ostr.writeString(this.sessionId);
        ostr.writeString(this.exe);
        ostr.writeString(this.pwd);
        ostr.writeString(this.user);
        ostr.writeString(this.activation);
        ostr.writeString(this.activationTimeout);
        ostr.writeString(this.deactivationTimeout);
        ostr.writeBool(this.processRegistered);
        Ice.StringSeqHelper.write(ostr, this.options);
        Ice.StringSeqHelper.write(ostr, this.envs);
        Ice.StringSeqHelper.write(ostr, this.logs);
        IceGrid.InternalAdapterDescriptorSeqHelper.write(ostr, this.adapters);
        IceGrid.InternalDbEnvDescriptorSeqHelper.write(ostr, this.dbEnvs);
        IceGrid.PropertyDescriptorSeqDictHelper.write(ostr, this.properties);
        Ice.StringSeqHelper.writeOptional(ostr, 1, this.services);
    }

    _iceReadMemberImpl(istr)
    {
        this.id = istr.readString();
        this.application = istr.readString();
        this.uuid = istr.readString();
        this.revision = istr.readInt();
        this.sessionId = istr.readString();
        this.exe = istr.readString();
        this.pwd = istr.readString();
        this.user = istr.readString();
        this.activation = istr.readString();
        this.activationTimeout = istr.readString();
        this.deactivationTimeout = istr.readString();
        this.processRegistered = istr.readBool();
        this.options = Ice.StringSeqHelper.read(istr);
        this.envs = Ice.StringSeqHelper.read(istr);
        this.logs = Ice.StringSeqHelper.read(istr);
        this.adapters = IceGrid.InternalAdapterDescriptorSeqHelper.read(istr);
        this.dbEnvs = IceGrid.InternalDbEnvDescriptorSeqHelper.read(istr);
        this.properties = IceGrid.PropertyDescriptorSeqDictHelper.read(istr);
        this.services = Ice.StringSeqHelper.readOptional(istr, 1);
    }
};

Ice.defineValue(IceGrid.InternalServerDescriptor, "::IceGrid::InternalServerDescriptor");
Ice.TypeRegistry.declareValueType("IceGrid.InternalServerDescriptor", IceGrid.InternalServerDescriptor);

/**
 *  This exception is raised if an adapter is active.
 **/
IceGrid.AdapterActiveException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::IceGrid::AdapterActiveException";
    }

    _mostDerivedType()
    {
        return IceGrid.AdapterActiveException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceGrid.AdapterActiveException",
    IceGrid.AdapterActiveException);

IceGrid.AdapterNotActiveException = class extends Ice.UserException
{
    constructor(activatable = false, _cause = "")
    {
        super(_cause);
        this.activatable = activatable;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::IceGrid::AdapterNotActiveException";
    }

    _mostDerivedType()
    {
        return IceGrid.AdapterNotActiveException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeBool(this.activatable);
    }

    _readMemberImpl(istr)
    {
        this.activatable = istr.readBool();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceGrid.AdapterNotActiveException",
    IceGrid.AdapterNotActiveException);

const iceC_IceGrid_Adapter_ids = [
    "::Ice::Object",
    "::IceGrid::Adapter"
];

IceGrid.Adapter = class extends Ice.Object
{
};

IceGrid.AdapterPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.AdapterPrx", IceGrid.AdapterPrx);

Ice.defineOperations(
    IceGrid.Adapter,
    IceGrid.AdapterPrx,
    iceC_IceGrid_Adapter_ids,
    "::IceGrid::Adapter",
    {
        "activate": [, , , [9], , , , , ],
        "getDirectProxy": [, 2, , [9], , ,
        [
            IceGrid.AdapterNotActiveException
        ], , ],
        "setDirectProxy": [, , , , [[9]], ,
        [
            IceGrid.AdapterActiveException
        ], , ]
    });

/**
 *  This exception is raised if an adapter with the same name already exists.
 **/
IceGrid.AdapterExistsException = class extends Ice.UserException
{
    constructor(id = "", _cause = "")
    {
        super(_cause);
        this.id = id;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::IceGrid::AdapterExistsException";
    }

    _mostDerivedType()
    {
        return IceGrid.AdapterExistsException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.id);
    }

    _readMemberImpl(istr)
    {
        this.id = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceGrid.AdapterExistsException",
    IceGrid.AdapterExistsException);

[IceGrid.AdapterPrxDict, IceGrid.AdapterPrxDictHelper] = Ice.defineDictionary(Ice.StringHelper, IceGrid.AdapterPrx, false, undefined);

const iceC_IceGrid_FileReader_ids = [
    "::Ice::Object",
    "::IceGrid::FileReader"
];

IceGrid.FileReader = class extends Ice.Object
{
};

IceGrid.FileReaderPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.FileReaderPrx", IceGrid.FileReaderPrx);

Ice.defineOperations(
    IceGrid.FileReader,
    IceGrid.FileReaderPrx,
    iceC_IceGrid_FileReader_ids,
    "::IceGrid::FileReader",
    {
        "getOffsetFromEnd": [, 2, , [4], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException
        ], , ],
        "read": [, 2, , [1], [[7], [4], [3]], [[4], [Ice.StringSeqHelper]],
        [
            IceGrid.FileNotAvailableException
        ], , ]
    });

const iceC_IceGrid_Server_ids = [
    "::Ice::Object",
    "::IceGrid::FileReader",
    "::IceGrid::Server"
];

IceGrid.Server = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            IceGrid.FileReader
        ];
    }
};

IceGrid.ServerPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            IceGrid.FileReaderPrx];
    }
};
Ice.TypeRegistry.declareProxyType("IceGrid.ServerPrx", IceGrid.ServerPrx);

Ice.defineOperations(
    IceGrid.Server,
    IceGrid.ServerPrx,
    iceC_IceGrid_Server_ids,
    "::IceGrid::Server",
    {
        "start": [, , , , , ,
        [
            IceGrid.ServerStartException
        ], , ],
        "stop": [, , , , , ,
        [
            IceGrid.ServerStopException
        ], , ],
        "checkUpdate": [, , , [1], [["IceGrid.InternalServerDescriptor", true], [1]], ,
        [
            IceGrid.DeploymentException
        ], true, ],
        "setEnabled": [, , , , [[1]], , , , ],
        "isEnabled": [, 2, , [1], , , , , ],
        "sendSignal": [, , , , [[7]], ,
        [
            IceGrid.BadSignalException
        ], , ],
        "writeMessage": [, , , , [[7], [3]], , , , ],
        "getState": [, 2, , [IceGrid.ServerState._helper], , , , , ],
        "getPid": [, 2, , [3], , , , , ],
        "setProcess": [, , , , [["Ice.ProcessPrx"]], , , , ]
    });

IceGrid.InternalRegistryPrxSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.InternalRegistryPrx, false);

const iceC_IceGrid_ReplicaObserver_ids = [
    "::Ice::Object",
    "::IceGrid::ReplicaObserver"
];

IceGrid.ReplicaObserver = class extends Ice.Object
{
};

IceGrid.ReplicaObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.ReplicaObserverPrx", IceGrid.ReplicaObserverPrx);

Ice.defineOperations(
    IceGrid.ReplicaObserver,
    IceGrid.ReplicaObserverPrx,
    iceC_IceGrid_ReplicaObserver_ids,
    "::IceGrid::ReplicaObserver",
    {
        "replicaInit": [, , , , [[IceGrid.InternalRegistryPrxSeqHelper]], , , , ],
        "replicaAdded": [, , , , [["IceGrid.InternalRegistryPrx"]], , , , ],
        "replicaRemoved": [, , , , [["IceGrid.InternalRegistryPrx"]], , , , ]
    });

const iceC_IceGrid_Node_ids = [
    "::Ice::Object",
    "::IceGrid::FileReader",
    "::IceGrid::Node",
    "::IceGrid::ReplicaObserver"
];

IceGrid.Node = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            IceGrid.FileReader,
            IceGrid.ReplicaObserver
        ];
    }
};

IceGrid.NodePrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            IceGrid.FileReaderPrx,
            IceGrid.ReplicaObserverPrx];
    }
};
Ice.TypeRegistry.declareProxyType("IceGrid.NodePrx", IceGrid.NodePrx);

Ice.defineOperations(
    IceGrid.Node,
    IceGrid.NodePrx,
    iceC_IceGrid_Node_ids,
    "::IceGrid::Node",
    {
        "loadServer": [, 2, , ["IceGrid.ServerPrx"], [["IceGrid.InternalServerDescriptor", true], [7]], [[IceGrid.AdapterPrxDictHelper], [3], [3]],
        [
            IceGrid.DeploymentException
        ], true, ],
        "loadServerWithoutRestart": [, 2, , ["IceGrid.ServerPrx"], [["IceGrid.InternalServerDescriptor", true], [7]], [[IceGrid.AdapterPrxDictHelper], [3], [3]],
        [
            IceGrid.DeploymentException
        ], true, ],
        "destroyServer": [, 2, , , [[7], [7], [3], [7]], ,
        [
            IceGrid.DeploymentException
        ], , ],
        "destroyServerWithoutRestart": [, 2, , , [[7], [7], [3], [7]], ,
        [
            IceGrid.DeploymentException
        ], , ],
        "registerWithReplica": [, , , , [["IceGrid.InternalRegistryPrx"]], , , , ],
        "getName": [, 2, , [7], , , , , ],
        "getHostname": [, 2, , [7], , , , , ],
        "getLoad": [, 2, , [IceGrid.LoadInfo], , , , , ],
        "getProcessorSocketCount": [, 2, , [3], , , , , ],
        "shutdown": [, 2, , , , , , , ]
    });

IceGrid.NodePrxSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.NodePrx, false);

/**
 *  This exception is raised if a node is already registered and active.
 **/
IceGrid.NodeActiveException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::IceGrid::NodeActiveException";
    }

    _mostDerivedType()
    {
        return IceGrid.NodeActiveException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceGrid.NodeActiveException",
    IceGrid.NodeActiveException);

const iceC_IceGrid_NodeSession_ids = [
    "::Ice::Object",
    "::IceGrid::NodeSession"
];

IceGrid.NodeSession = class extends Ice.Object
{
};

IceGrid.NodeSessionPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.NodeSessionPrx", IceGrid.NodeSessionPrx);

Ice.defineOperations(
    IceGrid.NodeSession,
    IceGrid.NodeSessionPrx,
    iceC_IceGrid_NodeSession_ids,
    "::IceGrid::NodeSession",
    {
        "keepAlive": [, , , , [[IceGrid.LoadInfo]], , , , ],
        "setReplicaObserver": [, , , , [["IceGrid.ReplicaObserverPrx"]], , , , ],
        "getTimeout": [, 2, , [3], , , , , ],
        "getObserver": [, 2, , ["IceGrid.NodeObserverPrx"], , , , , ],
        "loadServers": [, 2, , , , , , , ],
        "getServers": [, 2, , [Ice.StringSeqHelper], , , , , ],
        "waitForApplicationUpdate": [, , , , [[7], [3]], , , , ],
        "destroy": [, , , , , , , , ]
    });

/**
 *  This exception is raised if a replica is already registered and active.
 **/
IceGrid.ReplicaActiveException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::IceGrid::ReplicaActiveException";
    }

    _mostDerivedType()
    {
        return IceGrid.ReplicaActiveException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceGrid.ReplicaActiveException",
    IceGrid.ReplicaActiveException);

IceGrid.TopicName = Ice.defineEnum([
    ['RegistryObserver', 0], ['NodeObserver', 1], ['ApplicationObserver', 2], ['AdapterObserver', 3], ['ObjectObserver', 4]]);

const iceC_IceGrid_DatabaseObserver_ids = [
    "::Ice::Object",
    "::IceGrid::AdapterObserver",
    "::IceGrid::ApplicationObserver",
    "::IceGrid::DatabaseObserver",
    "::IceGrid::ObjectObserver"
];

IceGrid.DatabaseObserver = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            IceGrid.ApplicationObserver,
            IceGrid.ObjectObserver,
            IceGrid.AdapterObserver
        ];
    }
};

IceGrid.DatabaseObserverPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            IceGrid.ApplicationObserverPrx,
            IceGrid.ObjectObserverPrx,
            IceGrid.AdapterObserverPrx];
    }
};
Ice.TypeRegistry.declareProxyType("IceGrid.DatabaseObserverPrx", IceGrid.DatabaseObserverPrx);

Ice.defineOperations(
    IceGrid.DatabaseObserver,
    IceGrid.DatabaseObserverPrx,
    iceC_IceGrid_DatabaseObserver_ids,
    "::IceGrid::DatabaseObserver");

[IceGrid.StringLongDict, IceGrid.StringLongDictHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.LongHelper, false, undefined);

const iceC_IceGrid_ReplicaSession_ids = [
    "::Ice::Object",
    "::IceGrid::ReplicaSession"
];

IceGrid.ReplicaSession = class extends Ice.Object
{
};

IceGrid.ReplicaSessionPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.ReplicaSessionPrx", IceGrid.ReplicaSessionPrx);

Ice.defineOperations(
    IceGrid.ReplicaSession,
    IceGrid.ReplicaSessionPrx,
    iceC_IceGrid_ReplicaSession_ids,
    "::IceGrid::ReplicaSession",
    {
        "keepAlive": [, , , , , , , , ],
        "getTimeout": [, 2, , [3], , , , , ],
        "setDatabaseObserver": [, 2, , , [["IceGrid.DatabaseObserverPrx"], [IceGrid.StringLongDictHelper, , 1]], ,
        [
            IceGrid.DeploymentException,
            IceGrid.ObserverAlreadyRegisteredException
        ], , ],
        "setEndpoints": [, 2, , , [[IceGrid.StringObjectProxyDictHelper]], , , , ],
        "registerWellKnownObjects": [, 2, , , [[IceGrid.ObjectInfoSeqHelper]], , , , ],
        "setAdapterDirectProxy": [, 2, , , [[7], [7], [9]], ,
        [
            IceGrid.AdapterNotExistException,
            IceGrid.AdapterExistsException
        ], , ],
        "receivedUpdate": [, , , , [[IceGrid.TopicName._helper], [3], [7]], , , , ],
        "destroy": [, , , , , , , , ]
    });

/**
 *  Information about an IceGrid node.
 **/
IceGrid.InternalNodeInfo = class extends Ice.Value
{
    constructor(name = "", os = "", hostname = "", release = "", version = "", machine = "", nProcessors = 0, dataDir = "")
    {
        super();
        this.name = name;
        this.os = os;
        this.hostname = hostname;
        this.release = release;
        this.version = version;
        this.machine = machine;
        this.nProcessors = nProcessors;
        this.dataDir = dataDir;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.name);
        ostr.writeString(this.os);
        ostr.writeString(this.hostname);
        ostr.writeString(this.release);
        ostr.writeString(this.version);
        ostr.writeString(this.machine);
        ostr.writeInt(this.nProcessors);
        ostr.writeString(this.dataDir);
    }

    _iceReadMemberImpl(istr)
    {
        this.name = istr.readString();
        this.os = istr.readString();
        this.hostname = istr.readString();
        this.release = istr.readString();
        this.version = istr.readString();
        this.machine = istr.readString();
        this.nProcessors = istr.readInt();
        this.dataDir = istr.readString();
    }
};

Ice.defineValue(IceGrid.InternalNodeInfo, "::IceGrid::InternalNodeInfo");
Ice.TypeRegistry.declareValueType("IceGrid.InternalNodeInfo", IceGrid.InternalNodeInfo);

/**
 *  Information about an IceGrid registry replica.
 **/
IceGrid.InternalReplicaInfo = class extends Ice.Value
{
    constructor(name = "", hostname = "")
    {
        super();
        this.name = name;
        this.hostname = hostname;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.name);
        ostr.writeString(this.hostname);
    }

    _iceReadMemberImpl(istr)
    {
        this.name = istr.readString();
        this.hostname = istr.readString();
    }
};

Ice.defineValue(IceGrid.InternalReplicaInfo, "::IceGrid::InternalReplicaInfo");
Ice.TypeRegistry.declareValueType("IceGrid.InternalReplicaInfo", IceGrid.InternalReplicaInfo);

const iceC_IceGrid_InternalRegistry_ids = [
    "::Ice::Object",
    "::IceGrid::FileReader",
    "::IceGrid::InternalRegistry"
];

IceGrid.InternalRegistry = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            IceGrid.FileReader
        ];
    }
};

IceGrid.InternalRegistryPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            IceGrid.FileReaderPrx];
    }
};
Ice.TypeRegistry.declareProxyType("IceGrid.InternalRegistryPrx", IceGrid.InternalRegistryPrx);

Ice.defineOperations(
    IceGrid.InternalRegistry,
    IceGrid.InternalRegistryPrx,
    iceC_IceGrid_InternalRegistry_ids,
    "::IceGrid::InternalRegistry",
    {
        "registerNode": [, , , ["IceGrid.NodeSessionPrx"], [["IceGrid.InternalNodeInfo", true], ["IceGrid.NodePrx"], [IceGrid.LoadInfo]], ,
        [
            IceGrid.NodeActiveException,
            IceGrid.PermissionDeniedException
        ], true, ],
        "registerReplica": [, , , ["IceGrid.ReplicaSessionPrx"], [["IceGrid.InternalReplicaInfo", true], ["IceGrid.InternalRegistryPrx"]], ,
        [
            IceGrid.ReplicaActiveException,
            IceGrid.PermissionDeniedException
        ], true, ],
        "registerWithReplica": [, , , , [["IceGrid.InternalRegistryPrx"]], , , , ],
        "getNodes": [, 2, , [IceGrid.NodePrxSeqHelper], , , , , ],
        "getReplicas": [, 2, , [IceGrid.InternalRegistryPrxSeqHelper], , , , , ],
        "getApplications": [, 2, , [IceGrid.ApplicationInfoSeqHelper], , [[4]], , , true],
        "getAdapters": [, 2, , [IceGrid.AdapterInfoSeqHelper], , [[4]], , , ],
        "getObjects": [, 2, , [IceGrid.ObjectInfoSeqHelper], , [[4]], , , ],
        "shutdown": [, 2, , , , , , , ]
    });
