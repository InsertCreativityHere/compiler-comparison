// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'File1.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

export const Test2 = {};

const iceC_Test_Interface1_ids = [
    "::Ice::Object",
    "::Test::Interface1"
];

Test.Interface1 = class extends Ice.Object
{
};

Test.Interface1Prx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Interface1Prx", Test.Interface1Prx);

Ice.defineOperations(
    Test.Interface1,
    Test.Interface1Prx,
    iceC_Test_Interface1_ids,
    "::Test::Interface1",
    {
        "method": [, , , , , , , , ]
    });

Test2.Class1 = class extends Ice.Value
{
};

Ice.defineValue(Test2.Class1, "::Test2::Class1");
Ice.TypeRegistry.declareValueType("Test2.Class1", Test2.Class1);
