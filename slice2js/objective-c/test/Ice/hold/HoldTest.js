//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `HoldTest.ice'
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
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

    const iceC_Test_Hold_ids = [
        "::Ice::Object",
        "::Test::Hold"
    ];

    Test.Hold = class extends Ice.Object
    {
    };

    Test.HoldPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Hold, Test.HoldPrx, iceC_Test_Hold_ids, 1,
    {
        "putOnHold": [, , , , , [[3]], , , , ],
        "waitForHold": [, , , , , , , , , ],
        "set": [, , , , [3], [[3], [3]], , , , ],
        "setOneway": [, , , , , [[3], [3]], , , , ],
        "shutdown": [, , , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
