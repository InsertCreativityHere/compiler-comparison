//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

const iceC_Test_TestIntf_ids = [
    "::Ice::Object",
    "::Test::TestIntf"
];

Test.TestIntf = class extends Ice.Object
{
};

Test.TestIntfPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.TestIntfPrx", Test.TestIntfPrx);

Ice.defineOperations(
    Test.TestIntf,
    Test.TestIntfPrx,
    iceC_Test_TestIntf_ids,
    "::Test::TestIntf",
    {
        "shutdown": [, , , , , , , , ],
        "getProperty": [, , , [7], [[7]], , , , ]
    });
