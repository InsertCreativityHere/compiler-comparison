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

(function(module, require, exports)
{
    const Ice = require("ice").Ice;
    const _ModuleRegistry = Ice._ModuleRegistry;
    const Test1 = require("NoPackage").Test1;
    const Test2 = require("Package").Test2;
    const Test3 = require("Package").Test3;
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

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

    Slice.defineOperations(Test.Initial, Test.InitialPrx, iceC_Test_Initial_ids, "::Test::Initial",
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
        "throwTest1Notify": [, , , , , ,
        [
            Test1.notify
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
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
