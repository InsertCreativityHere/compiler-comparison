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

Test.MA = Test.MA || {};

Test.MB = Test.MB || {};

const iceC_Test_MA_IA_ids = [
    "::Ice::Object",
    "::Test::MA::IA"
];

Test.MA.IA = class extends Ice.Object
{
};

Test.MA.IAPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.MA.IAPrx", Test.MA.IAPrx);

Ice.defineOperations(
    Test.MA.IA,
    Test.MA.IAPrx,
    iceC_Test_MA_IA_ids,
    "::Test::MA::IA",
    {
        "iaop": [, , , ["Test.MA.IAPrx"], [["Test.MA.IAPrx"]], , , , ]
    });

const iceC_Test_MB_IB1_ids = [
    "::Ice::Object",
    "::Test::MA::IA",
    "::Test::MB::IB1"
];

Test.MB.IB1 = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.MA.IA
        ];
    }
};

Test.MB.IB1Prx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.MA.IAPrx];
    }
};
Ice.TypeRegistry.declareProxyType("Test.MB.IB1Prx", Test.MB.IB1Prx);

Ice.defineOperations(
    Test.MB.IB1,
    Test.MB.IB1Prx,
    iceC_Test_MB_IB1_ids,
    "::Test::MB::IB1",
    {
        "ib1op": [, , , ["Test.MB.IB1Prx"], [["Test.MB.IB1Prx"]], , , , ]
    });

const iceC_Test_MB_IB2_ids = [
    "::Ice::Object",
    "::Test::MA::IA",
    "::Test::MB::IB2"
];

Test.MB.IB2 = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.MA.IA
        ];
    }
};

Test.MB.IB2Prx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.MA.IAPrx];
    }
};
Ice.TypeRegistry.declareProxyType("Test.MB.IB2Prx", Test.MB.IB2Prx);

Ice.defineOperations(
    Test.MB.IB2,
    Test.MB.IB2Prx,
    iceC_Test_MB_IB2_ids,
    "::Test::MB::IB2",
    {
        "ib2op": [, , , ["Test.MB.IB2Prx"], [["Test.MB.IB2Prx"]], , , , ]
    });

const iceC_Test_MA_IC_ids = [
    "::Ice::Object",
    "::Test::MA::IA",
    "::Test::MA::IC",
    "::Test::MB::IB1",
    "::Test::MB::IB2"
];

Test.MA.IC = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.MB.IB1,
            Test.MB.IB2
        ];
    }
};

Test.MA.ICPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.MB.IB1Prx,
            Test.MB.IB2Prx];
    }
};
Ice.TypeRegistry.declareProxyType("Test.MA.ICPrx", Test.MA.ICPrx);

Ice.defineOperations(
    Test.MA.IC,
    Test.MA.ICPrx,
    iceC_Test_MA_IC_ids,
    "::Test::MA::IC",
    {
        "icop": [, , , ["Test.MA.ICPrx"], [["Test.MA.ICPrx"]], , , , ]
    });

const iceC_Test_Initial_ids = [
    "::Ice::Object",
    "::Test::Initial"
];

Test.Initial = class extends Ice.Object
{
};

Test.InitialPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.InitialPrx", Test.InitialPrx);

Ice.defineOperations(
    Test.Initial,
    Test.InitialPrx,
    iceC_Test_Initial_ids,
    "::Test::Initial",
    {
        "shutdown": [, , , , , , , , ],
        "iaop": [, , , ["Test.MA.IAPrx"], , , , , ],
        "ib1op": [, , , ["Test.MB.IB1Prx"], , , , , ],
        "ib2op": [, , , ["Test.MB.IB2Prx"], , , , , ],
        "icop": [, , , ["Test.MA.ICPrx"], , , , , ]
    });
