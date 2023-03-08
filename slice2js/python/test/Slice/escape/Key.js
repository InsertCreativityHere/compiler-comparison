//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

    let and = _ModuleRegistry.module("and");

    and.assert = Slice.defineEnum([
        ['_break', 0]]);

    and._continue = class
    {
        constructor(def = 0)
        {
            this.def = def;
        }

        _write(ostr)
        {
            ostr.writeInt(this.def);
        }

        _read(istr)
        {
            this.def = istr.readInt();
        }

        static get minWireSize()
        {
            return  4;
        }
    };

    Slice.defineStruct(and._continue, true, false);

    const iceC_and_del_ids = [
        "::Ice::Object",
        "::and::del"
    ];

    and.del = class extends Ice.Object
    {
    };

    and.delPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(and.del, and.delPrx, iceC_and_del_ids, 1,
    {
        "elif": [, , , , , [[3]], [[3]], , , ]
    });

    const iceC_and_exec_ids = [
        "::Ice::Object",
        "::and::exec"
    ];

    and.exec = class extends Ice.Object
    {
    };

    and.execPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(and.exec, and.execPrx, iceC_and_exec_ids, 1,
    {
        "finally": ["_finally", , , , , , , , , ]
    });

    const iceC_and__for_ids = [
        "::Ice::Object",
        "::and::for"
    ];

    and._for = class extends Ice.Value
    {
        constructor(lambda = 0, from = null, global = 0)
        {
            super();
            this.lambda = lambda;
            this.from = from;
            this.global = global;
        }

        _iceWriteMemberImpl(ostr)
        {
            ostr.writeInt(this.lambda);
            and.execPrx.write(ostr, this.from);
            ostr.writeInt(this.global);
        }

        _iceReadMemberImpl(istr)
        {
            this.lambda = istr.readInt();
            this.from = and.execPrx.read(istr, this.from);
            this.global = istr.readInt();
        }
    };

    Slice.defineValue(and._for, iceC_and__for_ids[1], false);

    const iceC_and__if_ids = [
        "::Ice::Object",
        "::and::del",
        "::and::exec",
        "::and::if"
    ];

    and.if = class extends Ice.Object
    {
        static get _iceImplements()
        {
            return [
                and.exec,
                and.del
            ];
        }
    };

    and.ifPrx = class extends Ice.ObjectPrx
    {
        static get _implements()
        {
            return [
                and.execPrx,
                and.delPrx];
        }
    };

    Slice.defineOperations(and.if, and.ifPrx, iceC_and__if_ids, 3);

    Slice.defineSequence(and, "_importHelper", "and.assert._helper", false);

    Slice.defineDictionary(and, "_in", "_inHelper", "Ice.StringHelper", "and.assert._helper", false, undefined, undefined);

    and.is = class extends Ice.UserException
    {
        constructor(lambda = 0, _cause = "")
        {
            super(_cause);
            this.lambda = lambda;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::and::is";
        }

        _mostDerivedType()
        {
            return and.is;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeInt(this.lambda);
        }

        _readMemberImpl(istr)
        {
            this.lambda = istr.readInt();
        }
    };

    and.not = class extends and.is
    {
        constructor(lambda, or = 0, pass = 0, _cause = "")
        {
            super(lambda, _cause);
            this.or = or;
            this.pass = pass;
        }

        static get _parent()
        {
            return and.is;
        }

        static get _id()
        {
            return "::and::not";
        }

        _mostDerivedType()
        {
            return and.not;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeInt(this.or);
            ostr.writeInt(this.pass);
        }

        _readMemberImpl(istr)
        {
            this.or = istr.readInt();
            this.pass = istr.readInt();
        }
    };

    Object.defineProperty(and, 'lambda', {
        value: 0
    });

    and.EnumNone = Slice.defineEnum([
        ['None', 0]]);
    exports.and = and;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
