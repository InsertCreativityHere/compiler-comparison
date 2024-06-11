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

import { 
    Test1 as Test1_NoPackage, } from "./NoPackage.js"
import { 
    Test2 as Test2_Package, 
    Test3 as Test3_Package, } from "./Package.js"

const Test1 = {
    ...Test1_NoPackage,
};

const Test2 = {
    ...Test2_Package,
};

const Test3 = {
    ...Test3_Package,
};

export const Test = {};

const iceC_Test_Initial_ids = [
    "::Ice::Object",
    "::Test::Initial"
];

Test.Initial = class extends Ice.Object
{
};

Test.InitialPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.InitialPrx", Test.InitialPrx);

Ice.defineOperations(
    Test.Initial,
    Test.InitialPrx,
    iceC_Test_Initial_ids,
    "::Test::Initial",
    {
        "getTest1C2AsC1": [, , , ["Test1.C1", true], , , , , true],
        "getTest1C2AsC2": [, , , ["Test1.C2", true], , , , , true],
        "throwTest1E2AsE1": [, , , , , ,
        [
            Test1.E1
        ], , ],
        "throwTest1E2AsE2": [, , , , , ,
        [
            Test1.E2
        ], , ],
        "throwTest1Def": [, , , , , ,
        [
            Test1.def
        ], , ],
        "getTest2C2AsC1": [, , , ["Test2.C1", true], , , , , true],
        "getTest2C2AsC2": [, , , ["Test2.C2", true], , , , , true],
        "throwTest2E2AsE1": [, , , , , ,
        [
            Test2.E1
        ], , ],
        "throwTest2E2AsE2": [, , , , , ,
        [
            Test2.E2
        ], , ],
        "getTest3C2AsC1": [, , , ["Test3.C1", true], , , , , true],
        "getTest3C2AsC2": [, , , ["Test3.C2", true], , , , , true],
        "throwTest3E2AsE1": [, , , , , ,
        [
            Test3.E1
        ], , ],
        "throwTest3E2AsE2": [, , , , , ,
        [
            Test3.E2
        ], , ],
        "shutdown": [, , , , , , , , ]
    });
