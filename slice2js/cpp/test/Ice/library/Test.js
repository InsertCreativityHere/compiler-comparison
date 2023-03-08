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

    Test.UserError = class extends Ice.UserException
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
            return "::Test::UserError";
        }

        _mostDerivedType()
        {
            return Test.UserError;
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

    const iceC_Test_MyInterface_ids = [
        "::Ice::Object",
        "::Test::MyInterface"
    ];

    Test.MyInterface = class extends Ice.Object
    {
    };

    Test.MyInterfacePrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.MyInterface, Test.MyInterfacePrx, iceC_Test_MyInterface_ids, 1,
    {
        "op": [, , , , , [[1]], ,
        [
            Test.UserError
        ], , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
