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

/* eslint-disable */
/* jshint ignore: start */

import * as Ice_EnumBase from "../Ice/EnumBase.js";
import * as Ice_HashMap from "../Ice/HashMap.js";
import * as Ice_HashUtil from "../Ice/HashUtil.js";
import * as Ice_Long from "../Ice/Long.js";
import * as Ice_Object from "../Ice/Object.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Operation from "../Ice/Operation.js";
import * as Ice_StreamHelpers from "../Ice/StreamHelpers.js";
import * as Ice_Struct from "../Ice/Struct.js";
import * as Ice_TypeRegistry from "../Ice/TypeRegistry.js";
import * as Ice_Value from "../Ice/Value.js";
import { Ice as Ice_Ice_BuiltinSequences } from "../Ice/BuiltinSequences.js"
import { Ice as Ice_Ice_Identity } from "../Ice/Identity.js"

const Ice = {
    ...Ice_EnumBase,
    ...Ice_HashMap,
    ...Ice_HashUtil,
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_StreamHelpers,
    ...Ice_Struct,
    ...Ice_TypeRegistry,
    ...Ice_Value,
    ...Ice_Ice_BuiltinSequences,
    ...Ice_Ice_Identity,
};

import { 
    Glacier2 as Glacier2_Glacier2_Session, } from "../Glacier2/Session.js"
import { 
    IceGrid as IceGrid_Descriptor, } from "./Descriptor.js"
import { 
    IceGrid as IceGrid_Exception, } from "./Exception.js"

const Glacier2 = {
    ...Glacier2_Glacier2_Session,
};

const IceGrid = {
    ...IceGrid_Descriptor,
    ...IceGrid_Exception,
};

export { IceGrid };

/**
 * An enumeration representing the state of the server.
 **/
IceGrid.ServerState = Ice.defineEnum([
    ['Inactive', 0], ['Activating', 1], ['ActivationTimedOut', 2], ['Active', 3], ['Deactivating', 4],
    ['Destroying', 5], ['Destroyed', 6]]);

[IceGrid.StringObjectProxyDict, IceGrid.StringObjectProxyDictHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.ObjectPrx, false, undefined);

/**
 * Information about an Ice object.
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

Ice.defineStruct(IceGrid.ObjectInfo, false, true);

IceGrid.ObjectInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.ObjectInfo, false);

/**
 * Information about an adapter registered with the IceGrid registry.
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

Ice.defineStruct(IceGrid.AdapterInfo, false, true);

IceGrid.AdapterInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.AdapterInfo, false);

/**
 * Information about a server managed by an IceGrid node.
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
        istr.readValue(obj => this.descriptor = obj, Ice.TypeRegistry.getValueType("IceGrid.ServerDescriptor"));
        this.sessionId = istr.readString();
    }

    static get minWireSize()
    {
        return  9;
    }
};

Ice.defineStruct(IceGrid.ServerInfo, false, true);

/**
 * Information about an IceGrid node.
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

Ice.defineStruct(IceGrid.NodeInfo, true, true);

/**
 * Information about an IceGrid registry replica.
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

Ice.defineStruct(IceGrid.RegistryInfo, true, true);

IceGrid.RegistryInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.RegistryInfo, false);

/**
 * Information about the load of a node.
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

Ice.defineStruct(IceGrid.LoadInfo, false, false);

/**
 * Information about an IceGrid application.
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

Ice.defineStruct(IceGrid.ApplicationInfo, false, true);

IceGrid.ApplicationInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.ApplicationInfo, false);

/**
 * Information about updates to an IceGrid application.
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

Ice.defineStruct(IceGrid.ApplicationUpdateInfo, false, true);

const iceC_IceGrid_Admin_ids = [
    "::Ice::Object",
    "::IceGrid::Admin"
];

/**
 * The IceGrid administrative interface. <p class="Warning">Allowing access to this interface is a security risk!
 * Please see the IceGrid documentation for further information.
 **/
IceGrid.Admin = class extends Ice.Object
{
};

IceGrid.AdminPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.AdminPrx", IceGrid.AdminPrx);

