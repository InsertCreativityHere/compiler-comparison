// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Event.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

const iceC_Test_Event_ids = [
    "::Ice::Object",
    "::Test::Event"
];

Test.Event = class extends Ice.Object
{
};

Test.EventPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.EventPrx", Test.EventPrx);

Ice.defineOperations(
    Test.Event,
    Test.EventPrx,
    iceC_Test_Event_ids,
    "::Test::Event",
    {
        "pub": [, , , , [[3]], , , , ]
    });
