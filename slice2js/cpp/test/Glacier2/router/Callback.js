//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.CallbackException = class extends Ice.UserException
{
    constructor(someValue = 0.0, someString = "", _cause = "")
    {
        super(_cause);
        this.someValue = someValue;
        this.someString = someString;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::CallbackException";
    }

    _mostDerivedType()
    {
        return Test.CallbackException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeDouble(this.someValue);
        ostr.writeString(this.someString);
    }

    _readMemberImpl(istr)
    {
        this.someValue = istr.readDouble();
        this.someString = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.CallbackException",
    Test.CallbackException);

const iceC_Test_CallbackReceiver_ids = [
    "::Ice::Object",
    "::Test::CallbackReceiver"
];

Test.CallbackReceiver = class extends Ice.Object
{
};

Test.CallbackReceiverPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.CallbackReceiverPrx", Test.CallbackReceiverPrx);

Ice.defineOperations(
    Test.CallbackReceiver,
    Test.CallbackReceiverPrx,
    iceC_Test_CallbackReceiver_ids,
    "::Test::CallbackReceiver",
    {
        "callback": [, , , , , , , , ],
        "callbackEx": [, , , , , ,
        [
            Test.CallbackException
        ], , ],
        "concurrentCallback": [, , , [3], [[3]], , , , ],
        "waitCallback": [, , , , , , , , ],
        "callbackWithPayload": [, , , , [[Ice.ByteSeqHelper]], , , , ]
    });

const iceC_Test_Callback_ids = [
    "::Ice::Object",
    "::Test::Callback"
];

Test.Callback = class extends Ice.Object
{
};

Test.CallbackPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.CallbackPrx", Test.CallbackPrx);

Ice.defineOperations(
    Test.Callback,
    Test.CallbackPrx,
    iceC_Test_Callback_ids,
    "::Test::Callback",
    {
        "initiateCallback": [, , , , [["Test.CallbackReceiverPrx"]], , , , ],
        "initiateCallbackEx": [, , , , [["Test.CallbackReceiverPrx"]], ,
        [
            Test.CallbackException
        ], , ],
        "initiateConcurrentCallback": [, , , [3], [[3], ["Test.CallbackReceiverPrx"]], , , , ],
        "initiateWaitCallback": [, , , , [["Test.CallbackReceiverPrx"]], , , , ],
        "initiateCallbackWithPayload": [, , , , [["Test.CallbackReceiverPrx"]], , , , ],
        "shutdown": [, , , , , , , , ]
    });
