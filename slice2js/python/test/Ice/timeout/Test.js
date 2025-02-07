// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.ByteSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.ByteHelper, true);

const iceC_Test_Timeout_ids = [
    "::Ice::Object",
    "::Test::Timeout"
];

Test.Timeout = class extends Ice.Object
{
};

Test.TimeoutPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.TimeoutPrx", Test.TimeoutPrx);

Ice.defineOperations(
    Test.Timeout,
    Test.TimeoutPrx,
    iceC_Test_Timeout_ids,
    "::Test::Timeout",
    {
        "op": [, , , , , , , , ],
        "sendData": [, , , , [[Test.ByteSeqHelper]], , , , ],
        "sleep": [, , , , [[3]], , , , ]
    });

const iceC_Test_Controller_ids = [
    "::Ice::Object",
    "::Test::Controller"
];

Test.Controller = class extends Ice.Object
{
};

Test.ControllerPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.ControllerPrx", Test.ControllerPrx);

Ice.defineOperations(
    Test.Controller,
    Test.ControllerPrx,
    iceC_Test_Controller_ids,
    "::Test::Controller",
    {
        "holdAdapter": [, , , , [[3]], , , , ],
        "resumeAdapter": [, , , , , , , , ],
        "shutdown": [, , , , , , , , ]
    });
