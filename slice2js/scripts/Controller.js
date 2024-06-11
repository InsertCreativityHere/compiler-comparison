//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.Common = Test.Common || {};

Test.Common.BoolSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.BoolHelper, true);

Test.Common.StringSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.StringHelper, false);

Test.Common.Config = class extends Ice.Value
{
    constructor(protocol = undefined, mx = undefined, serialize = undefined, compress = undefined, ipv6 = undefined, cprops = undefined, sprops = undefined)
    {
        super();
        this.protocol = protocol;
        this.mx = mx;
        this.serialize = serialize;
        this.compress = compress;
        this.ipv6 = ipv6;
        this.cprops = cprops;
        this.sprops = sprops;
    }

    _iceWriteMemberImpl(ostr)
    {
        Ice.StringHelper.writeOptional(ostr, 1, this.protocol);
        Ice.BoolHelper.writeOptional(ostr, 2, this.mx);
        Ice.BoolHelper.writeOptional(ostr, 3, this.serialize);
        Ice.BoolHelper.writeOptional(ostr, 4, this.compress);
        Ice.BoolHelper.writeOptional(ostr, 5, this.ipv6);
        Test.Common.StringSeqHelper.writeOptional(ostr, 6, this.cprops);
        Test.Common.StringSeqHelper.writeOptional(ostr, 7, this.sprops);
    }

    _iceReadMemberImpl(istr)
    {
        this.protocol = Ice.StringHelper.readOptional(istr, 1);
        this.mx = Ice.BoolHelper.readOptional(istr, 2);
        this.serialize = Ice.BoolHelper.readOptional(istr, 3);
        this.compress = Ice.BoolHelper.readOptional(istr, 4);
        this.ipv6 = Ice.BoolHelper.readOptional(istr, 5);
        this.cprops = Test.Common.StringSeqHelper.readOptional(istr, 6);
        this.sprops = Test.Common.StringSeqHelper.readOptional(istr, 7);
    }
};

Ice.defineValue(Test.Common.Config, "::Test::Common::Config");
Ice.TypeRegistry.declareValueType("Test.Common.Config", Test.Common.Config);

Test.Common.OptionOverrides = class extends Ice.Value
{
    constructor(protocol = undefined, mx = undefined, serialize = undefined, compress = undefined, ipv6 = undefined)
    {
        super();
        this.protocol = protocol;
        this.mx = mx;
        this.serialize = serialize;
        this.compress = compress;
        this.ipv6 = ipv6;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.Common.StringSeqHelper.writeOptional(ostr, 1, this.protocol);
        Test.Common.BoolSeqHelper.writeOptional(ostr, 2, this.mx);
        Test.Common.BoolSeqHelper.writeOptional(ostr, 3, this.serialize);
        Test.Common.BoolSeqHelper.writeOptional(ostr, 4, this.compress);
        Test.Common.BoolSeqHelper.writeOptional(ostr, 5, this.ipv6);
    }

    _iceReadMemberImpl(istr)
    {
        this.protocol = Test.Common.StringSeqHelper.readOptional(istr, 1);
        this.mx = Test.Common.BoolSeqHelper.readOptional(istr, 2);
        this.serialize = Test.Common.BoolSeqHelper.readOptional(istr, 3);
        this.compress = Test.Common.BoolSeqHelper.readOptional(istr, 4);
        this.ipv6 = Test.Common.BoolSeqHelper.readOptional(istr, 5);
    }
};

Ice.defineValue(Test.Common.OptionOverrides, "::Test::Common::OptionOverrides");
Ice.TypeRegistry.declareValueType("Test.Common.OptionOverrides", Test.Common.OptionOverrides);

Test.Common.TestCaseNotExistException = class extends Ice.UserException
{
    constructor(reason = "", _cause = "")
    {
        super(_cause);
        this.reason = reason;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::Common::TestCaseNotExistException";
    }

    _mostDerivedType()
    {
        return Test.Common.TestCaseNotExistException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.reason);
    }

    _readMemberImpl(istr)
    {
        this.reason = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Common.TestCaseNotExistException",
    Test.Common.TestCaseNotExistException);

Test.Common.TestCaseFailedException = class extends Ice.UserException
{
    constructor(output = "", _cause = "")
    {
        super(_cause);
        this.output = output;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::Common::TestCaseFailedException";
    }

    _mostDerivedType()
    {
        return Test.Common.TestCaseFailedException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.output);
    }

    _readMemberImpl(istr)
    {
        this.output = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Common.TestCaseFailedException",
    Test.Common.TestCaseFailedException);

const iceC_Test_Common_TestCase_ids = [
    "::Ice::Object",
    "::Test::Common::TestCase"
];

Test.Common.TestCase = class extends Ice.Object
{
};

Test.Common.TestCasePrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Common.TestCasePrx", Test.Common.TestCasePrx);

