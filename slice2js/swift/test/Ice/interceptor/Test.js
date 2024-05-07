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

    Test.InvalidInputException = class extends Ice.UserException
    {
        constructor(message = "", _cause = "")
        {
            super(_cause);
            this.message = message;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Test::InvalidInputException";
        }

        _mostDerivedType()
        {
            return Test.InvalidInputException;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeString(this.message);
        }

        _readMemberImpl(istr)
        {
            this.message = istr.readString();
        }
    };

    const iceC_Test_MyObject_ids = [
        "::Ice::Object",
        "::Test::MyObject"
    ];

    Test.MyObject = class extends Ice.Object
    {
    };

    Test.MyObjectPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.MyObject, Test.MyObjectPrx, iceC_Test_MyObject_ids, "::Test::MyObject",
    {
        "add": [, , , [3], [[3], [3]], , , , ],
        "addWithRetry": [, , , [3], [[3], [3]], , , , ],
        "badAdd": [, , , [3], [[3], [3]], ,
        [
            Test.InvalidInputException
        ], , ],
        "notExistAdd": [, , , [3], [[3], [3]], , , , ],
        "amdAdd": [, , , [3], [[3], [3]], , , , ],
        "amdAddWithRetry": [, , , [3], [[3], [3]], , , , ],
        "amdBadAdd": [, , , [3], [[3], [3]], ,
        [
            Test.InvalidInputException
        ], , ],
        "amdNotExistAdd": [, , , [3], [[3], [3]], , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
