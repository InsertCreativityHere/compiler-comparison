// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";

import { 
    Test as Test_TestAMD, } from "./TestAMD.js"

const Test = {
    ...Test_TestAMD,
};

export { Test };

Test.SBSUnknownDerived = class extends Test.SBase
{
    constructor(sb, sbsud = "")
    {
        super(sb);
        this.sbsud = sbsud;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.sbsud);
    }

    _iceReadMemberImpl(istr)
    {
        this.sbsud = istr.readString();
    }
};

Ice.defineValue(Test.SBSUnknownDerived, "::Test::SBSUnknownDerived");
Ice.TypeRegistry.declareValueType("Test.SBSUnknownDerived", Test.SBSUnknownDerived);

Test.SUnknown = class extends Ice.Value
{
    constructor(su = "", cycle = null)
    {
        super();
        this.su = su;
        this.cycle = cycle;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.su);
        ostr.writeValue(this.cycle);
    }

    _iceReadMemberImpl(istr)
    {
        this.su = istr.readString();
        istr.readValue(obj => this.cycle = obj, Ice.TypeRegistry.getValueType("Test.SUnknown"));
    }
};

Ice.defineValue(Test.SUnknown, "::Test::SUnknown");
Ice.TypeRegistry.declareValueType("Test.SUnknown", Test.SUnknown);

Test.D2 = class extends Test.B
{
    constructor(sb, pb, sd2 = "", pd2 = null)
    {
        super(sb, pb);
        this.sd2 = sd2;
        this.pd2 = pd2;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.sd2);
        ostr.writeValue(this.pd2);
    }

    _iceReadMemberImpl(istr)
    {
        this.sd2 = istr.readString();
        istr.readValue(obj => this.pd2 = obj, Ice.TypeRegistry.getValueType("Test.B"));
    }
};

Ice.defineValue(Test.D2, "::Test::D2");
Ice.TypeRegistry.declareValueType("Test.D2", Test.D2);

Test.D4 = class extends Test.B
{
    constructor(sb, pb, p1 = null, p2 = null)
    {
        super(sb, pb);
        this.p1 = p1;
        this.p2 = p2;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeValue(this.p1);
        ostr.writeValue(this.p2);
    }

    _iceReadMemberImpl(istr)
    {
        istr.readValue(obj => this.p1 = obj, Ice.TypeRegistry.getValueType("Test.B"));
        istr.readValue(obj => this.p2 = obj, Ice.TypeRegistry.getValueType("Test.B"));
    }
};

Ice.defineValue(Test.D4, "::Test::D4");
Ice.TypeRegistry.declareValueType("Test.D4", Test.D4);

Test.UnknownDerivedException = class extends Test.BaseException
{
    constructor(sbe, pb, sude = "", pd2 = null, _cause = "")
    {
        super(sbe, pb, _cause);
        this.sude = sude;
        this.pd2 = pd2;
    }

    static get _parent()
    {
        return Test.BaseException;
    }

    static get _ice_id()
    {
        return "::Test::UnknownDerivedException";
    }

    _mostDerivedType()
    {
        return Test.UnknownDerivedException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeString(this.sude);
        ostr.writeValue(this.pd2);
    }

    _readMemberImpl(istr)
    {
        this.sude = istr.readString();
        istr.readValue(obj => this.pd2 = obj, Ice.TypeRegistry.getValueType("Test.D2"));
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.UnknownDerivedException",
    Test.UnknownDerivedException);

Test.MyClass = class extends Ice.Value
{
    constructor(i = 0)
    {
        super();
        this.i = i;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.i);
    }

    _iceReadMemberImpl(istr)
    {
        this.i = istr.readInt();
    }
};

Ice.defineValue(Test.MyClass, "::Test::MyClass");
Ice.TypeRegistry.declareValueType("Test.MyClass", Test.MyClass);

Test.PSUnknown = class extends Test.Preserved
{
    constructor(pi, ps, psu = "", graph = null, cl = null)
    {
        super(pi, ps);
        this.psu = psu;
        this.graph = graph;
        this.cl = cl;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.psu);
        ostr.writeValue(this.graph);
        ostr.writeValue(this.cl);
    }

    _iceReadMemberImpl(istr)
    {
        this.psu = istr.readString();
        istr.readValue(obj => this.graph = obj, Ice.TypeRegistry.getValueType("Test.PNode"));
        istr.readValue(obj => this.cl = obj, Ice.TypeRegistry.getValueType("Test.MyClass"));
    }
};

Ice.defineValue(Test.PSUnknown, "::Test::PSUnknown");
Ice.TypeRegistry.declareValueType("Test.PSUnknown", Test.PSUnknown);

Test.PSUnknown2 = class extends Test.Preserved
{
    constructor(pi, ps, pb = null)
    {
        super(pi, ps);
        this.pb = pb;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeValue(this.pb);
    }

    _iceReadMemberImpl(istr)
    {
        istr.readValue(obj => this.pb = obj, Ice.TypeRegistry.getValueType("Test.PBase"));
    }
};

Ice.defineValue(Test.PSUnknown2, "::Test::PSUnknown2");
Ice.TypeRegistry.declareValueType("Test.PSUnknown2", Test.PSUnknown2);

Test.PSUnknownException = class extends Test.PreservedException
{
    constructor(p = null, _cause = "")
    {
        super(_cause);
        this.p = p;
    }

    static get _parent()
    {
        return Test.PreservedException;
    }

    static get _ice_id()
    {
        return "::Test::PSUnknownException";
    }

    _mostDerivedType()
    {
        return Test.PSUnknownException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeValue(this.p);
    }

    _readMemberImpl(istr)
    {
        istr.readValue(obj => this.p = obj, Ice.TypeRegistry.getValueType("Test.PSUnknown2"));
    }

    _usesClasses()
    {
        return true;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.PSUnknownException",
    Test.PSUnknownException);