Ice.defineOperations(
    IceGrid.Admin,
    IceGrid.AdminPrx,
    iceC_IceGrid_Admin_ids,
    "::IceGrid::Admin",
    {
        "addApplication": [, , , , [[IceGrid.ApplicationDescriptor]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.DeploymentException
        ], true, ],
        "syncApplication": [, , , , [[IceGrid.ApplicationDescriptor]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.ApplicationNotExistException,
            IceGrid.DeploymentException
        ], true, ],
        "updateApplication": [, , , , [[IceGrid.ApplicationUpdateDescriptor]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.ApplicationNotExistException,
            IceGrid.DeploymentException
        ], true, ],
        "syncApplicationWithoutRestart": [, , , , [[IceGrid.ApplicationDescriptor]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.ApplicationNotExistException,
            IceGrid.DeploymentException
        ], true, ],
        "updateApplicationWithoutRestart": [, , , , [[IceGrid.ApplicationUpdateDescriptor]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.ApplicationNotExistException,
            IceGrid.DeploymentException
        ], true, ],
        "removeApplication": [, , , , [[7]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.ApplicationNotExistException,
            IceGrid.DeploymentException
        ], , ],
        "instantiateServer": [, , , , [[7], [7], [IceGrid.ServerInstanceDescriptor]], ,
        [
            IceGrid.AccessDeniedException,
            IceGrid.ApplicationNotExistException,
            IceGrid.DeploymentException
        ], , ],
        "getApplicationInfo": [, 2, , [IceGrid.ApplicationInfo], [[7]], ,
        [
            IceGrid.ApplicationNotExistException
        ], , true],
        "getDefaultApplicationDescriptor": [, 2, , [IceGrid.ApplicationDescriptor], , ,
        [
            IceGrid.DeploymentException
        ], , true],
        "getAllApplicationNames": [, 2, , [Ice.StringSeqHelper], , , , , ],
        "getServerInfo": [, 2, , [IceGrid.ServerInfo], [[7]], ,
        [
            IceGrid.ServerNotExistException
        ], , true],
        "getServerState": [, 2, , [IceGrid.ServerState._helper], [[7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getServerPid": [, 2, , [3], [[7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getServerAdminCategory": [, 2, , [7], , , , , ],
        "getServerAdmin": [, 2, , [9], [[7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "enableServer": [, 2, , , [[7], [1]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "isServerEnabled": [, 2, , [1], [[7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "startServer": [, , , , [[7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.ServerStartException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "stopServer": [, , , , [[7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.ServerStopException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "sendSignal": [, , , , [[7], [7]], ,
        [
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException,
            IceGrid.BadSignalException
        ], , ],
        "getAllServerIds": [, 2, , [Ice.StringSeqHelper], , , , , ],
        "getAdapterInfo": [, 2, , [IceGrid.AdapterInfoSeqHelper], [[7]], ,
        [
            IceGrid.AdapterNotExistException
        ], , ],
        "removeAdapter": [, , , , [[7]], ,
        [
            IceGrid.AdapterNotExistException,
            IceGrid.DeploymentException
        ], , ],
        "getAllAdapterIds": [, 2, , [Ice.StringSeqHelper], , , , , ],
        "addObject": [, , , , [[9]], ,
        [
            IceGrid.ObjectExistsException,
            IceGrid.DeploymentException
        ], , ],
        "updateObject": [, , , , [[9]], ,
        [
            IceGrid.ObjectNotRegisteredException,
            IceGrid.DeploymentException
        ], , ],
        "addObjectWithType": [, , , , [[9], [7]], ,
        [
            IceGrid.ObjectExistsException,
            IceGrid.DeploymentException
        ], , ],
        "removeObject": [, , , , [[Ice.Identity]], ,
        [
            IceGrid.ObjectNotRegisteredException,
            IceGrid.DeploymentException
        ], , ],
        "getObjectInfo": [, 2, , [IceGrid.ObjectInfo], [[Ice.Identity]], ,
        [
            IceGrid.ObjectNotRegisteredException
        ], , ],
        "getObjectInfosByType": [, 2, , [IceGrid.ObjectInfoSeqHelper], [[7]], , , , ],
        "getAllObjectInfos": [, 2, , [IceGrid.ObjectInfoSeqHelper], [[7]], , , , ],
        "pingNode": [, 2, , [1], [[7]], ,
        [
            IceGrid.NodeNotExistException
        ], , ],
        "getNodeLoad": [, 2, , [IceGrid.LoadInfo], [[7]], ,
        [
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getNodeInfo": [, 2, , [IceGrid.NodeInfo], [[7]], ,
        [
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getNodeAdmin": [, 2, , [9], [[7]], ,
        [
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getNodeProcessorSocketCount": [, 2, , [3], [[7]], ,
        [
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "shutdownNode": [, , , , [[7]], ,
        [
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getNodeHostname": [, 2, , [7], [[7]], ,
        [
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "getAllNodeNames": [, 2, , [Ice.StringSeqHelper], , , , , ],
        "pingRegistry": [, 2, , [1], [[7]], ,
        [
            IceGrid.RegistryNotExistException
        ], , ],
        "getRegistryInfo": [, 2, , [IceGrid.RegistryInfo], [[7]], ,
        [
            IceGrid.RegistryNotExistException,
            IceGrid.RegistryUnreachableException
        ], , ],
        "getRegistryAdmin": [, 2, , [9], [[7]], ,
        [
            IceGrid.RegistryNotExistException
        ], , ],
        "shutdownRegistry": [, 2, , , [[7]], ,
        [
            IceGrid.RegistryNotExistException,
            IceGrid.RegistryUnreachableException
        ], , ],
        "getAllRegistryNames": [, 2, , [Ice.StringSeqHelper], , , , , ],
        "shutdown": [, , , , , , , , ]
    });

const iceC_IceGrid_FileIterator_ids = [
    "::Ice::Object",
    "::IceGrid::FileIterator"
];

/**
 * This interface provides access to IceGrid log file contents.
 **/
IceGrid.FileIterator = class extends Ice.Object
{
};

IceGrid.FileIteratorPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.FileIteratorPrx", IceGrid.FileIteratorPrx);

Ice.defineOperations(
    IceGrid.FileIterator,
    IceGrid.FileIteratorPrx,
    iceC_IceGrid_FileIterator_ids,
    "::IceGrid::FileIterator",
    {
        "read": [, , , [1], [[3]], [[Ice.StringSeqHelper]],
        [
            IceGrid.FileNotAvailableException
        ], , ],
        "destroy": [, , , , , , , , ]
    });

/**
 * Dynamic information about the state of a server.
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

Ice.defineStruct(IceGrid.ServerDynamicInfo, true, true);

IceGrid.ServerDynamicInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.ServerDynamicInfo, false);

/**
 * Dynamic information about the state of an adapter.
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

Ice.defineStruct(IceGrid.AdapterDynamicInfo, false, true);

IceGrid.AdapterDynamicInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.AdapterDynamicInfo, false);

/**
 * Dynamic information about the state of a node.
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

Ice.defineStruct(IceGrid.NodeDynamicInfo, false, true);

const iceC_IceGrid_RegistryObserver_ids = [
    "::Ice::Object",
    "::IceGrid::RegistryObserver"
];

/**
 * This interface allows applications to monitor changes the state of the registry.
 **/
IceGrid.RegistryObserver = class extends Ice.Object
{
};

IceGrid.RegistryObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.RegistryObserverPrx", IceGrid.RegistryObserverPrx);

Ice.defineOperations(
    IceGrid.RegistryObserver,
    IceGrid.RegistryObserverPrx,
    iceC_IceGrid_RegistryObserver_ids,
    "::IceGrid::RegistryObserver",
    {
        "registryInit": [, , , , [[IceGrid.RegistryInfoSeqHelper]], , , , ],
        "registryUp": [, , , , [[IceGrid.RegistryInfo]], , , , ],
        "registryDown": [, , , , [[7]], , , , ]
    });

IceGrid.NodeDynamicInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceGrid.NodeDynamicInfo, false);

const iceC_IceGrid_NodeObserver_ids = [
    "::Ice::Object",
    "::IceGrid::NodeObserver"
];

/**
 * The node observer interface. Observers should implement this interface to receive information about the state of
 * the IceGrid nodes.
 **/
IceGrid.NodeObserver = class extends Ice.Object
{
};

IceGrid.NodeObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.NodeObserverPrx", IceGrid.NodeObserverPrx);

Ice.defineOperations(
    IceGrid.NodeObserver,
    IceGrid.NodeObserverPrx,
    iceC_IceGrid_NodeObserver_ids,
    "::IceGrid::NodeObserver",
    {
        "nodeInit": [, , , , [[IceGrid.NodeDynamicInfoSeqHelper]], , , , ],
        "nodeUp": [, , , , [[IceGrid.NodeDynamicInfo]], , , , ],
        "nodeDown": [, , , , [[7]], , , , ],
        "updateServer": [, , , , [[7], [IceGrid.ServerDynamicInfo]], , , , ],
        "updateAdapter": [, , , , [[7], [IceGrid.AdapterDynamicInfo]], , , , ]
    });

const iceC_IceGrid_ApplicationObserver_ids = [
    "::Ice::Object",
    "::IceGrid::ApplicationObserver"
];

/**
 * The database observer interface. Observers should implement this interface to receive information about the
 * state of the IceGrid registry database.
 **/
IceGrid.ApplicationObserver = class extends Ice.Object
{
};

IceGrid.ApplicationObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.ApplicationObserverPrx", IceGrid.ApplicationObserverPrx);

Ice.defineOperations(
    IceGrid.ApplicationObserver,
    IceGrid.ApplicationObserverPrx,
    iceC_IceGrid_ApplicationObserver_ids,
    "::IceGrid::ApplicationObserver",
    {
        "applicationInit": [, , , , [[3], [IceGrid.ApplicationInfoSeqHelper]], , , true, ],
        "applicationAdded": [, , , , [[3], [IceGrid.ApplicationInfo]], , , true, ],
        "applicationRemoved": [, , , , [[3], [7]], , , , ],
        "applicationUpdated": [, , , , [[3], [IceGrid.ApplicationUpdateInfo]], , , true, ]
    });

const iceC_IceGrid_AdapterObserver_ids = [
    "::Ice::Object",
    "::IceGrid::AdapterObserver"
];

/**
 * This interface allows applications to monitor the state of object adapters that are registered with IceGrid.
 **/
IceGrid.AdapterObserver = class extends Ice.Object
{
};

IceGrid.AdapterObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.AdapterObserverPrx", IceGrid.AdapterObserverPrx);

Ice.defineOperations(
    IceGrid.AdapterObserver,
    IceGrid.AdapterObserverPrx,
    iceC_IceGrid_AdapterObserver_ids,
    "::IceGrid::AdapterObserver",
    {
        "adapterInit": [, , , , [[IceGrid.AdapterInfoSeqHelper]], , , , ],
        "adapterAdded": [, , , , [[IceGrid.AdapterInfo]], , , , ],
        "adapterUpdated": [, , , , [[IceGrid.AdapterInfo]], , , , ],
        "adapterRemoved": [, , , , [[7]], , , , ]
    });

const iceC_IceGrid_ObjectObserver_ids = [
    "::Ice::Object",
    "::IceGrid::ObjectObserver"
];

/**
 * This interface allows applications to monitor IceGrid well-known objects.
 **/
IceGrid.ObjectObserver = class extends Ice.Object
{
};

IceGrid.ObjectObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceGrid.ObjectObserverPrx", IceGrid.ObjectObserverPrx);

Ice.defineOperations(
    IceGrid.ObjectObserver,
    IceGrid.ObjectObserverPrx,
    iceC_IceGrid_ObjectObserver_ids,
    "::IceGrid::ObjectObserver",
    {
        "objectInit": [, , , , [[IceGrid.ObjectInfoSeqHelper]], , , , ],
        "objectAdded": [, , , , [[IceGrid.ObjectInfo]], , , , ],
        "objectUpdated": [, , , , [[IceGrid.ObjectInfo]], , , , ],
        "objectRemoved": [, , , , [[Ice.Identity]], , , , ]
    });

const iceC_IceGrid_AdminSession_ids = [
    "::Glacier2::Session",
    "::Ice::Object",
    "::IceGrid::AdminSession"
];

/**
 * Used by administrative clients to view, update, and receive observer updates from the IceGrid registry. Admin
 * sessions are created either via the {@link Registry} object or via the registry admin
 * <code>SessionManager</code> object.
 * @see Registry
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
Ice.TypeRegistry.declareProxyType("IceGrid.AdminSessionPrx", IceGrid.AdminSessionPrx);

Ice.defineOperations(
    IceGrid.AdminSession,
    IceGrid.AdminSessionPrx,
    iceC_IceGrid_AdminSession_ids,
    "::IceGrid::AdminSession",
    {
        "keepAlive": [, 2, , , , , , , ],
        "getAdmin": [, 2, , ["IceGrid.AdminPrx"], , , , , ],
        "getAdminCallbackTemplate": [, 2, , [9], , , , , ],
        "setObservers": [, 2, , , [["IceGrid.RegistryObserverPrx"], ["IceGrid.NodeObserverPrx"], ["IceGrid.ApplicationObserverPrx"], ["IceGrid.AdapterObserverPrx"], ["IceGrid.ObjectObserverPrx"]], ,
        [
            IceGrid.ObserverAlreadyRegisteredException
        ], , ],
        "setObserversByIdentity": [, 2, , , [[Ice.Identity], [Ice.Identity], [Ice.Identity], [Ice.Identity], [Ice.Identity]], ,
        [
            IceGrid.ObserverAlreadyRegisteredException
        ], , ],
        "startUpdate": [, , , [3], , ,
        [
            IceGrid.AccessDeniedException
        ], , ],
        "finishUpdate": [, , , , , ,
        [
            IceGrid.AccessDeniedException
        ], , ],
        "getReplicaName": [, 2, , [7], , , , , ],
        "openServerLog": [, , , ["IceGrid.FileIteratorPrx"], [[7], [7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "openServerStdErr": [, , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "openServerStdOut": [, , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.ServerNotExistException,
            IceGrid.DeploymentException,
            IceGrid.NodeUnreachableException
        ], , ],
        "openNodeStdErr": [, , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "openNodeStdOut": [, , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.NodeNotExistException,
            IceGrid.NodeUnreachableException
        ], , ],
        "openRegistryStdErr": [, , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.RegistryNotExistException,
            IceGrid.RegistryUnreachableException
        ], , ],
        "openRegistryStdOut": [, , , ["IceGrid.FileIteratorPrx"], [[7], [3]], ,
        [
            IceGrid.FileNotAvailableException,
            IceGrid.RegistryNotExistException,
            IceGrid.RegistryUnreachableException
        ], , ]
    });