Ice.defineOperations(
    Test.Common.TestCase,
    Test.Common.TestCasePrx,
    iceC_Test_Common_TestCase_ids,
    "::Test::Common::TestCase",
    {
        "startServerSide": [, , , [7], [["Test.Common.Config", true]], ,
        [
            Test.Common.TestCaseFailedException
        ], true, ],
        "stopServerSide": [, , , [7], [[1]], ,
        [
            Test.Common.TestCaseFailedException
        ], , ],
        "runClientSide": [, , , [7], [[7], ["Test.Common.Config", true]], ,
        [
            Test.Common.TestCaseFailedException
        ], true, ],
        "destroy": [, , , , , , , , ]
    });

const iceC_Test_Common_Controller_ids = [
    "::Ice::Object",
    "::Test::Common::Controller"
];

Test.Common.Controller = class extends Ice.Object
{
};

Test.Common.ControllerPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Common.ControllerPrx", Test.Common.ControllerPrx);

Ice.defineOperations(
    Test.Common.Controller,
    Test.Common.ControllerPrx,
    iceC_Test_Common_Controller_ids,
    "::Test::Common::Controller",
    {
        "runTestCase": [, , , ["Test.Common.TestCasePrx"], [[7], [7], [7], [7]], ,
        [
            Test.Common.TestCaseNotExistException
        ], , ],
        "getOptionOverrides": [, , , ["Test.Common.OptionOverrides", true], , , , , true],
        "getTestSuites": [, , , [Test.Common.StringSeqHelper], [[7]], , , , ],
        "getHost": [, , , [7], [[7], [1]], , , , ]
    });

Test.Common.ProcessFailedException = class extends Ice.UserException
{
    constructor(reason = "", _cause = "")
    {
        super(_cause);
        this.reason = reason;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Test::Common::ProcessFailedException";
    }

    _mostDerivedType()
    {
        return Test.Common.ProcessFailedException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.reason);
    }

    _readMemberImpl(istr)
    {
        this.reason = istr.readString();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.Common.ProcessFailedException",
    Test.Common.ProcessFailedException);

const iceC_Test_Common_Process_ids = [
    "::Ice::Object",
    "::Test::Common::Process"
];

Test.Common.Process = class extends Ice.Object
{
};

Test.Common.ProcessPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Common.ProcessPrx", Test.Common.ProcessPrx);

Ice.defineOperations(
    Test.Common.Process,
    Test.Common.ProcessPrx,
    iceC_Test_Common_Process_ids,
    "::Test::Common::Process",
    {
        "waitReady": [, , , , [[3]], ,
        [
            Test.Common.ProcessFailedException
        ], , ],
        "waitSuccess": [, , , [3], [[3]], ,
        [
            Test.Common.ProcessFailedException
        ], , ],
        "terminate": [, , , [7], , , , , ]
    });

const iceC_Test_Common_ProcessController_ids = [
    "::Ice::Object",
    "::Test::Common::ProcessController"
];

Test.Common.ProcessController = class extends Ice.Object
{
};

Test.Common.ProcessControllerPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Common.ProcessControllerPrx", Test.Common.ProcessControllerPrx);

Ice.defineOperations(
    Test.Common.ProcessController,
    Test.Common.ProcessControllerPrx,
    iceC_Test_Common_ProcessController_ids,
    "::Test::Common::ProcessController",
    {
        "start": [, , , ["Test.Common.ProcessPrx"], [[7], [7], [Test.Common.StringSeqHelper]], ,
        [
            Test.Common.ProcessFailedException
        ], , ],
        "getHost": [, , , [7], [[7], [1]], , , , ]
    });

const iceC_Test_Common_BrowserProcessController_ids = [
    "::Ice::Object",
    "::Test::Common::BrowserProcessController",
    "::Test::Common::ProcessController"
];

Test.Common.BrowserProcessController = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            Test.Common.ProcessController
        ];
    }
};

Test.Common.BrowserProcessControllerPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            Test.Common.ProcessControllerPrx];
    }
};
Ice.TypeRegistry.declareProxyType("Test.Common.BrowserProcessControllerPrx", Test.Common.BrowserProcessControllerPrx);

Ice.defineOperations(
    Test.Common.BrowserProcessController,
    Test.Common.BrowserProcessControllerPrx,
    iceC_Test_Common_BrowserProcessController_ids,
    "::Test::Common::BrowserProcessController",
    {
        "redirect": [, , , , [[7]], , , , ]
    });

const iceC_Test_Common_ProcessControllerRegistry_ids = [
    "::Ice::Object",
    "::Test::Common::ProcessControllerRegistry"
];

Test.Common.ProcessControllerRegistry = class extends Ice.Object
{
};

Test.Common.ProcessControllerRegistryPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Test.Common.ProcessControllerRegistryPrx", Test.Common.ProcessControllerRegistryPrx);

Ice.defineOperations(
    Test.Common.ProcessControllerRegistry,
    Test.Common.ProcessControllerRegistryPrx,
    iceC_Test_Common_ProcessControllerRegistry_ids,
    "::Test::Common::ProcessControllerRegistry",
    {
        "setProcessController": [, , , , [["Test.Common.ProcessControllerPrx"]], , , , ]
    });
