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

    const iceC_Test_RemoteCommunicator_ids = [
        "::Ice::Object",
        "::Test::RemoteCommunicator"
    ];

    Test.RemoteCommunicator = class extends Ice.Object
    {
    };

    Test.RemoteCommunicatorPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.RemoteCommunicator, Test.RemoteCommunicatorPrx, iceC_Test_RemoteCommunicator_ids, 1,
    {
        "getAdmin": [, , , , [9], , , , , ],
        "getChanges": [, , , , ["Ice.PropertyDictHelper"], , , , , ],
        "addUpdateCallback": [, , , , , , , , , ],
        "removeUpdateCallback": [, , , , , , , , , ],
        "print": [, , , , , [[7]], , , , ],
        "trace": [, , , , , [[7], [7]], , , , ],
        "warning": [, , , , , [[7]], , , , ],
        "error": [, , , , , [[7]], , , , ],
        "shutdown": [, , , , , , , , , ],
        "waitForShutdown": [, , , , , , , , , ],
        "destroy": [, , , , , , , , , ]
    });

    const iceC_Test_RemoteCommunicatorFactory_ids = [
        "::Ice::Object",
        "::Test::RemoteCommunicatorFactory"
    ];

    Test.RemoteCommunicatorFactory = class extends Ice.Object
    {
    };

    Test.RemoteCommunicatorFactoryPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.RemoteCommunicatorFactory, Test.RemoteCommunicatorFactoryPrx, iceC_Test_RemoteCommunicatorFactory_ids, 1,
    {
        "createCommunicator": [, , , , ["Test.RemoteCommunicatorPrx"], [["Ice.PropertyDictHelper"]], , , , ],
        "shutdown": [, , , , , , , , , ]
    });

    const iceC_Test_TestFacet_ids = [
        "::Ice::Object",
        "::Test::TestFacet"
    ];

    Test.TestFacet = class extends Ice.Object
    {
    };

    Test.TestFacetPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Test.TestFacet, Test.TestFacetPrx, iceC_Test_TestFacet_ids, 1,
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
