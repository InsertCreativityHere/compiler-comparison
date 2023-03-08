//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `TimeoutTest.ice'
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

    Slice.defineSequence(Test, "ByteSeqHelper", "Ice.ByteHelper", true);

    const iceC_Test_Timeout_ids = [
        "::Ice::Object",
        "::Test::Timeout"
    ];

    Test.Timeout = class extends Ice.Object
    {
    };

    Test.TimeoutPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Timeout, Test.TimeoutPrx, iceC_Test_Timeout_ids, 1,
    {
        "op": [, , , , , , , , , ],
        "sendData": [, , , , , [["Test.ByteSeqHelper"]], , , , ],
        "sleep": [, , , , , [[3]], , , , ]
    });

    const iceC_Test_Controller_ids = [
        "::Ice::Object",
        "::Test::Controller"
    ];

    Test.Controller = class extends Ice.Object
    {
    };

    Test.ControllerPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Controller, Test.ControllerPrx, iceC_Test_Controller_ids, 1,
    {
        "holdAdapter": [, , , , , [[3]], , , , ],
        "resumeAdapter": [, , , , , , , , , ],
        "shutdown": [, , , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
