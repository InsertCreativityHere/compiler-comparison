//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ObjectsForward.ice'
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

    const iceC_Test_F1_ids = [
        "::Ice::Object",
        "::Test::F1"
    ];

    Test.F1 = class extends Ice.Value
    {
        constructor(name = "")
        {
            super();
            this.name = name;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeString(this.name);
        }

        _iceReadMemberImpl(istr)
        {
            this.name = istr.readString();
        }
    };

    Slice.defineValue(Test.F1, iceC_Test_F1_ids[1], false);

    const iceC_Test_F2_ids = [
        "::Ice::Object",
        "::Test::F2"
    ];

    Test.F2 = class extends Ice.Object
    {
    };

    Test.F2Prx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.F2, Test.F2Prx, iceC_Test_F2_ids, 1,
    {
        "op": [, , , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
