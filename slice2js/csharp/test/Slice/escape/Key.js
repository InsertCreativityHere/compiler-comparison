//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

(function(module, require, exports)
{
    const Ice = require("ice").Ice;
    const _ModuleRegistry = Ice._ModuleRegistry;
    const Slice = Ice.Slice;

    let abstract = _ModuleRegistry.module("abstract");

    abstract.as = Slice.defineEnum([
        ['base', 0]]);

    abstract._break = class
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

    Slice.defineStruct(abstract._break, true, false);

    const iceC_abstract__case_ids = [
        "::Ice::Object",
        "::abstract::case"
    ];

    abstract.case = class extends Ice.Object
    {
    };

    abstract.casePrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(abstract.case, abstract.casePrx, iceC_abstract__case_ids, "::abstract::case",
    {
        "catch": ["_catch", , , , [[3]], [[3]], , , ]
    });

    const iceC_abstract_decimal_ids = [
        "::Ice::Object",
        "::abstract::decimal"
    ];

    abstract.decimal = class extends Ice.Object
    {
    };

    abstract.decimalPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(abstract.decimal, abstract.decimalPrx, iceC_abstract_decimal_ids, "::abstract::decimal",
    {
        "default": ["_default", , , , , , , , ]
    });

    abstract.delegate = class extends Ice.Value
    {
        constructor(_if = 0, _else = null, event = 0)
        {
            super();
            this._if = _if;
            this._else = _else;
            this.event = event;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this._if);
            abstract.casePrx.write(ostr, this._else);
            ostr.writeInt(this.event);
        }

        _iceReadMemberImpl(istr)
        {
            this._if = istr.readInt();
            this._else = abstract.casePrx.read(istr, this._else);
            this.event = istr.readInt();
        }
    };

    Slice.defineValue(abstract.delegate, "::abstract::delegate");

    const iceC_abstract_explicit_ids = [
        "::Ice::Object",
        "::abstract::case",
        "::abstract::decimal",
        "::abstract::explicit"
    ];

    abstract.explicit = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                abstract.decimal,
                abstract.case
            ];
        }
    };

    abstract.explicitPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                abstract.decimalPrx,
                abstract.casePrx];
        }
    };

    Slice.defineOperations(abstract.explicit, abstract.explicitPrx, iceC_abstract_explicit_ids, "::abstract::explicit");

    Slice.defineDictionary(abstract, "_while", "_whileHelper", "Ice.StringHelper", "abstract._break", false, undefined, undefined);

    abstract.optionalMembers = class extends Ice.Value
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
            abstract._break.writeOptional(ostr, 1, this._for);
            abstract.as._writeOpt(ostr, 2, this.goto);
            abstract.explicitPrx.writeOptional(ostr, 3, this._if);
            abstract._whileHelper.writeOptional(ostr, 5, this.internal);
            Ice.StringHelper.writeOptional(ostr, 7, this.namespace);
        }

        _iceReadMemberImpl(istr)
        {
            this._for = abstract._break.readOptional(istr, 1);
            this.goto = abstract.as._readOpt(istr, 2);
            this._if = abstract.explicitPrx.readOptional(istr, 3);
            this.internal = abstract._whileHelper.readOptional(istr, 5);
            this.namespace = Ice.StringHelper.readOptional(istr, 7);
        }
    };

    Slice.defineValue(abstract.optionalMembers, "::abstract::optionalMembers");

    const iceC_abstract_optionalParams_ids = [
        "::Ice::Object",
        "::abstract::optionalParams"
    ];

    abstract.optionalParams = class extends Ice.Object
    {
    };

    abstract.optionalParamsPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(abstract.optionalParams, abstract.optionalParamsPrx, iceC_abstract_optionalParams_ids, "::abstract::optionalParams",
    {
        "for": ["_for", , , [abstract._break, , 1], [[abstract.as._helper, , 2], ["abstract.explicitPrx", , 3], ["abstract.whileHelper", , 5], [7, , 7]], , , , ],
        "continue": ["_continue", , , [abstract._break, , 1], [[abstract.as._helper, , 2], ["abstract.explicitPrx", , 3], ["abstract.whileHelper", , 5], [7, , 7]], , , , ],
        "in": ["_in", , , [abstract._break, , 1], , [[abstract.as._helper, , 2], ["abstract.explicitPrx", , 3], ["abstract.whileHelper", , 5], [7, , 7]], , , ],
        "foreach": [, , , [abstract._break, , 1], , [[abstract.as._helper, , 2], ["abstract.explicitPrx", , 3], ["abstract.whileHelper", , 5], [7, , 7]], , , ]
    });

    abstract.fixed = class extends Ice.UserException
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

        static get _id()
        {
            return "::abstract::fixed";
        }

        _mostDerivedType()
        {
            return abstract.fixed;
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

    abstract.foreach = class extends abstract.fixed
    {
        constructor(_for, goto = 0, _if = 0, _cause = "")
        {
            super(_for, _cause);
            this.goto = goto;
            this._if = _if;
        }

        static get _parent()
        {
            return abstract.fixed;
        }

        static get _id()
        {
            return "::abstract::foreach";
        }

        _mostDerivedType()
        {
            return abstract.foreach;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeInt(this.goto);
            ostr.writeInt(this._if);
        }

        _readMemberImpl(istr)
        {
            this.goto = istr.readInt();
            this._if = istr.readInt();
        }
    };

    abstract.BaseMethods = class extends Ice.UserException
    {
        constructor(Data = 0, HelpLink = 0, InnerException = 0, Message = 0, Source = 0, StackTrace = 0, TargetSite = 0, HResult = 0, Equals = 0, GetBaseException = 0, GetHashCode = 0, GetObjectData = 0, GetType = 0, ReferenceEquals = 0, ToString = 0, _cause = "")
        {
            super(_cause);
            this.Data = Data;
            this.HelpLink = HelpLink;
            this.InnerException = InnerException;
            this.Message = Message;
            this.Source = Source;
            this.StackTrace = StackTrace;
            this.TargetSite = TargetSite;
            this.HResult = HResult;
            this.Equals = Equals;
            this.GetBaseException = GetBaseException;
            this.GetHashCode = GetHashCode;
            this.GetObjectData = GetObjectData;
            this.GetType = GetType;
            this.ReferenceEquals = ReferenceEquals;
            this.ToString = ToString;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::abstract::BaseMethods";
        }

        _mostDerivedType()
        {
            return abstract.BaseMethods;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeInt(this.Data);
            ostr.writeInt(this.HelpLink);
            ostr.writeInt(this.InnerException);
            ostr.writeInt(this.Message);
            ostr.writeInt(this.Source);
            ostr.writeInt(this.StackTrace);
            ostr.writeInt(this.TargetSite);
            ostr.writeInt(this.HResult);
            ostr.writeInt(this.Equals);
            ostr.writeInt(this.GetBaseException);
            ostr.writeInt(this.GetHashCode);
            ostr.writeInt(this.GetObjectData);
            ostr.writeInt(this.GetType);
            ostr.writeInt(this.ReferenceEquals);
            ostr.writeInt(this.ToString);
        }

        _readMemberImpl(istr)
        {
            this.Data = istr.readInt();
            this.HelpLink = istr.readInt();
            this.InnerException = istr.readInt();
            this.Message = istr.readInt();
            this.Source = istr.readInt();
            this.StackTrace = istr.readInt();
            this.TargetSite = istr.readInt();
            this.HResult = istr.readInt();
            this.Equals = istr.readInt();
            this.GetBaseException = istr.readInt();
            this.GetHashCode = istr.readInt();
            this.GetObjectData = istr.readInt();
            this.GetType = istr.readInt();
            this.ReferenceEquals = istr.readInt();
            this.ToString = istr.readInt();
        }
    };

    const iceC_abstract_implicit_ids = [
        "::Ice::Object",
        "::abstract::implicit"
    ];

    abstract.implicit = class extends Ice.Object
    {
    };

    abstract.implicitPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(abstract.implicit, abstract.implicitPrx, iceC_abstract_implicit_ids, "::abstract::implicit",
    {
        "in": ["_in", , , [abstract.as._helper], [[abstract._break], ["abstract.delegate", true], ["abstract.explicitPrx"], ["abstract.casePrx"], ["abstract.decimalPrx"], ["abstract.delegate", true], [3], [3], [3]], ,
        [
            abstract.foreach,
            abstract.fixed
        ], true, ]
    });

    Object.defineProperty(abstract, '_protected', {
        value: 0
    });

    Object.defineProperty(abstract, '_public', {
        value: 0
    });

    abstract.System = _ModuleRegistry.module("abstract.System");

    const iceC_abstract_System_Test_ids = [
        "::Ice::Object",
        "::abstract::System::Test"
    ];

    abstract.System.Test = class extends Ice.Object
    {
    };

    abstract.System.TestPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(abstract.System.Test, abstract.System.TestPrx, iceC_abstract_System_Test_ids, "::abstract::System::Test",
    {
        "op": [, , , , , , , , ]
    });

    let System = _ModuleRegistry.module("System");

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

    Slice.defineOperations(System.Test, System.TestPrx, iceC_System_Test_ids, "::System::Test",
    {
        "op": [, , , , , , , , ]
    });
    exports.abstract = abstract;
    exports.System = System;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
