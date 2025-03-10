// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const cs_abstract = {};

cs_abstract.System = cs_abstract.System || {};

export const System = {};

cs_abstract.as = Ice.defineEnum([
    ['base', 0]]);

cs_abstract._break = class
{
    constructor(readonly = 0)
    {
        this.readonly = readonly;
    }

    _write(ostr)
    {
        ostr.writeInt(this.readonly);
    }

    _read(istr)
    {
        this.readonly = istr.readInt();
    }

    static get minWireSize()
    {
        return  4;
    }
};

Ice.defineStruct(cs_abstract._break, true, false);

cs_abstract.fixed = class extends Ice.UserException
{
    constructor(_for = 0, _cause = "")
    {
        super(_cause);
        this._for = _for;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::cs_abstract::fixed";
    }

    _mostDerivedType()
    {
        return cs_abstract.fixed;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this._for);
    }

    _readMemberImpl(istr)
    {
        this._for = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "cs_abstract.fixed",
    cs_abstract.fixed);

cs_abstract.foreach = class extends cs_abstract.fixed
{
    constructor(_for, goto = 0, Message = 0, _cause = "")
    {
        super(_for, _cause);
        this.goto = goto;
        this.Message = Message;
    }

    static get _parent()
    {
        return cs_abstract.fixed;
    }

    static get _ice_id()
    {
        return "::cs_abstract::foreach";
    }

    _mostDerivedType()
    {
        return cs_abstract.foreach;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.goto);
        ostr.writeInt(this.Message);
    }

    _readMemberImpl(istr)
    {
        this.goto = istr.readInt();
        this.Message = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "cs_abstract.foreach",
    cs_abstract.foreach);

const iceC_cs_abstract__case_ids = [
    "::Ice::Object",
    "::cs_abstract::case"
];

cs_abstract._case = class extends Ice.Object
{
};

cs_abstract.casePrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("cs_abstract.casePrx", cs_abstract.casePrx);

Ice.defineOperations(
    cs_abstract._case,
    cs_abstract.casePrx,
    iceC_cs_abstract__case_ids,
    "::cs_abstract::case",
    {
        "catch": ["_catch", , , , [[3]], [[3]], , , ]
    });

const iceC_cs_abstract_decimal_ids = [
    "::Ice::Object",
    "::cs_abstract::decimal"
];

cs_abstract.decimal = class extends Ice.Object
{
};

cs_abstract.decimalPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("cs_abstract.decimalPrx", cs_abstract.decimalPrx);

Ice.defineOperations(
    cs_abstract.decimal,
    cs_abstract.decimalPrx,
    iceC_cs_abstract_decimal_ids,
    "::cs_abstract::decimal",
    {
        "default": ["_default", , , , , ,
        [
            cs_abstract.foreach
        ], , ]
    });

cs_abstract.delegate = class extends Ice.Value
{
    constructor(_if = 0, _else = null)
    {
        super();
        this._if = _if;
        this._else = _else;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this._if);
        ostr.writeProxy(this._else);
    }

    _iceReadMemberImpl(istr)
    {
        this._if = istr.readInt();
        this._else = istr.readProxy();
    }
};

Ice.defineValue(cs_abstract.delegate, "::cs_abstract::delegate");
Ice.TypeRegistry.declareValueType("cs_abstract.delegate", cs_abstract.delegate);

const iceC_cs_abstract_explicit_ids = [
    "::Ice::Object",
    "::cs_abstract::case",
    "::cs_abstract::decimal",
    "::cs_abstract::explicit"
];

cs_abstract.explicit = class extends Ice.Object
{
    static get _iceImplements()
    {
        return [
            cs_abstract.decimal,
            cs_abstract.case
        ];
    }
};

cs_abstract.explicitPrx = class extends Ice.ObjectPrx
{
    static get _implements()
    {
        return [
            cs_abstract.decimalPrx,
            cs_abstract.casePrx];
    }
};
Ice.TypeRegistry.declareProxyType("cs_abstract.explicitPrx", cs_abstract.explicitPrx);

Ice.defineOperations(
    cs_abstract.explicit,
    cs_abstract.explicitPrx,
    iceC_cs_abstract_explicit_ids,
    "::cs_abstract::explicit");

