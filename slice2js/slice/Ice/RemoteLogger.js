//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `RemoteLogger.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

import * as Ice_ArrayUtil from "../Ice/ArrayUtil.js";
import * as Ice_EnumBase from "../Ice/EnumBase.js";
import * as Ice_Exception from "../Ice/Exception.js";
import * as Ice_Long from "../Ice/Long.js";
import * as Ice_Object from "../Ice/Object.js";
import * as Ice_ObjectPrx from "../Ice/ObjectPrx.js";
import * as Ice_Operation from "../Ice/Operation.js";
import * as Ice_Stream from "../Ice/Stream.js";
import * as Ice_StreamHelpers from "../Ice/StreamHelpers.js";
import * as Ice_Struct from "../Ice/Struct.js";
import * as Ice_TypeRegistry from "../Ice/TypeRegistry.js";
import * as Ice_Value from "../Ice/Value.js";
import { Ice as Ice_BuiltinSequences } from "./BuiltinSequences.js"

const Ice = {
    ...Ice_ArrayUtil,
    ...Ice_EnumBase,
    ...Ice_Exception,
    ...Ice_Long,
    ...Ice_Object,
    ...Ice_ObjectPrx,
    ...Ice_Operation,
    ...Ice_Stream,
    ...Ice_StreamHelpers,
    ...Ice_Struct,
    ...Ice_TypeRegistry,
    ...Ice_Value,
    ...Ice_BuiltinSequences,
};


export { Ice };

/**
 *  An enumeration representing the different types of log messages.
 **/
Ice.LogMessageType = Ice.defineEnum([
    ['PrintMessage', 0], ['TraceMessage', 1], ['WarningMessage', 2], ['ErrorMessage', 3]]);

Ice.LogMessageTypeSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LogMessageType._helper, false);

/**
 *  A complete log message.
 **/
Ice.LogMessage = class
{
    constructor(type = Ice.LogMessageType.PrintMessage, timestamp = new Ice.Long(0, 0), traceCategory = "", message = "")
    {
        this.type = type;
        this.timestamp = timestamp;
        this.traceCategory = traceCategory;
        this.message = message;
    }

    _write(ostr)
    {
        Ice.LogMessageType._write(ostr, this.type);
        ostr.writeLong(this.timestamp);
        ostr.writeString(this.traceCategory);
        ostr.writeString(this.message);
    }

    _read(istr)
    {
        this.type = Ice.LogMessageType._read(istr);
        this.timestamp = istr.readLong();
        this.traceCategory = istr.readString();
        this.message = istr.readString();
    }

    static get minWireSize()
    {
        return  11;
    }
};

Ice.defineStruct(Ice.LogMessage, true, true);

Ice.LogMessageSeqHelper = Ice.StreamHelpers.generateSeqHelper(Ice.LogMessage, false);

const iceC_Ice_RemoteLogger_ids = [
    "::Ice::Object",
    "::Ice::RemoteLogger"
];

/**
 *  The Ice remote logger interface. An application can implement a RemoteLogger to receive the log messages sent
 *  to the local {@link RemoteLogger} of another Ice application.
 **/
Ice.RemoteLogger = class extends Ice.Object
{
};

Ice.RemoteLoggerPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Ice.RemoteLoggerPrx", Ice.RemoteLoggerPrx);

Ice.defineOperations(
    Ice.RemoteLogger,
    Ice.RemoteLoggerPrx,
    iceC_Ice_RemoteLogger_ids,
    "::Ice::RemoteLogger",
    {
        "init": [, , , , [[7], [Ice.LogMessageSeqHelper]], , , , ],
        "log": [, , , , [[Ice.LogMessage]], , , , ]
    });

/**
 *  Thrown when the provided RemoteLogger was previously attached to a LoggerAdmin.
 **/
Ice.RemoteLoggerAlreadyAttachedException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _id()
    {
        return "::Ice::RemoteLoggerAlreadyAttachedException";
    }

    _mostDerivedType()
    {
        return Ice.RemoteLoggerAlreadyAttachedException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Ice.RemoteLoggerAlreadyAttachedException",
    Ice.RemoteLoggerAlreadyAttachedException);

const iceC_Ice_LoggerAdmin_ids = [
    "::Ice::LoggerAdmin",
    "::Ice::Object"
];

/**
 *  The interface of the admin object that allows an Ice application the attach its
 *  {@link RemoteLogger} to the {@link RemoteLogger} of this admin object's Ice communicator.
 **/
Ice.LoggerAdmin = class extends Ice.Object
{
};

Ice.LoggerAdminPrx = class extends Ice.ObjectPrx
{
};
Ice.TypeRegistry.declareProxyType("Ice.LoggerAdminPrx", Ice.LoggerAdminPrx);

Ice.defineOperations(
    Ice.LoggerAdmin,
    Ice.LoggerAdminPrx,
    iceC_Ice_LoggerAdmin_ids,
    "::Ice::LoggerAdmin",
    {
        "attachRemoteLogger": [, , , , [["Ice.RemoteLoggerPrx"], [Ice.LogMessageTypeSeqHelper], [Ice.StringSeqHelper], [3]], ,
        [
            Ice.RemoteLoggerAlreadyAttachedException
        ], , ],
        "detachRemoteLogger": [, , , [1], [["Ice.RemoteLoggerPrx"]], , , , ],
        "getLog": [, , , [Ice.LogMessageSeqHelper], [[Ice.LogMessageTypeSeqHelper], [Ice.StringSeqHelper], [3]], [[7]], , , ]
    });
