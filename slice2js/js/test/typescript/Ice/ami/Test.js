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

Test.TestIntfException = class extends Ice.UserException
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
        return "::Test::TestIntfException";
    }

    _mostDerivedType()
    {
        return Test.TestIntfException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.TestIntfException",
    Test.TestIntfException);

Test.CloseMode = Ice.defineEnum([
    ['Forcefully', 0], ['Gracefully', 1], ['GracefullyWithWait', 2]]);

const iceC_Test_PingReply_ids = [
    "::Ice::Object",
    "::Test::PingReply"
];

Test.PingReply = class extends Ice.Object
{
};

Test.PingReplyPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.PingReplyPrx", Test.PingReplyPrx);

Ice.defineOperations(
    Test.PingReply,
    Test.PingReplyPrx,
    iceC_Test_PingReply_ids,
    "::Test::PingReply",
    {
        "reply": [, , , , , , , , ]
    });

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
        "op": [, , , , , , , , ],
        "opWithPayload": [, , , , [[Ice.ByteSeqHelper]], , , , ],
        "opWithResult": [, , , [3], , , , , ],
        "opWithUE": [, , , , , ,
        [
            Test.TestIntfException
        ], , ],
        "opBatch": [, , , , , , , , ],
        "opBatchCount": [, , , [3], , , , , ],
        "waitForBatch": [, , , [1], [[3]], , , , ],
        "close": [, , , , [[Test.CloseMode._helper]], , , , ],
        "sleep": [, , , , [[3]], , , , ],
        "startDispatch": [, , , , , , , , ],
        "finishDispatch": [, , , , , , , , ],
        "shutdown": [, , , , , , , , ],
        "supportsAMD": [, , , [1], , , , , ],
        "supportsFunctionalTests": [, , , [1], , , , , ],
        "pingBidDir": [, , , , [[Ice.Identity]], , , , ]
    });

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
Ice.TypeRegistry.declareProxyType("Test.TestIntfControllerPrx", Test.TestIntfControllerPrx);

Ice.defineOperations(
    Test.TestIntfController,
    Test.TestIntfControllerPrx,
    iceC_Test_TestIntfController_ids,
    "::Test::TestIntfController",
    {
        "holdAdapter": [, , , , , , , , ],
        "resumeAdapter": [, , , , , , , , ]
    });
