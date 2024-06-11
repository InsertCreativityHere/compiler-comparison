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

import { Ice } from "ice";


export const Test = {};

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
Ice.TypeRegistry.declareProxyType("Test.RemoteCommunicatorPrx", Test.RemoteCommunicatorPrx);

Ice.defineOperations(
    Test.RemoteCommunicator,
    Test.RemoteCommunicatorPrx,
    iceC_Test_RemoteCommunicator_ids,
    "::Test::RemoteCommunicator",
    {
        "getAdmin": [, , , [9], , , , , ],
        "getChanges": [, , , [Ice.PropertyDictHelper], , , , , ],
        "shutdown": [, , , , , , , , ],
        "waitForShutdown": [, , , , , , , , ],
        "destroy": [, , , , , , , , ]
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
Ice.TypeRegistry.declareProxyType("Test.RemoteCommunicatorFactoryPrx", Test.RemoteCommunicatorFactoryPrx);

Ice.defineOperations(
    Test.RemoteCommunicatorFactory,
    Test.RemoteCommunicatorFactoryPrx,
    iceC_Test_RemoteCommunicatorFactory_ids,
    "::Test::RemoteCommunicatorFactory",
    {
        "createCommunicator": [, , , ["Test.RemoteCommunicatorPrx"], [[Ice.PropertyDictHelper]], , , , ],
        "shutdown": [, , , , , , , , ]
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
Ice.TypeRegistry.declareProxyType("Test.TestFacetPrx", Test.TestFacetPrx);

Ice.defineOperations(
    Test.TestFacet,
    Test.TestFacetPrx,
    iceC_Test_TestFacet_ids,
    "::Test::TestFacet",
    {
        "op": [, , , , , , , , ]
    });
