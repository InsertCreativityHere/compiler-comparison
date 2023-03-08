//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Admin.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

/* slice2js browser-bundle-skip */
const _ModuleRegistry = require("../Ice/ModuleRegistry").Ice._ModuleRegistry;
const Glacier2 = require("../Glacier2/Session").Glacier2;
require("../Ice/Object");
require("../Ice/Value");
require("../Ice/ObjectPrx");
require("../Ice/Operation");
require("../Ice/Struct");
require("../Ice/EnumBase");
require("../Ice/Long");
require("../Ice/HashMap");
require("../Ice/HashUtil");
require("../Ice/ArrayUtil");
require("../Ice/StreamHelpers");
require("../Ice/Identity");
require("../Ice/BuiltinSequences");
require("../Ice/Properties");
require("../Ice/SliceChecksumDict");
const Ice = _ModuleRegistry.module("Ice");

require("../Exception");
require("../Descriptor");
const IceGrid = _ModuleRegistry.module("IceGrid");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */

/**
 * An enumeration representing the state of the server.
 *
 **/
IceGrid.ServerState = Slice.defineEnum([
    ['Inactive', 0], ['Activating', 1], ['ActivationTimedOut', 2], ['Active', 3], ['Deactivating', 4],
    ['Destroying', 5], ['Destroyed', 6]]);

Slice.defineDictionary(IceGrid, "StringObjectProxyDict", "StringObjectProxyDictHelper", "Ice.StringHelper", "Ice.ObjectPrx", false, undefined, undefined);

/**
 * Information about an Ice object.
 *
 **/
IceGrid.ObjectInfo = class
{
    constructor(proxy = null, type = "")
    {
        this.proxy = proxy;
        this.type = type;
    }

    _write(ostr)
    {
        ostr.writeProxy(this.proxy);
        ostr.writeString(this.type);
    }

    _read(istr)
    {
        this.proxy = istr.readProxy();
        this.type = istr.readString();
    }

    static get minWireSize()
    {
        return  3;
    }
};

Slice.defineStruct(IceGrid.ObjectInfo, false, true);

Slice.defineSequence(IceGrid, "ObjectInfoSeqHelper", "IceGrid.ObjectInfo", false);

/**
 * Information about an adapter registered with the IceGrid registry.
 *
 **/
IceGrid.AdapterInfo = class
{
    constructor(id = "", proxy = null, replicaGroupId = "")
    {
        this.id = id;
        this.proxy = proxy;
        this.replicaGroupId = replicaGroupId;
    }

    _write(ostr)
    {
        ostr.writeString(this.id);
        ostr.writeProxy(this.proxy);
        ostr.writeString(this.replicaGroupId);
    }

    _read(istr)
    {
        this.id = istr.readString();
        this.proxy = istr.readProxy();
        this.replicaGroupId = istr.readString();
    }

    static get minWireSize()
    {
        return  4;
    }
};

Slice.defineStruct(IceGrid.AdapterInfo, false, true);

Slice.defineSequence(IceGrid, "AdapterInfoSeqHelper", "IceGrid.AdapterInfo", false);

/**
 * Information about a server managed by an IceGrid node.
 *
 **/
IceGrid.ServerInfo = class
{
    constructor(application = "", uuid = "", revision = 0, node = "", descriptor = null, sessionId = "")
    {
        this.application = application;
        this.uuid = uuid;
        this.revision = revision;
        this.node = node;
        this.descriptor = descriptor;
        this.sessionId = sessionId;
    }

    _write(ostr)
    {
        ostr.writeString(this.application);
        ostr.writeString(this.uuid);
        ostr.writeInt(this.revision);
        ostr.writeString(this.node);
        ostr.writeValue(this.descriptor);
        ostr.writeString(this.sessionId);
    }

    _read(istr)
    {
        this.application = istr.readString();
        this.uuid = istr.readString();
        this.revision = istr.readInt();
        this.node = istr.readString();
        istr.readValue(obj => this.descriptor = obj, IceGrid.ServerDescriptor);
        this.sessionId = istr.readString();
    }

    static get minWireSize()
    {
        return  9;
    }
};

Slice.defineStruct(IceGrid.ServerInfo, false, true);

/**
 * Information about an IceGrid node.
 *
 **/
