//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.TestIntfUserException = class extends Ice.UserException
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
        return "::Test::TestIntfUserException";
    }

    _mostDerivedType()
    {
        return Test.TestIntfUserException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.TestIntfUserException",
    Test.TestIntfUserException);

Test.TestImpossibleException = class extends Ice.UserException
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
        return "::Test::TestImpossibleException";
    }

    _mostDerivedType()
    {
        return Test.TestImpossibleException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.TestImpossibleException",
    Test.TestImpossibleException);

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
        "requestFailedException": [, , , , , , , , ],
        "unknownUserException": [, , , , , , , , ],
        "unknownLocalException": [, , , , , , , , ],
        "unknownException": [, , , , , , , , ],
        "localException": [, , , , , , , , ],
        "javaException": [, , , , , , , , ],
        "unknownExceptionWithServantException": [, , , , , , , , ],
        "impossibleException": [, , , [7], [[1]], ,
        [
            Test.TestImpossibleException
        ], , ],
        "intfUserException": [, , , [7], [[1]], ,
        [
            Test.TestIntfUserException,
            Test.TestImpossibleException
        ], , ],
        "asyncResponse": [, , , , , ,
        [
            Test.TestIntfUserException,
            Test.TestImpossibleException
        ], , ],
        "asyncException": [, , , , , ,
        [
            Test.TestIntfUserException,
            Test.TestImpossibleException
        ], , ],
        "shutdown": [, , , , , , , , ]
    });

const iceC_Test_TestActivation_ids = [
    "::Ice::Object",
    "::Test::TestActivation"
];

Test.TestActivation = class extends Ice.Object
{
};

Test.TestActivationPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.TestActivationPrx", Test.TestActivationPrx);

Ice.defineOperations(
    Test.TestActivation,
    Test.TestActivationPrx,
    iceC_Test_TestActivation_ids,
    "::Test::TestActivation",
    {
        "activateServantLocator": [, , , , [[1]], , , , ]
    });
