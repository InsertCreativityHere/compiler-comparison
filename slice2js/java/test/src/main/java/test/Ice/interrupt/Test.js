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
    const Slice = Ice.Slice;

    let Test = _ModuleRegistry.module("Test");

    Test.InterruptedException = class extends Ice.UserException
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
            return "::Test::InterruptedException";
        }

        _mostDerivedType()
        {
            return Test.InterruptedException;
        }
    };

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

    Slice.defineOperations(Test.TestIntf, Test.TestIntfPrx, iceC_Test_TestIntf_ids, "::Test::TestIntf",
    {
        "op": [, , , , , , , , ],
        "opIdempotent": [, 2, , , , , , , ],
        "sleep": [, , , , [[3]], ,
        [
            Test.InterruptedException
        ], , ],
        "opWithPayload": [, , , , [["Ice.ByteSeqHelper"]], , , , ],
        "shutdown": [, , , , , , , , ]
    });

    Test.CannotInterruptException = class extends Ice.UserException
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
            return "::Test::CannotInterruptException";
        }

        _mostDerivedType()
        {
            return Test.CannotInterruptException;
        }
    };

    const iceC_Test_TestIntfController_ids = [
        "::Ice::Object",
        "::Test::TestIntfController"
    ];

    Test.TestIntfController = class extends Ice.Object
    {
    };

    Test.TestIntfControllerPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.TestIntfController, Test.TestIntfControllerPrx, iceC_Test_TestIntfController_ids, "::Test::TestIntfController",
    {
        "holdAdapter": [, , , , , , , , ],
        "resumeAdapter": [, , , , , , , , ],
        "interrupt": [, , , , , ,
        [
            Test.CannotInterruptException
        ], , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
