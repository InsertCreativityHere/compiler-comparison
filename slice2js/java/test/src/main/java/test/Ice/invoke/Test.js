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

    Test.MyException = class extends Ice.UserException
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
            return "::Test::MyException";
        }

        _mostDerivedType()
        {
            return Test.MyException;
        }
    };

    const iceC_Test_MyClass_ids = [
        "::Ice::Object",
        "::Test::MyClass"
    ];

    Test.MyClass = class extends Ice.Object
    {
    };

    Test.MyClassPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.MyClass, Test.MyClassPrx, iceC_Test_MyClass_ids, 1,
    {
        "opOneway": [, , , , , , , , , ],
        "opString": [, , , , [7], [[7]], [[7]], , , ],
        "opException": [, , , , , , ,
        [
            Test.MyException
        ], , ],
        "shutdown": [, , , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
