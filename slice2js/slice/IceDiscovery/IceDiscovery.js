//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import * as Ice_Long from "../Ice/Long.js";
import * as Ice_Object from "../Ice/Object.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Operation from "../Ice/Operation.js";
import * as Ice_Stream from "../Ice/Stream.js";
import * as Ice_StreamHelpers from "../Ice/StreamHelpers.js";
import * as Ice_TypeRegistry from "../Ice/TypeRegistry.js";
import * as Ice_Value from "../Ice/Value.js";
import { Ice as Ice_Ice_Identity } from "../Ice/Identity.js"

const Ice = {
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_Stream,
    ...Ice_StreamHelpers,
    ...Ice_TypeRegistry,
    ...Ice_Value,
    ...Ice_Ice_Identity,
};


export const IceDiscovery = {};

const iceC_IceDiscovery_LookupReply_ids = [
    "::Ice::Object",
    "::IceDiscovery::LookupReply"
];

/**
 *  The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
 **/
IceDiscovery.LookupReply = class extends Ice.Object
{
};

IceDiscovery.LookupReplyPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceDiscovery.LookupReplyPrx", IceDiscovery.LookupReplyPrx);

Ice.defineOperations(
    IceDiscovery.LookupReply,
    IceDiscovery.LookupReplyPrx,
    iceC_IceDiscovery_LookupReply_ids,
    "::IceDiscovery::LookupReply",
    {
        "foundObjectById": [, , , , [[Ice.Identity], [9]], , , , ],
        "foundAdapterById": [, , , , [[7], [9], [1]], , , , ]
    });

const iceC_IceDiscovery_Lookup_ids = [
    "::Ice::Object",
    "::IceDiscovery::Lookup"
];

/**
 *  The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
 **/
IceDiscovery.Lookup = class extends Ice.Object
{
};

IceDiscovery.LookupPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("IceDiscovery.LookupPrx", IceDiscovery.LookupPrx);

Ice.defineOperations(
    IceDiscovery.Lookup,
    IceDiscovery.LookupPrx,
    iceC_IceDiscovery_Lookup_ids,
    "::IceDiscovery::Lookup",
    {
        "findObjectById": [, 2, , , [[7], [Ice.Identity], ["IceDiscovery.LookupReplyPrx"]], , , , ],
        "findAdapterById": [, 2, , , [[7], [7], ["IceDiscovery.LookupReplyPrx"]], , , , ]
    });
