//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";

import { 
    IceStormElection as IceStormElection_LLURecord, } from "./LLURecord.js"
import { 
    IceStorm as IceStorm_SubscriberRecord, } from "./SubscriberRecord.js"

const IceStorm = {
    ...IceStorm_SubscriberRecord,
};

const IceStormElection = {
    ...IceStormElection_LLURecord,
};

export { IceStormElection };

/**
 *  The contents of topic.
 **/
IceStormElection.TopicContent = class
{
    constructor(id = new Ice.Identity(), records = null)
    {
        this.id = id;
        this.records = records;
    }

    _write(ostr)
    {
        Ice.Identity.write(ostr, this.id);
        IceStorm.SubscriberRecordSeqHelper.write(ostr, this.records);
    }

    _read(istr)
    {
        this.id = Ice.Identity.read(istr, this.id);
        this.records = IceStorm.SubscriberRecordSeqHelper.read(istr);
    }

    static get minWireSize()
    {
        return  3;
    }
};

Ice.defineStruct(IceStormElection.TopicContent, false, true);

IceStormElection.TopicContentSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceStormElection.TopicContent, false);

/**
 *  Thrown if an observer detects an inconsistency.
 **/
IceStormElection.ObserverInconsistencyException = class extends Ice.UserException
{
    constructor(reason = "", _cause = "")
    {
        super(_cause);
        this.reason = reason;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::IceStormElection::ObserverInconsistencyException";
    }

    _mostDerivedType()
    {
        return IceStormElection.ObserverInconsistencyException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.reason);
    }

    _readMemberImpl(istr)
    {
        this.reason = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceStormElection.ObserverInconsistencyException",
    IceStormElection.ObserverInconsistencyException);

const iceC_IceStormElection_ReplicaObserver_ids = [
    "::Ice::Object",
    "::IceStormElection::ReplicaObserver"
];

/**
 *  The replica observer.
 **/
IceStormElection.ReplicaObserver = class extends Ice.Object
{
};

IceStormElection.ReplicaObserverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceStormElection.ReplicaObserverPrx", IceStormElection.ReplicaObserverPrx);

Ice.defineOperations(
    IceStormElection.ReplicaObserver,
    IceStormElection.ReplicaObserverPrx,
    iceC_IceStormElection_ReplicaObserver_ids,
    "::IceStormElection::ReplicaObserver",
    {
        "init": [, , , , [[IceStormElection.LogUpdate], [IceStormElection.TopicContentSeqHelper]], ,
        [
            IceStormElection.ObserverInconsistencyException
        ], , ],
        "createTopic": [, , , , [[IceStormElection.LogUpdate], [7]], ,
        [
            IceStormElection.ObserverInconsistencyException
        ], , ],
        "destroyTopic": [, , , , [[IceStormElection.LogUpdate], [7]], ,
        [
            IceStormElection.ObserverInconsistencyException
        ], , ],
        "addSubscriber": [, , , , [[IceStormElection.LogUpdate], [7], [IceStorm.SubscriberRecord]], ,
        [
            IceStormElection.ObserverInconsistencyException
        ], , ],
        "removeSubscriber": [, , , , [[IceStormElection.LogUpdate], [7], [Ice.IdentitySeqHelper]], ,
        [
            IceStormElection.ObserverInconsistencyException
        ], , ]
    });

const iceC_IceStormElection_TopicManagerSync_ids = [
    "::Ice::Object",
    "::IceStormElection::TopicManagerSync"
];

/**
 *  Interface used to sync topics.
 **/
IceStormElection.TopicManagerSync = class extends Ice.Object
{
};

IceStormElection.TopicManagerSyncPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceStormElection.TopicManagerSyncPrx", IceStormElection.TopicManagerSyncPrx);

Ice.defineOperations(
    IceStormElection.TopicManagerSync,
    IceStormElection.TopicManagerSyncPrx,
    iceC_IceStormElection_TopicManagerSync_ids,
    "::IceStormElection::TopicManagerSync",
    {
        "getContent": [, , , , , [[IceStormElection.LogUpdate], [IceStormElection.TopicContentSeqHelper]], , , ]
    });