IceGrid.NodeInfo = class
{
    constructor(name = "", os = "", hostname = "", release = "", version = "", machine = "", nProcessors = 0, dataDir = "")
    {
        this.name = name;
        this.os = os;
        this.hostname = hostname;
        this.release = release;
        this.version = version;
        this.machine = machine;
        this.nProcessors = nProcessors;
        this.dataDir = dataDir;
    }

    _write(ostr)
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

    _read(istr)
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

    static get minWireSize()
    {
        return  11;
    }
};

Slice.defineStruct(IceGrid.NodeInfo, true, true);

/**
 * Information about an IceGrid registry replica.
 *
 **/
IceGrid.RegistryInfo = class
{
    constructor(name = "", hostname = "")
    {
        this.name = name;
        this.hostname = hostname;
    }

    _write(ostr)
    {
        ostr.writeString(this.name);
        ostr.writeString(this.hostname);
    }

    _read(istr)
    {
        this.name = istr.readString();
        this.hostname = istr.readString();
    }

    static get minWireSize()
    {
        return  2;
    }
};

Slice.defineStruct(IceGrid.RegistryInfo, true, true);

Slice.defineSequence(IceGrid, "RegistryInfoSeqHelper", "IceGrid.RegistryInfo", false);

/**
 * Information about the load of a node.
 *
 **/
IceGrid.LoadInfo = class
{
    constructor(avg1 = 0.0, avg5 = 0.0, avg15 = 0.0)
    {
        this.avg1 = avg1;
        this.avg5 = avg5;
        this.avg15 = avg15;
    }

    _write(ostr)
    {
        ostr.writeFloat(this.avg1);
        ostr.writeFloat(this.avg5);
        ostr.writeFloat(this.avg15);
    }

    _read(istr)
    {
        this.avg1 = istr.readFloat();
        this.avg5 = istr.readFloat();
        this.avg15 = istr.readFloat();
    }

    static get minWireSize()
    {
        return  12;
    }
};

Slice.defineStruct(IceGrid.LoadInfo, false, false);

/**
 * Information about an IceGrid application.
 *
 **/
IceGrid.ApplicationInfo = class
{
    constructor(uuid = "", createTime = new Ice.Long(0, 0), createUser = "", updateTime = new Ice.Long(0, 0), updateUser = "", revision = 0, descriptor = new IceGrid.ApplicationDescriptor())
    {
        this.uuid = uuid;
        this.createTime = createTime;
        this.createUser = createUser;
        this.updateTime = updateTime;
        this.updateUser = updateUser;
        this.revision = revision;
        this.descriptor = descriptor;
    }

    _write(ostr)
    {
        ostr.writeString(this.uuid);
        ostr.writeLong(this.createTime);
        ostr.writeString(this.createUser);
        ostr.writeLong(this.updateTime);
        ostr.writeString(this.updateUser);
        ostr.writeInt(this.revision);
        IceGrid.ApplicationDescriptor.write(ostr, this.descriptor);
    }

    _read(istr)
    {
        this.uuid = istr.readString();
        this.createTime = istr.readLong();
        this.createUser = istr.readString();
        this.updateTime = istr.readLong();
        this.updateUser = istr.readString();
        this.revision = istr.readInt();
        this.descriptor = IceGrid.ApplicationDescriptor.read(istr, this.descriptor);
    }

    static get minWireSize()
    {
        return  33;
    }
};

Slice.defineStruct(IceGrid.ApplicationInfo, false, true);

Slice.defineSequence(IceGrid, "ApplicationInfoSeqHelper", "IceGrid.ApplicationInfo", false);

/**
 * Information about updates to an IceGrid application.
 *
 **/
IceGrid.ApplicationUpdateInfo = class
{
    constructor(updateTime = new Ice.Long(0, 0), updateUser = "", revision = 0, descriptor = new IceGrid.ApplicationUpdateDescriptor())
    {
        this.updateTime = updateTime;
        this.updateUser = updateUser;
        this.revision = revision;
        this.descriptor = descriptor;
    }

    _write(ostr)
    {
        ostr.writeLong(this.updateTime);
        ostr.writeString(this.updateUser);
        ostr.writeInt(this.revision);
        IceGrid.ApplicationUpdateDescriptor.write(ostr, this.descriptor);
    }

    _read(istr)
    {
        this.updateTime = istr.readLong();
        this.updateUser = istr.readString();
        this.revision = istr.readInt();
        this.descriptor = IceGrid.ApplicationUpdateDescriptor.read(istr, this.descriptor);
    }

    static get minWireSize()
    {
        return  28;
    }
};

Slice.defineStruct(IceGrid.ApplicationUpdateInfo, false, true);

