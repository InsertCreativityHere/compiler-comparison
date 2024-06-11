//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";

import { 
    Test as Test_Test, } from "./Test.js"

const Test = {
    ...Test_Test,
};

export { Test };

Test.D3 = class extends Test.B
{
    constructor(sb, pb, sd3 = "", pd3 = null)
    {
        super(sb, pb);
        this.sd3 = sd3;
        this.pd3 = pd3;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.sd3);
        ostr.writeValue(this.pd3);
    }

    _iceReadMemberImpl(istr)
    {
        this.sd3 = istr.readString();
        istr.readValue(obj => this.pd3 = obj, Ice.TypeRegistry.getValueType("Test.B"));
    }
};

Ice.defineValue(Test.D3, "::Test::D3");
Ice.TypeRegistry.declareValueType("Test.D3", Test.D3);

Test.PCUnknown = class extends Test.PBase
{
    constructor(pi, pu = "")
    {
        super(pi);
        this.pu = pu;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.pu);
    }

    _iceReadMemberImpl(istr)
    {
        this.pu = istr.readString();
    }
};

Ice.defineValue(Test.PCUnknown, "::Test::PCUnknown");
Ice.TypeRegistry.declareValueType("Test.PCUnknown", Test.PCUnknown);

Test.PCDerived = class extends Test.PDerived
{
    constructor(pi, ps, pb, pbs = null)
    {
        super(pi, ps, pb);
        this.pbs = pbs;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.PBaseSeqHelper.write(ostr, this.pbs);
    }

    _iceReadMemberImpl(istr)
    {
        this.pbs = Test.PBaseSeqHelper.read(istr);
    }
};

Ice.defineValue(Test.PCDerived, "::Test::PCDerived");
Ice.TypeRegistry.declareValueType("Test.PCDerived", Test.PCDerived);

Test.PCDerived2 = class extends Test.PCDerived
{
    constructor(pi, ps, pb, pbs, pcd2 = 0)
    {
        super(pi, ps, pb, pbs);
        this.pcd2 = pcd2;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.pcd2);
    }

    _iceReadMemberImpl(istr)
    {
        this.pcd2 = istr.readInt();
    }
};

Ice.defineValue(Test.PCDerived2, "::Test::PCDerived2");
Ice.TypeRegistry.declareValueType("Test.PCDerived2", Test.PCDerived2);

Test.PCDerived3 = class extends Test.PCDerived2
{
    constructor(pi, ps, pb, pbs, pcd2, pcd3 = null)
    {
        super(pi, ps, pb, pbs, pcd2);
        this.pcd3 = pcd3;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeValue(this.pcd3);
    }

    _iceReadMemberImpl(istr)
    {
        istr.readValue(obj => this.pcd3 = obj, Ice.TypeRegistry.getValueType("Ice.Value"));
    }
};

Ice.defineValue(Test.PCDerived3, "::Test::PCDerived3");
Ice.TypeRegistry.declareValueType("Test.PCDerived3", Test.PCDerived3);

Test.CompactPCDerived = class extends Test.CompactPDerived
{
    constructor(pi, ps, pb, pbs = null)
    {
        super(pi, ps, pb);
        this.pbs = pbs;
    }

    static get _iceCompactId()
    {
        return 57;
    }

    _iceWriteMemberImpl(ostr)
    {
        Test.PBaseSeqHelper.write(ostr, this.pbs);
    }

    _iceReadMemberImpl(istr)
    {
        this.pbs = Test.PBaseSeqHelper.read(istr);
    }
};

Ice.defineValue(Test.CompactPCDerived, "::Test::CompactPCDerived", 57);
Ice.TypeRegistry.declareValueType("Test.CompactPCDerived", Test.CompactPCDerived);
