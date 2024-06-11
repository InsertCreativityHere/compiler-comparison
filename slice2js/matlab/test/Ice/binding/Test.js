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
Ice.TypeRegistry.declareProxyType("Test.TestIntfPrx", Test.TestIntfPrx);

Ice.defineOperations(
    Test.TestIntf,
    Test.TestIntfPrx,
    iceC_Test_TestIntf_ids,
    "::Test::TestIntf",
    {
        "getAdapterName": [, , , [7], , , , , ]
    });

const iceC_Test_RemoteObjectAdapter_ids = [
    "::Ice::Object",
    "::Test::RemoteObjectAdapter"
];

Test.RemoteObjectAdapter = class extends Ice.Object
{
};

Test.RemoteObjectAdapterPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.RemoteObjectAdapterPrx", Test.RemoteObjectAdapterPrx);

Ice.defineOperations(
    Test.RemoteObjectAdapter,
    Test.RemoteObjectAdapterPrx,
    iceC_Test_RemoteObjectAdapter_ids,
    "::Test::RemoteObjectAdapter",
    {
        "getTestIntf": [, , , ["Test.TestIntfPrx"], , , , , ],
        "deactivate": [, , , , , , , , ]
    });

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
        "createObjectAdapter": [, , , ["Test.RemoteObjectAdapterPrx"], [[7], [7]], , , , ],
        "deactivateObjectAdapter": [, , , , [["Test.RemoteObjectAdapterPrx"]], , , , ],
        "shutdown": [, , , , , , , , ]
    });
