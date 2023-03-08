//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

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

    Slice.defineOperations(Test.TestIntf, Test.TestIntfPrx, iceC_Test_TestIntf_ids, 1,
    {
        "shutdown": [, , , , , , , , , ],
        "abort": [, , , , , , , , , ],
        "idempotentAbort": [, 2, 2, , , , , , , ],
        "pid": [, 2, 2, , [3], , , , , ]
    });

    const iceC_Test_Cleaner_ids = [
        "::Ice::Object",
        "::Test::Cleaner"
    ];

    Test.Cleaner = class extends Ice.Object
    {
    };

    Test.CleanerPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Cleaner, Test.CleanerPrx, iceC_Test_Cleaner_ids, 1,
    {
        "cleanup": [, , , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
