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

    Object.defineProperty(Test, 'ByteConst1', {
        value: 10
    });

    Object.defineProperty(Test, 'ShortConst1', {
        value: 20
    });

    Object.defineProperty(Test, 'IntConst1', {
        value: 30
    });

    Object.defineProperty(Test, 'LongConst1', {
        value: new Ice.Long(0, 40)
    });

    Object.defineProperty(Test, 'ByteConst2', {
        value: 126
    });

    Object.defineProperty(Test, 'ShortConst2', {
        value: 32766
    });

    Object.defineProperty(Test, 'IntConst2', {
        value: 2147483647
    });

    Object.defineProperty(Test, 'LongConst2', {
        value: new Ice.Long(0, 2147483646)
    });

    Test.ByteEnum = Slice.defineEnum([
        ['benum1', 0], ['benum2', 1], ['benum3', 10], ['benum4', 11], ['benum5', 20],
        ['benum6', 21], ['benum7', 30], ['benum8', 31], ['benum9', 40], ['benum10', 41],
        ['benum11', 126]]);

    Test.ShortEnum = Slice.defineEnum([
        ['senum1', 3], ['senum2', 4], ['senum3', 10], ['senum4', 11], ['senum5', 20],
        ['senum6', 21], ['senum7', 30], ['senum8', 31], ['senum9', 40], ['senum10', 41],
        ['senum11', 32766]]);

    Test.IntEnum = Slice.defineEnum([
        ['ienum1', 0], ['ienum2', 1], ['ienum3', 10], ['ienum4', 11], ['ienum5', 20],
        ['ienum6', 21], ['ienum7', 30], ['ienum8', 31], ['ienum9', 40], ['ienum10', 41],
        ['ienum11', 2147483647], ['ienum12', 2147483646]]);

    Test.SimpleEnum = Slice.defineEnum([
        ['red', 0], ['green', 1], ['blue', 2]]);

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
        "opByte": [, , , [Test.ByteEnum._helper], [[Test.ByteEnum._helper]], [[Test.ByteEnum._helper]], , , ],
        "opShort": [, , , [Test.ShortEnum._helper], [[Test.ShortEnum._helper]], [[Test.ShortEnum._helper]], , , ],
        "opInt": [, , , [Test.IntEnum._helper], [[Test.IntEnum._helper]], [[Test.IntEnum._helper]], , , ],
        "opSimple": [, , , [Test.SimpleEnum._helper], [[Test.SimpleEnum._helper]], [[Test.SimpleEnum._helper]], , , ],
        "shutdown": [, , , , , , , , ]
    });
    exports.Test = Test;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
