// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'File2.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

const iceC_Test_Interface2_ids = [
    "::Ice::Object",
    "::Test::Interface2"
];

Test.Interface2 = class extends Ice.Object
{
};

Test.Interface2Prx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Interface2Prx", Test.Interface2Prx);

Ice.defineOperations(
    Test.Interface2,
    Test.Interface2Prx,
    iceC_Test_Interface2_ids,
    "::Test::Interface2",
    {
        "method": [, , , , , , , , ]
    });
