//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
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

    Test.UserEx = class extends Ice.UserException
    {
        constructor(_cause = "")
        {
            super(_cause);
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::UserEx";
        }

        _mostDerivedType()
        {
            return Test.UserEx;
        }
    };

    Slice.defineSequence(Test, "ByteSeqHelper", "Ice.ByteHelper", true);

    const iceC_Test_Metrics_ids = [
        "::Ice::Object",
        "::Test::Metrics"
    ];

    Test.Metrics = class extends Ice.Object
    {
    };

    Test.MetricsPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.Metrics, Test.MetricsPrx, iceC_Test_Metrics_ids, "::Test::Metrics",
    {
        "op": [, , , , , , , , ],
        "fail": [, 2, , , , , , , ],
        "opWithUserException": [, , , , , ,
        [
            Test.UserEx
        ], , ],
        "opWithRequestFailedException": [, , , , , , , , ],
        "opWithLocalException": [, , , , , , , , ],
        "opWithUnknownException": [, , , , , , , , ],
        "opByteS": [, , , , [["Test.ByteSeqHelper"]], , , , ],
        "getAdmin": [, , , [9], , , , , ],
        "shutdown": [, , , , , , , , ]
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

    Slice.defineOperations(Test.Controller, Test.ControllerPrx, iceC_Test_Controller_ids, "::Test::Controller",
    {
        "hold": [, , , , , , , , ],
        "resume": [, , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
