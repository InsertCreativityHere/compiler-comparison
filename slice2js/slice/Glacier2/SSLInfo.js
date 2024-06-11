//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `SSLInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import * as Ice_Long from "../Ice/Long.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Struct from "../Ice/Struct.js";
import { Ice as Ice_Ice_BuiltinSequences } from "../Ice/BuiltinSequences.js"

const Ice = {
    ...Ice_Long,
    ...Ice_ObjectPrx,
    ...Ice_Struct,
    ...Ice_Ice_BuiltinSequences,
};


export const Glacier2 = {};

/**
 *  Information taken from an SSL connection used for permissions verification.
 *  @see PermissionsVerifier
 **/
Glacier2.SSLInfo = class
{
    constructor(remoteHost = "", remotePort = 0, localHost = "", localPort = 0, cipher = "", certs = null)
    {
        this.remoteHost = remoteHost;
        this.remotePort = remotePort;
        this.localHost = localHost;
        this.localPort = localPort;
        this.cipher = cipher;
        this.certs = certs;
    }

    _write(ostr)
    {
        ostr.writeString(this.remoteHost);
        ostr.writeInt(this.remotePort);
        ostr.writeString(this.localHost);
        ostr.writeInt(this.localPort);
        ostr.writeString(this.cipher);
        Ice.StringSeqHelper.write(ostr, this.certs);
    }

    _read(istr)
    {
        this.remoteHost = istr.readString();
        this.remotePort = istr.readInt();
        this.localHost = istr.readString();
        this.localPort = istr.readInt();
        this.cipher = istr.readString();
        this.certs = Ice.StringSeqHelper.read(istr);
    }

    static get minWireSize()
    {
        return  12;
    }
};

Ice.defineStruct(Glacier2.SSLInfo, false, true);
