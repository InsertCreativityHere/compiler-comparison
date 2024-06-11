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

Test._Default = class extends Ice.Value
{
    constructor(x = 10, y = 10)
    {
        super();
        this.x = x;
        this.y = y;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.x);
        ostr.writeInt(this.y);
    }

    _iceReadMemberImpl(istr)
    {
        this.x = istr.readInt();
        this.y = istr.readInt();
    }
};

Ice.defineValue(Test._Default, "::Test::Default");
Ice.TypeRegistry.declareValueType("Test._Default", Test._Default);

Test.NoDefault = class extends Ice.Value
{
    constructor(x = 0, y = 0)
    {
        super();
        this.x = x;
        this.y = y;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.x);
        ostr.writeInt(this.y);
    }

    _iceReadMemberImpl(istr)
    {
        this.x = istr.readInt();
        this.y = istr.readInt();
    }
};

Ice.defineValue(Test.NoDefault, "::Test::NoDefault");
Ice.TypeRegistry.declareValueType("Test.NoDefault", Test.NoDefault);

Test.JsOnly = class extends Ice.Value
{
    constructor(lang = "js", version = 30850)
    {
        super();
        this.lang = lang;
        this.version = version;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.lang);
        ostr.writeInt(this.version);
    }

    _iceReadMemberImpl(istr)
    {
        this.lang = istr.readString();
        this.version = istr.readInt();
    }
};

Ice.defineValue(Test.JsOnly, "::Test::JsOnly");
Ice.TypeRegistry.declareValueType("Test.JsOnly", Test.JsOnly);