[cs_abstract._while, cs_abstract._whileHelper] = Ice.defineDictionary(Ice.StringHelper, cs_abstract._break, false, undefined);

cs_abstract.optionalMembers = class extends Ice.Value
{
    constructor(_for = undefined, goto = undefined, _if = undefined, internal = undefined, namespace = undefined)
    {
        super();
        this._for = _for;
        this.goto = goto;
        this._if = _if;
        this.internal = internal;
        this.namespace = namespace;
    }

    _iceWriteMemberImpl(ostr)
    {
        cs_abstract._break.writeOptional(ostr, 1, this._for);
        cs_abstract.as._writeOpt(ostr, 2, this.goto);
        cs_abstract.explicitPrx.writeOptional(ostr, 3, this._if);
        cs_abstract._whileHelper.writeOptional(ostr, 5, this.internal);
        Ice.StringHelper.writeOptional(ostr, 7, this.namespace);
    }

    _iceReadMemberImpl(istr)
    {
        this._for = cs_abstract._break.readOptional(istr, 1);
        this.goto = cs_abstract.as._readOpt(istr, 2);
        this._if = cs_abstract.explicitPrx.readOptional(istr, 3);
        this.internal = cs_abstract._whileHelper.readOptional(istr, 5);
        this.namespace = Ice.StringHelper.readOptional(istr, 7);
    }
};

Ice.defineValue(cs_abstract.optionalMembers, "::cs_abstract::optionalMembers");
Ice.TypeRegistry.declareValueType("cs_abstract.optionalMembers", cs_abstract.optionalMembers);

const iceC_cs_abstract_optionalParams_ids = [
    "::Ice::Object",
    "::cs_abstract::optionalParams"
];

cs_abstract.optionalParams = class extends Ice.Object
{
};

cs_abstract.optionalParamsPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("cs_abstract.optionalParamsPrx", cs_abstract.optionalParamsPrx);

Ice.defineOperations(
    cs_abstract.optionalParams,
    cs_abstract.optionalParamsPrx,
    iceC_cs_abstract_optionalParams_ids,
    "::cs_abstract::optionalParams",
    {
        "for": ["_for", , , [cs_abstract._break, , 1], [[cs_abstract.as._helper, , 2], ["cs_abstract.explicitPrx", , 3], [cs_abstract.whileHelper, , 5], [7, , 7]], , , , ],
        "continue": ["_continue", , , [cs_abstract._break, , 1], [[cs_abstract.as._helper, , 2], ["cs_abstract.explicitPrx", , 3], [cs_abstract.whileHelper, , 5], [7, , 7]], , , , ],
        "in": ["_in", , , [cs_abstract._break, , 1], , [[cs_abstract.as._helper, , 2], ["cs_abstract.explicitPrx", , 3], [cs_abstract.whileHelper, , 5], [7, , 7]], , , ],
        "foreach": [, , , [cs_abstract._break, , 1], , [[cs_abstract.as._helper, , 2], ["cs_abstract.explicitPrx", , 3], [cs_abstract.whileHelper, , 5], [7, , 7]], , , ]
    });

Object.defineProperty(cs_abstract, '_protected', {
    enumerable: true,
    value: 0
});

Object.defineProperty(cs_abstract, 'struct', {
    enumerable: true,
    value: 1
});

const iceC_cs_abstract_System_Test_ids = [
    "::Ice::Object",
    "::cs_abstract::System::Test"
];

cs_abstract.System.Test = class extends Ice.Object
{
};

cs_abstract.System.TestPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("cs_abstract.System.TestPrx", cs_abstract.System.TestPrx);

Ice.defineOperations(
    cs_abstract.System.Test,
    cs_abstract.System.TestPrx,
    iceC_cs_abstract_System_Test_ids,
    "::cs_abstract::System::Test",
    {
        "op": [, , , , , , , , ]
    });

const iceC_System_Test_ids = [
    "::Ice::Object",
    "::System::Test"
];

System.Test = class extends Ice.Object
{
};

System.TestPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("System.TestPrx", System.TestPrx);

Ice.defineOperations(
    System.Test,
    System.TestPrx,
    iceC_System_Test_ids,
    "::System::Test",
    {
        "op": [, , , , , , , , ]
    });
