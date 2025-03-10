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

[Test.Context, Test.ContextHelper] = Ice.defineDictionary(Ice.StringHelper, Ice.StringHelper, false, undefined);

const iceC_Test_MyClass_ids = [
    "::Ice::Object",
    "::Test::MyClass"
];

Test.MyClass = class extends Ice.Object
{
};

Test.MyClassPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.MyClassPrx", Test.MyClassPrx);

Ice.defineOperations(
    Test.MyClass,
    Test.MyClassPrx,
    iceC_Test_MyClass_ids,
    "::Test::MyClass",
    {
        "shutdown": [, , , , , , , , ],
        "getContext": [, , , [Test.ContextHelper], , , , , ]
    });

const iceC_Test_MyDerivedClass_ids = [
    "::Ice::Object",
    "::Test::MyClass",
    "::Test::MyDerivedClass"
];

Test.MyDerivedClass = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.MyClass
        ];
    }
};

Test.MyDerivedClassPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.MyClassPrx];
    }
};
Ice.TypeRegistry.declareProxyType("Test.MyDerivedClassPrx", Test.MyDerivedClassPrx);

Ice.defineOperations(
    Test.MyDerivedClass,
    Test.MyDerivedClassPrx,
    iceC_Test_MyDerivedClass_ids,
    "::Test::MyDerivedClass",
    {
        "echo": [, , , [9], [[9]], , , , ]
    });
