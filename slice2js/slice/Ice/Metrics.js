//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Metrics.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

/* eslint-disable */
/* jshint ignore: start */

/* slice2js browser-bundle-skip */
const _ModuleRegistry = require("../Ice/ModuleRegistry").Ice._ModuleRegistry;
require("../Ice/Object");
require("../Ice/Value");
require("../Ice/ObjectPrx");
require("../Ice/Operation");
require("../Ice/Struct");
require("../Ice/Exception");
require("../Ice/Long");
require("../Ice/HashMap");
require("../Ice/HashUtil");
require("../Ice/ArrayUtil");
require("../Ice/StreamHelpers");
require("./BuiltinSequences");
const Ice = _ModuleRegistry.module("Ice");

const Slice = Ice.Slice;
/* slice2js browser-bundle-skip-end */
/* slice2js browser-bundle-skip */

let IceMX = _ModuleRegistry.module("IceMX");
/* slice2js browser-bundle-skip-end */

Slice.defineDictionary(IceMX, "StringIntDict", "StringIntDictHelper", "Ice.StringHelper", "Ice.IntHelper", false, undefined, undefined);

/**
 *  The base class for metrics. A metrics object represents a collection of measurements associated to a given a
 *  system.
 **/
IceMX.Metrics = class extends Ice.Value
{
    constructor(id = "", total = new Ice.Long(0, 0), current = 0, totalLifetime = new Ice.Long(0, 0), failures = 0)
    {
        super();
        this.id = id;
        this.total = total;
        this.current = current;
        this.totalLifetime = totalLifetime;
        this.failures = failures;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeString(this.id);
        ostr.writeLong(this.total);
        ostr.writeInt(this.current);
        ostr.writeLong(this.totalLifetime);
        ostr.writeInt(this.failures);
    }

    _iceReadMemberImpl(istr)
    {
        this.id = istr.readString();
        this.total = istr.readLong();
        this.current = istr.readInt();
        this.totalLifetime = istr.readLong();
        this.failures = istr.readInt();
    }
};

Slice.defineValue(IceMX.Metrics, "::IceMX::Metrics");

/**
 *  A structure to keep track of failures associated with a given metrics.
 **/
IceMX.MetricsFailures = class
{
    constructor(id = "", failures = null)
    {
        this.id = id;
        this.failures = failures;
    }

    _write(ostr)
    {
        ostr.writeString(this.id);
        IceMX.StringIntDictHelper.write(ostr, this.failures);
    }

    _read(istr)
    {
        this.id = istr.readString();
        this.failures = IceMX.StringIntDictHelper.read(istr);
    }

    static get minWireSize()
    {
        return  2;
    }
};

Slice.defineStruct(IceMX.MetricsFailures, false, true);

Slice.defineSequence(IceMX, "MetricsFailuresSeqHelper", "IceMX.MetricsFailures", false);

Slice.defineSequence(IceMX, "MetricsMapHelper", "Ice.ObjectHelper", false, "IceMX.Metrics");

Slice.defineDictionary(IceMX, "MetricsView", "MetricsViewHelper", "Ice.StringHelper", "IceMX.MetricsMapHelper", false, undefined, undefined, Ice.ArrayUtil.equals);

/**
 *  Raised if a metrics view cannot be found.
 **/
IceMX.UnknownMetricsView = class extends Ice.UserException
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
        return "::IceMX::UnknownMetricsView";
    }

    _mostDerivedType()
    {
        return IceMX.UnknownMetricsView;
    }
};

const iceC_IceMX_MetricsAdmin_ids = [
    "::Ice::Object",
    "::IceMX::MetricsAdmin"
];

/**
 *  The metrics administrative facet interface. This interface allows remote administrative clients to access
 *  metrics of an application that enabled the Ice administrative facility and configured some metrics views.
 **/
IceMX.MetricsAdmin = class extends Ice.Object
{
};

IceMX.MetricsAdminPrx = class extends Ice.ObjectPrx
{
};

Slice.defineOperations(IceMX.MetricsAdmin, IceMX.MetricsAdminPrx, iceC_IceMX_MetricsAdmin_ids, "::IceMX::MetricsAdmin",
{
    "getMetricsViewNames": [, , 2, ["Ice.StringSeqHelper"], , [["Ice.StringSeqHelper"]], , , ],
    "enableMetricsView": [, , 2, , [[7]], ,
    [
        IceMX.UnknownMetricsView
    ], , ],
    "disableMetricsView": [, , 2, , [[7]], ,
    [
        IceMX.UnknownMetricsView
    ], , ],
    "getMetricsView": [, , 2, ["IceMX.MetricsViewHelper"], [[7]], [[4]],
    [
        IceMX.UnknownMetricsView
    ], , true],
    "getMapMetricsFailures": [, , 2, ["IceMX.MetricsFailuresSeqHelper"], [[7], [7]], ,
    [
        IceMX.UnknownMetricsView
    ], , ],
    "getMetricsFailures": [, , 2, [IceMX.MetricsFailures], [[7], [7], [7]], ,
    [
        IceMX.UnknownMetricsView
    ], , ]
});

/**
 *  Provides information on the number of threads currently in use and their activity.
 **/
