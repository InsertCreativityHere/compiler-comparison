// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";

import { 
    Test as Test_Test, } from "./Test.js"

const Test = {
    ...Test_Test,
};

export { Test };

const iceC_Test_Initial2_ids = [
    "::Ice::Object",
    "::Test::Initial2"
];

Test.Initial2 = class extends Ice.Object
{
};

Test.Initial2Prx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Initial2Prx", Test.Initial2Prx);

Ice.defineOperations(
    Test.Initial2,
    Test.Initial2Prx,
    iceC_Test_Initial2_ids,
    "::Test::Initial2",
    {
        "opClassAndUnknownOptional": [, , , , [["Test.A", true], [Test.VarStruct, , 1]], , , true, ],
        "opVoid": [, , , , [[3, , 1], [7, , 2]], , , , ]
    });