const iceC_IceGrid_Admin_ids = [
    "::Ice::Object",
    "::IceGrid::Admin"
];

/**
 * The IceGrid administrative interface.
 * <p class="Warning">Allowing access to this interface
 * is a security risk! Please see the IceGrid documentation
 * for further information.
 *
 **/
IceGrid.Admin = class extends Ice.Object
{
};

IceGrid.AdminPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.Admin, IceGrid.AdminPrx, iceC_IceGrid_Admin_ids, 1,
{
    "addApplication": [, , , , , [[IceGrid.ApplicationDescriptor]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.DeploymentException
    ], true, ],
    "syncApplication": [, , , , , [[IceGrid.ApplicationDescriptor]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.ApplicationNotExistException,
        IceGrid.DeploymentException
    ], true, ],
    "updateApplication": [, , , , , [[IceGrid.ApplicationUpdateDescriptor]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.ApplicationNotExistException,
        IceGrid.DeploymentException
    ], true, ],
    "syncApplicationWithoutRestart": [, , , , , [[IceGrid.ApplicationDescriptor]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.ApplicationNotExistException,
        IceGrid.DeploymentException
    ], true, ],
    "updateApplicationWithoutRestart": [, , , , , [[IceGrid.ApplicationUpdateDescriptor]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.ApplicationNotExistException,
        IceGrid.DeploymentException
    ], true, ],
    "removeApplication": [, , , , , [[7]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.ApplicationNotExistException,
        IceGrid.DeploymentException
    ], , ],
    "instantiateServer": [, , , , , [[7], [7], [IceGrid.ServerInstanceDescriptor]], ,
    [
        IceGrid.AccessDeniedException,
        IceGrid.ApplicationNotExistException,
        IceGrid.DeploymentException
    ], , ],
    "patchApplication": [, , , , , [[7], [1]], ,
    [
        IceGrid.ApplicationNotExistException,
        IceGrid.PatchException
    ], , ],
    "getApplicationInfo": [, 2, 1, , [IceGrid.ApplicationInfo], [[7]], ,
    [
        IceGrid.ApplicationNotExistException
    ], , true],
    "getDefaultApplicationDescriptor": [, 2, 1, , [IceGrid.ApplicationDescriptor], , ,
    [
        IceGrid.DeploymentException
    ], , true],
    "getAllApplicationNames": [, 2, 1, , ["Ice.StringSeqHelper"], , , , , ],
    "getServerInfo": [, 2, 1, , [IceGrid.ServerInfo], [[7]], ,
    [
        IceGrid.ServerNotExistException
    ], , true],
    "getServerState": [, 2, 1, , [IceGrid.ServerState._helper], [[7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "getServerPid": [, 2, 1, , [3], [[7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "getServerAdminCategory": [, 2, 2, , [7], , , , , ],
    "getServerAdmin": [, 2, 2, , [9], [[7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "enableServer": [, 2, 2, , , [[7], [1]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "isServerEnabled": [, 2, 1, , [1], [[7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "startServer": [, , , , , [[7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException,
        IceGrid.ServerStartException
    ], , ],
    "stopServer": [, , , , , [[7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException,
        IceGrid.ServerStopException
    ], , ],
    "patchServer": [, , , , , [[7], [1]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.PatchException,
        IceGrid.ServerNotExistException
    ], , ],
    "sendSignal": [, , , , , [[7], [7]], ,
    [
        IceGrid.BadSignalException,
        IceGrid.DeploymentException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "getAllServerIds": [, 2, 1, , ["Ice.StringSeqHelper"], , , , , ],
    "getAdapterInfo": [, 2, 1, , ["IceGrid.AdapterInfoSeqHelper"], [[7]], ,
    [
        IceGrid.AdapterNotExistException
    ], , ],
    "removeAdapter": [, , , , , [[7]], ,
    [
        IceGrid.AdapterNotExistException,
        IceGrid.DeploymentException
    ], , ],
    "getAllAdapterIds": [, 2, 1, , ["Ice.StringSeqHelper"], , , , , ],
    "addObject": [, , , , , [[9]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.ObjectExistsException
    ], , ],
    "updateObject": [, , , , , [[9]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.ObjectNotRegisteredException
    ], , ],
    "addObjectWithType": [, , , , , [[9], [7]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.ObjectExistsException
    ], , ],
    "removeObject": [, , , , , [[Ice.Identity]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.ObjectNotRegisteredException
    ], , ],
    "getObjectInfo": [, 2, 1, , [IceGrid.ObjectInfo], [[Ice.Identity]], ,
    [
        IceGrid.ObjectNotRegisteredException
    ], , ],
    "getObjectInfosByType": [, 2, 1, , ["IceGrid.ObjectInfoSeqHelper"], [[7]], , , , ],
    "getAllObjectInfos": [, 2, 1, , ["IceGrid.ObjectInfoSeqHelper"], [[7]], , , , ],
    "pingNode": [, 2, 1, , [1], [[7]], ,
    [
        IceGrid.NodeNotExistException
    ], , ],
    "getNodeLoad": [, 2, 1, , [IceGrid.LoadInfo], [[7]], ,
    [
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "getNodeInfo": [, 2, 1, , [IceGrid.NodeInfo], [[7]], ,
    [
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "getNodeAdmin": [, 2, 2, , [9], [[7]], ,
    [
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "getNodeProcessorSocketCount": [, 2, 1, , [3], [[7]], ,
    [
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "shutdownNode": [, , , , , [[7]], ,
    [
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "getNodeHostname": [, 2, 1, , [7], [[7]], ,
    [
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "getAllNodeNames": [, 2, 1, , ["Ice.StringSeqHelper"], , , , , ],
    "pingRegistry": [, 2, 2, , [1], [[7]], ,
    [
        IceGrid.RegistryNotExistException
    ], , ],
    "getRegistryInfo": [, 2, 2, , [IceGrid.RegistryInfo], [[7]], ,
    [
        IceGrid.RegistryNotExistException,
        IceGrid.RegistryUnreachableException
    ], , ],
    "getRegistryAdmin": [, 2, 2, , [9], [[7]], ,
    [
        IceGrid.RegistryNotExistException
    ], , ],
    "shutdownRegistry": [, 2, 2, , , [[7]], ,
    [
        IceGrid.RegistryNotExistException,
        IceGrid.RegistryUnreachableException
    ], , ],
    "getAllRegistryNames": [, 2, 2, , ["Ice.StringSeqHelper"], , , , , ],
    "shutdown": [, , , , , , , , , ],
    "getSliceChecksums": [, 2, 1, , ["Ice.SliceChecksumDictHelper"], , , , , ]
});

const iceC_IceGrid_FileIterator_ids = [
    "::Ice::Object",
    "::IceGrid::FileIterator"
];

/**
 * This interface provides access to IceGrid log file contents.
 *
 **/
IceGrid.FileIterator = class extends Ice.Object
{
};

IceGrid.FileIteratorPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.FileIterator, IceGrid.FileIteratorPrx, iceC_IceGrid_FileIterator_ids, 1,
{
    "read": [, , , , [1], [[3]], [["Ice.StringSeqHelper"]],
    [
        IceGrid.FileNotAvailableException
    ], , ],
    "destroy": [, , , , , , , , , ]
});

/**
 * Dynamic information about the state of a server.
 *
 **/
IceGrid.ServerDynamicInfo = class
{
    constructor(id = "", state = IceGrid.ServerState.Inactive, pid = 0, enabled = false)
    {
        this.id = id;
        this.state = state;
        this.pid = pid;
        this.enabled = enabled;
    }

    _write(ostr)
    {
        ostr.writeString(this.id);
        IceGrid.ServerState._write(ostr, this.state);
        ostr.writeInt(this.pid);
        ostr.writeBool(this.enabled);
    }

    _read(istr)
    {
        this.id = istr.readString();
        this.state = IceGrid.ServerState._read(istr);
        this.pid = istr.readInt();
        this.enabled = istr.readBool();
    }

    static get minWireSize()
    {
        return  7;
    }
};

Slice.defineStruct(IceGrid.ServerDynamicInfo, true, true);

Slice.defineSequence(IceGrid, "ServerDynamicInfoSeqHelper", "IceGrid.ServerDynamicInfo", false);

/**
 * Dynamic information about the state of an adapter.
 *
 **/
IceGrid.AdapterDynamicInfo = class
{
    constructor(id = "", proxy = null)
    {
        this.id = id;
        this.proxy = proxy;
    }

    _write(ostr)
    {
        ostr.writeString(this.id);
        ostr.writeProxy(this.proxy);
    }

    _read(istr)
    {
        this.id = istr.readString();
        this.proxy = istr.readProxy();
    }

    static get minWireSize()
    {
        return  3;
    }
};

Slice.defineStruct(IceGrid.AdapterDynamicInfo, false, true);

Slice.defineSequence(IceGrid, "AdapterDynamicInfoSeqHelper", "IceGrid.AdapterDynamicInfo", false);

/**
 * Dynamic information about the state of a node.
 *
 **/
IceGrid.NodeDynamicInfo = class
{
    constructor(info = new IceGrid.NodeInfo(), servers = null, adapters = null)
    {
        this.info = info;
        this.servers = servers;
        this.adapters = adapters;
    }

    _write(ostr)
    {
        IceGrid.NodeInfo.write(ostr, this.info);
        IceGrid.ServerDynamicInfoSeqHelper.write(ostr, this.servers);
        IceGrid.AdapterDynamicInfoSeqHelper.write(ostr, this.adapters);
    }

    _read(istr)
    {
        this.info = IceGrid.NodeInfo.read(istr, this.info);
        this.servers = IceGrid.ServerDynamicInfoSeqHelper.read(istr);
        this.adapters = IceGrid.AdapterDynamicInfoSeqHelper.read(istr);
    }

    static get minWireSize()
    {
        return  13;
    }
};

Slice.defineStruct(IceGrid.NodeDynamicInfo, false, true);

const iceC_IceGrid_RegistryObserver_ids = [
    "::Ice::Object",
    "::IceGrid::RegistryObserver"
];

/**
 * This interface allows applications to monitor changes the state
 * of the registry.
 *
 **/
IceGrid.RegistryObserver = class extends Ice.Object
{
};

IceGrid.RegistryObserverPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.RegistryObserver, IceGrid.RegistryObserverPrx, iceC_IceGrid_RegistryObserver_ids, 1,
{
    "registryInit": [, , , , , [["IceGrid.RegistryInfoSeqHelper"]], , , , ],
    "registryUp": [, , , , , [[IceGrid.RegistryInfo]], , , , ],
    "registryDown": [, , , , , [[7]], , , , ]
});

Slice.defineSequence(IceGrid, "NodeDynamicInfoSeqHelper", "IceGrid.NodeDynamicInfo", false);

const iceC_IceGrid_NodeObserver_ids = [
    "::Ice::Object",
    "::IceGrid::NodeObserver"
];

/**
 * The node observer interface. Observers should implement this
 * interface to receive information about the state of the IceGrid
 * nodes.
 *
 **/
IceGrid.NodeObserver = class extends Ice.Object
{
};

IceGrid.NodeObserverPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.NodeObserver, IceGrid.NodeObserverPrx, iceC_IceGrid_NodeObserver_ids, 1,
{
    "nodeInit": [, , , , , [["IceGrid.NodeDynamicInfoSeqHelper"]], , , , ],
    "nodeUp": [, , , , , [[IceGrid.NodeDynamicInfo]], , , , ],
    "nodeDown": [, , , , , [[7]], , , , ],
    "updateServer": [, , , , , [[7], [IceGrid.ServerDynamicInfo]], , , , ],
    "updateAdapter": [, , , , , [[7], [IceGrid.AdapterDynamicInfo]], , , , ]
});

const iceC_IceGrid_ApplicationObserver_ids = [
    "::Ice::Object",
    "::IceGrid::ApplicationObserver"
];

/**
 * The database observer interface. Observers should implement this
 * interface to receive information about the state of the IceGrid
 * registry database.
 *
 **/
IceGrid.ApplicationObserver = class extends Ice.Object
{
};

IceGrid.ApplicationObserverPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.ApplicationObserver, IceGrid.ApplicationObserverPrx, iceC_IceGrid_ApplicationObserver_ids, 1,
{
    "applicationInit": [, , , , , [[3], ["IceGrid.ApplicationInfoSeqHelper"]], , , true, ],
    "applicationAdded": [, , , , , [[3], [IceGrid.ApplicationInfo]], , , true, ],
    "applicationRemoved": [, , , , , [[3], [7]], , , , ],
    "applicationUpdated": [, , , , , [[3], [IceGrid.ApplicationUpdateInfo]], , , true, ]
});

const iceC_IceGrid_AdapterObserver_ids = [
    "::Ice::Object",
    "::IceGrid::AdapterObserver"
];

/**
 * This interface allows applications to monitor the state of object
 * adapters that are registered with IceGrid.
 *
 **/
IceGrid.AdapterObserver = class extends Ice.Object
{
};

IceGrid.AdapterObserverPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.AdapterObserver, IceGrid.AdapterObserverPrx, iceC_IceGrid_AdapterObserver_ids, 1,
{
    "adapterInit": [, , , , , [["IceGrid.AdapterInfoSeqHelper"]], , , , ],
    "adapterAdded": [, , , , , [[IceGrid.AdapterInfo]], , , , ],
    "adapterUpdated": [, , , , , [[IceGrid.AdapterInfo]], , , , ],
    "adapterRemoved": [, , , , , [[7]], , , , ]
});

const iceC_IceGrid_ObjectObserver_ids = [
    "::Ice::Object",
    "::IceGrid::ObjectObserver"
];

/**
 * This interface allows applications to monitor IceGrid well-known objects.
 *
 **/
IceGrid.ObjectObserver = class extends Ice.Object
{
};

IceGrid.ObjectObserverPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceGrid.ObjectObserver, IceGrid.ObjectObserverPrx, iceC_IceGrid_ObjectObserver_ids, 1,
{
    "objectInit": [, , , , , [["IceGrid.ObjectInfoSeqHelper"]], , , , ],
    "objectAdded": [, , , , , [[IceGrid.ObjectInfo]], , , , ],
    "objectUpdated": [, , , , , [[IceGrid.ObjectInfo]], , , , ],
    "objectRemoved": [, , , , , [[Ice.Identity]], , , , ]
});

const iceC_IceGrid_AdminSession_ids = [
    "::Glacier2::Session",
    "::Ice::Object",
    "::IceGrid::AdminSession"
];

/**
 * Used by administrative clients to view,
 * update, and receive observer updates from the IceGrid
 * registry. Admin sessions are created either via the {@link Registry}
 * object or via the registry admin <code>SessionManager</code> object.
 *
 * @see Registry
 *
 **/
IceGrid.AdminSession = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Glacier2.Session
        ];
    }
};

IceGrid.AdminSessionPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Glacier2.SessionPrx];
    }
};

Slice.defineOperations(IceGrid.AdminSession, IceGrid.AdminSessionPrx, iceC_IceGrid_AdminSession_ids, 2,
{
    "keepAlive": [, 2, 2, , , , , , , ],
    "getAdmin": [, 2, 1, , ["IceGrid.AdminPrx"], , , , , ],
    "getAdminCallbackTemplate": [, 2, 2, , [9], , , , , ],
    "setObservers": [, 2, 2, , , [["IceGrid.RegistryObserverPrx"], ["IceGrid.NodeObserverPrx"], ["IceGrid.ApplicationObserverPrx"], ["IceGrid.AdapterObserverPrx"], ["IceGrid.ObjectObserverPrx"]], ,
    [
        IceGrid.ObserverAlreadyRegisteredException
    ], , ],
    "setObserversByIdentity": [, 2, 2, , , [[Ice.Identity], [Ice.Identity], [Ice.Identity], [Ice.Identity], [Ice.Identity]], ,
    [
        IceGrid.ObserverAlreadyRegisteredException
    ], , ],
    "startUpdate": [, , , , [3], , ,
    [
        IceGrid.AccessDeniedException
    ], , ],
    "finishUpdate": [, , , , , , ,
    [
        IceGrid.AccessDeniedException
    ], , ],
    "getReplicaName": [, 2, 2, , [7], , , , , ],
    "openServerLog": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [7], [3]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.FileNotAvailableException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "openServerStdErr": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.FileNotAvailableException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "openServerStdOut": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
    [
        IceGrid.DeploymentException,
        IceGrid.FileNotAvailableException,
        IceGrid.NodeUnreachableException,
        IceGrid.ServerNotExistException
    ], , ],
    "openNodeStdErr": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
    [
        IceGrid.FileNotAvailableException,
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "openNodeStdOut": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
    [
        IceGrid.FileNotAvailableException,
        IceGrid.NodeNotExistException,
        IceGrid.NodeUnreachableException
    ], , ],
    "openRegistryStdErr": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
    [
        IceGrid.FileNotAvailableException,
        IceGrid.RegistryNotExistException,
        IceGrid.RegistryUnreachableException
    ], , ],
    "openRegistryStdOut": [, , , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
    [
        IceGrid.FileNotAvailableException,
        IceGrid.RegistryNotExistException,
        IceGrid.RegistryUnreachableException
    ], , ]
});
/* slice2js browser-bundle-skip */
exports.IceGrid = IceGrid;
/* slice2js browser-bundle-skip-end */