IceMX.ThreadMetrics = class extends IceMX.Metrics
{
    constructor(id, total, current, totalLifetime, failures, inUseForIO = 0, inUseForUser = 0, inUseForOther = 0)
    {
        super(id, total, current, totalLifetime, failures);
        this.inUseForIO = inUseForIO;
        this.inUseForUser = inUseForUser;
        this.inUseForOther = inUseForOther;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.inUseForIO);
        ostr.writeInt(this.inUseForUser);
        ostr.writeInt(this.inUseForOther);
    }

    _iceReadMemberImpl(istr)
    {
        this.inUseForIO = istr.readInt();
        this.inUseForUser = istr.readInt();
        this.inUseForOther = istr.readInt();
    }
};

Slice.defineValue(IceMX.ThreadMetrics, "::IceMX::ThreadMetrics");

/**
 *  Provides information on servant dispatch.
 **/
IceMX.DispatchMetrics = class extends IceMX.Metrics
{
    constructor(id, total, current, totalLifetime, failures, userException = 0, size = new Ice.Long(0, 0), replySize = new Ice.Long(0, 0))
    {
        super(id, total, current, totalLifetime, failures);
        this.userException = userException;
        this.size = size;
        this.replySize = replySize;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.userException);
        ostr.writeLong(this.size);
        ostr.writeLong(this.replySize);
    }

    _iceReadMemberImpl(istr)
    {
        this.userException = istr.readInt();
        this.size = istr.readLong();
        this.replySize = istr.readLong();
    }
};

Slice.defineValue(IceMX.DispatchMetrics, "::IceMX::DispatchMetrics");

/**
 *  Provides information on child invocations. A child invocation is either remote (sent over an Ice connection) or
 *  collocated. An invocation can have multiple child invocation if it is retried. Child invocation metrics are
 *  embedded within {@link InvocationMetrics}.
 **/
IceMX.ChildInvocationMetrics = class extends IceMX.Metrics
{
    constructor(id, total, current, totalLifetime, failures, size = new Ice.Long(0, 0), replySize = new Ice.Long(0, 0))
    {
        super(id, total, current, totalLifetime, failures);
        this.size = size;
        this.replySize = replySize;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeLong(this.size);
        ostr.writeLong(this.replySize);
    }

    _iceReadMemberImpl(istr)
    {
        this.size = istr.readLong();
        this.replySize = istr.readLong();
    }
};

Slice.defineValue(IceMX.ChildInvocationMetrics, "::IceMX::ChildInvocationMetrics");

/**
 *  Provides information on invocations that are collocated. Collocated metrics are embedded within
 *  {@link InvocationMetrics}.
 **/
IceMX.CollocatedMetrics = class extends IceMX.ChildInvocationMetrics
{
    constructor(id, total, current, totalLifetime, failures, size, replySize)
    {
        super(id, total, current, totalLifetime, failures, size, replySize);
    }
};

Slice.defineValue(IceMX.CollocatedMetrics, "::IceMX::CollocatedMetrics");

/**
 *  Provides information on invocations that are specifically sent over Ice connections. Remote metrics are embedded
 *  within {@link InvocationMetrics}.
 **/
IceMX.RemoteMetrics = class extends IceMX.ChildInvocationMetrics
{
    constructor(id, total, current, totalLifetime, failures, size, replySize)
    {
        super(id, total, current, totalLifetime, failures, size, replySize);
    }
};

Slice.defineValue(IceMX.RemoteMetrics, "::IceMX::RemoteMetrics");

/**
 *  Provide measurements for proxy invocations. Proxy invocations can either be sent over the wire or be collocated.
 **/
IceMX.InvocationMetrics = class extends IceMX.Metrics
{
    constructor(id, total, current, totalLifetime, failures, retry = 0, userException = 0, remotes = null, collocated = null)
    {
        super(id, total, current, totalLifetime, failures);
        this.retry = retry;
        this.userException = userException;
        this.remotes = remotes;
        this.collocated = collocated;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.retry);
        ostr.writeInt(this.userException);
        IceMX.MetricsMapHelper.write(ostr, this.remotes);
        IceMX.MetricsMapHelper.write(ostr, this.collocated);
    }

    _iceReadMemberImpl(istr)
    {
        this.retry = istr.readInt();
        this.userException = istr.readInt();
        this.remotes = IceMX.MetricsMapHelper.read(istr);
        this.collocated = IceMX.MetricsMapHelper.read(istr);
    }
};

Slice.defineValue(IceMX.InvocationMetrics, "::IceMX::InvocationMetrics");

/**
 *  Provides information on the data sent and received over Ice connections.
 **/
IceMX.ConnectionMetrics = class extends IceMX.Metrics
{
    constructor(id, total, current, totalLifetime, failures, receivedBytes = new Ice.Long(0, 0), sentBytes = new Ice.Long(0, 0))
    {
        super(id, total, current, totalLifetime, failures);
        this.receivedBytes = receivedBytes;
        this.sentBytes = sentBytes;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeLong(this.receivedBytes);
        ostr.writeLong(this.sentBytes);
    }

    _iceReadMemberImpl(istr)
    {
        this.receivedBytes = istr.readLong();
        this.sentBytes = istr.readLong();
    }
};

Slice.defineValue(IceMX.ConnectionMetrics, "::IceMX::ConnectionMetrics");
/* slice2js browser-bundle-skip */
exports.IceMX = IceMX;
/* slice2js browser-bundle-skip-end */
