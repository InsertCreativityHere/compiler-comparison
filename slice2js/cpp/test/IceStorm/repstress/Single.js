//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Single.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

const iceC_Test_Single_ids = [
    "::Ice::Object",
    "::Test::Single"
];

Test.Single = class extends Ice.Object
{
};

Test.SinglePrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.SinglePrx", Test.SinglePrx);

Ice.defineOperations(
    Test.Single,
    Test.SinglePrx,
    iceC_Test_Single_ids,
    "::Test::Single",
    {
        "event": [, , , , [[3]], , , , ]
    });
