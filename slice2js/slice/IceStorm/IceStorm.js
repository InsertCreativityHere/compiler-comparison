//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import * as Ice_HashMap from "../Ice/HashMap.js";
import * as Ice_HashUtil from "../Ice/HashUtil.js";
import * as Ice_Long from "../Ice/Long.js";
import * as Ice_Object from "../Ice/Object.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Operation from "../Ice/Operation.js";
import * as Ice_StreamHelpers from "../Ice/StreamHelpers.js";
import * as Ice_Struct from "../Ice/Struct.js";
import * as Ice_TypeRegistry from "../Ice/TypeRegistry.js";
import * as Ice_UserException from "../Ice/UserException.js";
import * as Ice_Value from "../Ice/Value.js";
import { Ice as Ice_Ice_Identity } from "../Ice/Identity.js"

const Ice = {
    ...Ice_HashMap,
    ...Ice_HashUtil,
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_StreamHelpers,
    ...Ice_Struct,
    ...Ice_TypeRegistry,
    ...Ice_UserException,
    ...Ice_Value,
    ...Ice_Ice_Identity,
};

import { 
    IceMX as IceMX_Metrics, } from "./Metrics.js"

const IceMX = {
    ...IceMX_Metrics,
};

export const IceStorm = {};

/**
 * Information on the topic links.
 **/
IceStorm.LinkInfo = class
{
    constructor(theTopic = null, name = "", cost = 0)
    {
        this.theTopic = theTopic;
        this.name = name;
        this.cost = cost;
    }

    _write(ostr)
    {
        ostr.writeProxy(this.theTopic);
        ostr.writeString(this.name);
        ostr.writeInt(this.cost);
    }

    _read(istr)
    {
        this.theTopic = istr.readProxy();
        this.name = istr.readString();
        this.cost = istr.readInt();
    }

    static get minWireSize()
    {
        return  7;
    }
};

Ice.defineStruct(IceStorm.LinkInfo, false, true);

IceStorm.LinkInfoSeqHelper = Ice.StreamHelpers.generateSeqHelper(IceStorm.LinkInfo, false);

[IceStorm.QoS, IceStorm.QoSHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.StringHelper, false, undefined);

/**
 * This exception indicates that an attempt was made to create a link that already exists.
 **/
IceStorm.LinkExists = class extends Ice.UserException
{
    constructor(name = "", _cause = "")
    {
        super(_cause);
        this.name = name;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::IceStorm::LinkExists";
    }

    _mostDerivedType()
    {
        return IceStorm.LinkExists;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.name);
    }

    _readMemberImpl(istr)
    {
        this.name = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceStorm.LinkExists",
    IceStorm.LinkExists);

/**
 * This exception indicates that an attempt was made to remove a link that does not exist.
 **/
IceStorm.NoSuchLink = class extends Ice.UserException
{
    constructor(name = "", _cause = "")
    {
        super(_cause);
        this.name = name;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::IceStorm::NoSuchLink";
    }

    _mostDerivedType()
    {
        return IceStorm.NoSuchLink;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.name);
    }

    _readMemberImpl(istr)
    {
        this.name = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceStorm.NoSuchLink",
    IceStorm.NoSuchLink);

/**
 * This exception indicates that an attempt was made to subscribe a proxy for which a subscription already exists.
 **/
IceStorm.AlreadySubscribed = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::IceStorm::AlreadySubscribed";
    }

    _mostDerivedType()
    {
        return IceStorm.AlreadySubscribed;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceStorm.AlreadySubscribed",
    IceStorm.AlreadySubscribed);

/**
 * This exception indicates that an attempt was made to subscribe a proxy that is null.
 **/
IceStorm.InvalidSubscriber = class extends Ice.UserException
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

    static get _ice_id()
    {
        return "::IceStorm::InvalidSubscriber";
    }

    _mostDerivedType()
    {
        return IceStorm.InvalidSubscriber;
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
    "IceStorm.InvalidSubscriber",
    IceStorm.InvalidSubscriber);

/**
 * This exception indicates that a subscription failed due to an invalid QoS.
 **/
IceStorm.BadQoS = class extends Ice.UserException
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

    static get _ice_id()
    {
        return "::IceStorm::BadQoS";
    }

    _mostDerivedType()
    {
        return IceStorm.BadQoS;
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
    "IceStorm.BadQoS",
    IceStorm.BadQoS);

const iceC_IceStorm_Topic_ids = [
    "::Ice::Object",
    "::IceStorm::Topic"
];

/**
 * Publishers publish information on a particular topic. A topic logically represents a type.
 * @see TopicManager
 **/
IceStorm.Topic = class extends Ice.Object
{
};

