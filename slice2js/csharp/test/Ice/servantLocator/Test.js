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

    Test.TestIntfUserException = class extends Ice.UserException
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
            return "::Test::TestIntfUserException";
        }

        _mostDerivedType()
        {
            return Test.TestIntfUserException;
        }
    };

    Test.TestImpossibleException = class extends Ice.UserException
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
            return "::Test::TestImpossibleException";
        }

        _mostDerivedType()
        {
            return Test.TestImpossibleException;
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
        "requestFailedException": [, , , , , , , , ],
        "unknownUserException": [, , , , , , , , ],
        "unknownLocalException": [, , , , , , , , ],
        "unknownException": [, , , , , , , , ],
        "localException": [, , , , , , , , ],
        "userException": [, , , , , , , , ],
        "csException": [, , , , , , , , ],
        "unknownExceptionWithServantException": [, , , , , , , , ],
        "impossibleException": [, , , [7], [[1]], ,
        [
            Test.TestImpossibleException
        ], , ],
        "intfUserException": [, , , [7], [[1]], ,
        [
            Test.TestIntfUserException,
            Test.TestImpossibleException
        ], , ],
        "asyncResponse": [, , , , , ,
        [
            Test.TestIntfUserException,
            Test.TestImpossibleException
        ], , ],
        "asyncException": [, , , , , ,
        [
            Test.TestIntfUserException,
            Test.TestImpossibleException
        ], , ],
        "shutdown": [, , , , , , , , ]
    });

    const iceC_Test_TestActivation_ids = [
        "::Ice::Object",
        "::Test::TestActivation"
    ];

    Test.TestActivation = class extends Ice.Object
    {
    };

    Test.TestActivationPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.TestActivation, Test.TestActivationPrx, iceC_Test_TestActivation_ids, "::Test::TestActivation",
    {
        "activateServantLocator": [, , , , [[1]], , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
