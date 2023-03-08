//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Clash.ice'
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

    let Clash = _ModuleRegistry.module("Clash");

    const iceC_Clash_Intf_ids = [
        "::Clash::Intf",
        "::Ice::Object"
    ];

    Clash.Intf = class extends Ice.Object
    {
    };

    Clash.IntfPrx = class extends Ice.ObjectPrx
    {
    };

    Slice.defineOperations(Clash.Intf, Clash.IntfPrx, iceC_Clash_Intf_ids, 0,
    {
        "context": [, , , , , , , , , ],
        "current": [, , , , , , , , , ],
        "response": [, , , , , , , , , ],
        "upCast": [, , , , , , , , , ],
        "typeId": [, , , , , , , , , ],
        "del": [, , , , , , , , , ],
        "cookie": [, , , , , , , , , ],
        "sync": [, , , , , , , , , ],
        "inS": [, , , , , , , , , ],
        "istr": [, , , , , , , , , ],
        "ok": [, , , , , , , , , ],
        "target": [, , , , , , , , , ],
        "op": [, , , , , [[7], [7], [7], [7], [7], [7], [7], [7], [7], [7], [7], [7, , 1], [7, , 2]], , , , ],
        "opOut": [, , , , , , [[7], [7], [7], [7], [7], [7], [7], [7], [7], [7], [7], [7, , 1], [7, , 2]], , , ]
    });

    const iceC_Clash_Cls_ids = [
        "::Clash::Cls",
        "::Ice::Object"
    ];

    Clash.Cls = class extends Ice.Value
    {
        constructor(s = null, context = "", current = 0, response = 0, upCast = "", typeId = 0, del = 0, cookie = undefined, ex = "", result = 0, istr = "", ostr = "", inS = "", _in = "", proxy = "", stream = undefined, target = "")
        {
            super();
            this.s = s;
            this.context = context;
            this.current = current;
            this.response = response;
            this.upCast = upCast;
            this.typeId = typeId;
            this.del = del;
            this.cookie = cookie;
            this.ex = ex;
            this.result = result;
            this.istr = istr;
            this.ostr = ostr;
            this.inS = inS;
            this._in = _in;
            this.proxy = proxy;
            this.stream = stream;
            this.target = target;
        }

        _iceWriteMemberImpl(ostr)
        {
            Clash.IntfPrx.write(ostr, this.s);
            ostr.writeString(this.context);
            ostr.writeInt(this.current);
            ostr.writeShort(this.response);
            ostr.writeString(this.upCast);
            ostr.writeInt(this.typeId);
            ostr.writeShort(this.del);
            ostr.writeString(this.ex);
            ostr.writeInt(this.result);
            ostr.writeString(this.istr);
            ostr.writeString(this.ostr);
            ostr.writeString(this.inS);
            ostr.writeString(this._in);
            ostr.writeString(this.proxy);
            ostr.writeString(this.target);
            Ice.ShortHelper.writeOptional(ostr, 1, this.cookie);
            Ice.IntHelper.writeOptional(ostr, 2, this.stream);
        }

        _iceReadMemberImpl(istr)
        {
            this.s = Clash.IntfPrx.read(istr, this.s);
            this.context = istr.readString();
            this.current = istr.readInt();
            this.response = istr.readShort();
            this.upCast = istr.readString();
            this.typeId = istr.readInt();
            this.del = istr.readShort();
            this.ex = istr.readString();
            this.result = istr.readInt();
            this.istr = istr.readString();
            this.ostr = istr.readString();
            this.inS = istr.readString();
            this._in = istr.readString();
            this.proxy = istr.readString();
            this.target = istr.readString();
            this.cookie = Ice.ShortHelper.readOptional(istr, 1);
            this.stream = Ice.IntHelper.readOptional(istr, 2);
        }
    };

    Slice.defineValue(Clash.Cls, iceC_Clash_Cls_ids[0], false);

    Clash.St = class
    {
        constructor(v = "", istr = 0, ostr = 0, rhs = 0)
        {
            this.v = v;
            this.istr = istr;
            this.ostr = ostr;
            this.rhs = rhs;
        }

        _write(ostr)
        {
            ostr.writeString(this.v);
            ostr.writeShort(this.istr);
            ostr.writeInt(this.ostr);
            ostr.writeInt(this.rhs);
        }

        _read(istr)
        {
            this.v = istr.readString();
            this.istr = istr.readShort();
            this.ostr = istr.readInt();
            this.rhs = istr.readInt();
        }

        static get minWireSize()
        {
            return  11;
        }
    };

    Slice.defineStruct(Clash.St, true, true);

    Clash.Ex = class extends Ice.UserException
    {
        constructor(istr = 0, ostr = 0, _cause = "")
        {
            super(_cause);
            this.istr = istr;
            this.ostr = ostr;
        }

        static get _parent()
        {
            return Ice.UserException;
        }

        static get _id()
        {
            return "::Clash::Ex";
        }

        _mostDerivedType()
        {
            return Clash.Ex;
        }

        _writeMemberImpl(ostr)
        {
            ostr.writeShort(this.istr);
            ostr.writeInt(this.ostr);
        }

        _readMemberImpl(istr)
        {
            this.istr = istr.readShort();
            this.ostr = istr.readInt();
        }
    };
    exports.Clash = Clash;
}
(typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? module : undefined,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? require :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self.Ice._require : window.Ice._require,
 typeof(global) !== "undefined" && typeof(global.process) !== "undefined" ? exports :
 (typeof WorkerGlobalScope !== "undefined" && self instanceof WorkerGlobalScope) ? self : window));