/**
 *  The node state.
 **/
IceStormElection.NodeState = Ice.defineEnum([
    ['NodeStateInactive', 0], ['NodeStateElection', 1], ['NodeStateReorganization', 2], ['NodeStateNormal', 3]]);

/**
 *  All nodes in the replication group.
 **/
IceStormElection.NodeInfo = class
{
    constructor(id = 0, n = null)
    {
        this.id = id;
        this.n = n;
    }

    _write(ostr)
    {
        ostr.writeInt(this.id);
        ostr.writeProxy(this.n);
    }

    _read(istr)
    {
        this.id = istr.readInt();
        this.n = istr.readProxy();
    }

    static get minWireSize()
    {
        return  6;
    }
};

Ice.defineStruct(IceStormElection.NodeInfo, false, true);

IceStormElection.NodeInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceStormElection.NodeInfo, false);

/**
 *  The group info.
 **/
IceStormElection.GroupInfo = class
{
    constructor(id = 0, llu = new IceStormElection.LogUpdate())
    {
        this.id = id;
        this.llu = llu;
    }

    _write(ostr)
    {
        ostr.writeInt(this.id);
        IceStormElection.LogUpdate.write(ostr, this.llu);
    }

    _read(istr)
    {
        this.id = istr.readInt();
        this.llu = IceStormElection.LogUpdate.read(istr, this.llu);
    }

    static get minWireSize()
    {
        return  20;
    }
};

Ice.defineStruct(IceStormElection.GroupInfo, true, false);

IceStormElection.GroupInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceStormElection.GroupInfo, true);

IceStormElection.QueryInfo = class
{
    constructor(id = 0, coord = 0, group = "", replica = null, state = IceStormElection.NodeState.NodeStateInactive, up = null, max = 0)
    {
        this.id = id;
        this.coord = coord;
        this.group = group;
        this.replica = replica;
        this.state = state;
        this.up = up;
        this.max = max;
    }

    _write(ostr)
    {
        ostr.writeInt(this.id);
        ostr.writeInt(this.coord);
        ostr.writeString(this.group);
        ostr.writeProxy(this.replica);
        IceStormElection.NodeState._write(ostr, this.state);
        IceStormElection.GroupInfoSeqHelper.write(ostr, this.up);
        ostr.writeInt(this.max);
    }

    _read(istr)
    {
        this.id = istr.readInt();
        this.coord = istr.readInt();
        this.group = istr.readString();
        this.replica = istr.readProxy();
        this.state = IceStormElection.NodeState._read(istr);
        this.up = IceStormElection.GroupInfoSeqHelper.read(istr);
        this.max = istr.readInt();
    }

    static get minWireSize()
    {
        return  17;
    }
};

Ice.defineStruct(IceStormElection.QueryInfo, false, true);

const iceC_IceStormElection_Node_ids = [
    "::Ice::Object",
    "::IceStormElection::Node"
];

/**
 *  A replica node.
 **/
IceStormElection.Node = class extends Ice.Object
{
};

IceStormElection.NodePrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceStormElection.NodePrx", IceStormElection.NodePrx);

Ice.defineOperations(
    IceStormElection.Node,
    IceStormElection.NodePrx,
    iceC_IceStormElection_Node_ids,
    "::IceStormElection::Node",
    {
        "invitation": [, , , , [[3], [7]], , , , ],
        "ready": [, , , , [[3], [7], [9], [3], [4]], , , , ],
        "accept": [, , , , [[3], [7], [Ice.IntSeqHelper], [9], [IceStormElection.LogUpdate], [3]], , , , ],
        "areYouCoordinator": [, 2, , [1], , , , , ],
        "areYouThere": [, 2, , [1], [[7], [3]], , , , ],
        "sync": [, 2, , [9], , , , , ],
        "nodes": [, 2, , [IceStormElection.NodeInfoSeqHelper], , , , , ],
        "query": [, 2, , [IceStormElection.QueryInfo], , , , , ]
    });
