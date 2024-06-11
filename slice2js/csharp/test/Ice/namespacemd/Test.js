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
    WithNamespace as WithNamespace_Namespace, } from "./Namespace.js"
import { 
    NoNamespace as NoNamespace_NoNamespace, } from "./NoNamespace.js"

const NoNamespace = {
    ...NoNamespace_NoNamespace,
};

const WithNamespace = {
    ...WithNamespace_Namespace,
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
        "getNoNamespaceC2AsC1": [, , , ["NoNamespace.C1", true], , , , , true],
        "getNoNamespaceC2AsC2": [, , , ["NoNamespace.C2", true], , , , , true],
        "throwNoNamespaceE2AsE1": [, , , , , ,
        [
            NoNamespace.E1
        ], , ],
        "throwNoNamespaceE2AsE2": [, , , , , ,
        [
            NoNamespace.E2
        ], , ],
        "throwNoNamespaceNotify": [, , , , , ,
        [
            NoNamespace.notify
        ], , ],
        "getWithNamespaceC2AsC1": [, , , ["WithNamespace.C1", true], , , , , true],
        "getWithNamespaceC2AsC2": [, , , ["WithNamespace.C2", true], , , , , true],
        "throwWithNamespaceE2AsE1": [, , , , , ,
        [
            WithNamespace.E1
        ], , ],
        "throwWithNamespaceE2AsE2": [, , , , , ,
        [
            WithNamespace.E2
        ], , ],
        "shutdown": [, , , , , , , , ]
    });