/**
 * Publishers publish information on a particular topic. A topic logically represents a type.
 * @see TopicManager
 **/
IceStorm.TopicPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceStorm.TopicPrx", IceStorm.TopicPrx);

Ice.defineOperations(
    IceStorm.Topic,
    IceStorm.TopicPrx,
    iceC_IceStorm_Topic_ids,
    "::IceStorm::Topic",
    {
        "getName": [, 2, , [7], , , , , ],
        "getPublisher": [, 2, , [9], , , , , ],
        "getNonReplicatedPublisher": [, 2, , [9], , , , , ],
        "subscribeAndGetPublisher": [, , , [9], [[IceStorm.QoSHelper], [9]], ,
        [
            IceStorm.InvalidSubscriber,
            IceStorm.BadQoS,
            IceStorm.AlreadySubscribed
        ], , ],
        "unsubscribe": [, 2, , , [[9]], , , , ],
        "link": [, , , , [["IceStorm.TopicPrx"], [3]], ,
        [
            IceStorm.LinkExists
        ], , ],
        "unlink": [, , , , [["IceStorm.TopicPrx"]], ,
        [
            IceStorm.NoSuchLink
        ], , ],
        "getLinkInfoSeq": [, 2, , [IceStorm.LinkInfoSeqHelper], , , , , ],
        "getSubscribers": [, , , [Ice.IdentitySeqHelper], , , , , ],
        "destroy": [, , , , , , , , ]
    });

[IceStorm.TopicDict, IceStorm.TopicDictHelper] = Ice.defineDictionary(Ice.StringHelper, IceStorm.TopicPrx, false, undefined);

/**
 * This exception indicates that an attempt was made to create a topic that already exists.
 **/
IceStorm.TopicExists = class extends Ice.UserException
{
    constructor(name = "", _cause = "")
    {
        super(_cause);
        this.name = name;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::IceStorm::TopicExists";
    }

    _mostDerivedType()
    {
        return IceStorm.TopicExists;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.name);
    }

    _readMemberImpl(istr)
    {
        this.name = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceStorm.TopicExists",
    IceStorm.TopicExists);

/**
 * This exception indicates that an attempt was made to retrieve a topic that does not exist.
 **/
IceStorm.NoSuchTopic = class extends Ice.UserException
{
    constructor(name = "", _cause = "")
    {
        super(_cause);
        this.name = name;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::IceStorm::NoSuchTopic";
    }

    _mostDerivedType()
    {
        return IceStorm.NoSuchTopic;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.name);
    }

    _readMemberImpl(istr)
    {
        this.name = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "IceStorm.NoSuchTopic",
    IceStorm.NoSuchTopic);

const iceC_IceStorm_TopicManager_ids = [
    "::Ice::Object",
    "::IceStorm::TopicManager"
];

/**
 * A topic manager manages topics, and subscribers to topics.
 * @see Topic
 **/
IceStorm.TopicManager = class extends Ice.Object
{
};

/**
 * A topic manager manages topics, and subscribers to topics.
 * @see Topic
 **/
IceStorm.TopicManagerPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceStorm.TopicManagerPrx", IceStorm.TopicManagerPrx);

Ice.defineOperations(
    IceStorm.TopicManager,
    IceStorm.TopicManagerPrx,
    iceC_IceStorm_TopicManager_ids,
    "::IceStorm::TopicManager",
    {
        "create": [, , , ["IceStorm.TopicPrx"], [[7]], ,
        [
            IceStorm.TopicExists
        ], , ],
        "retrieve": [, 2, , ["IceStorm.TopicPrx"], [[7]], ,
        [
            IceStorm.NoSuchTopic
        ], , ],
        "retrieveAll": [, 2, , [IceStorm.TopicDictHelper], , , , , ]
    });

const iceC_IceStorm_Finder_ids = [
    "::Ice::Object",
    "::IceStorm::Finder"
];

/**
 * This interface is advertised by the IceStorm service through the Ice object with the identity 'IceStorm/Finder'.
 * This allows clients to retrieve the topic manager with just the endpoint information of the IceStorm service.
 **/
IceStorm.Finder = class extends Ice.Object
{
};

/**
 * This interface is advertised by the IceStorm service through the Ice object with the identity 'IceStorm/Finder'.
 * This allows clients to retrieve the topic manager with just the endpoint information of the IceStorm service.
 **/
IceStorm.FinderPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceStorm.FinderPrx", IceStorm.FinderPrx);

Ice.defineOperations(
    IceStorm.Finder,
    IceStorm.FinderPrx,
    iceC_IceStorm_Finder_ids,
    "::IceStorm::Finder",
    {
        "getTopicManager": [, , , ["IceStorm.TopicManagerPrx"], , , , , ]
    });
