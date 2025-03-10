// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'IceDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("IceDiscovery.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace IceDiscovery
{
    /// <summary>
    /// The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
    /// </summary>
    public interface LookupReplyPrx : Ice.ObjectPrx
    {
        /// <summary>
        /// Reply to the findObjectById request.
        /// </summary>
        /// <param name="id">
        /// The identity of the object.
        /// </param>
        /// <param name="prx">
        /// The proxy of the object. This proxy is never null.
        /// </param>
        /// <param name="context">The Context map to send with the invocation.</param>
        void foundObjectById(global::Ice.Identity id, Ice.ObjectPrx? prx, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Reply to the findObjectById request.
        /// </summary>
        /// <param name="id">
        /// The identity of the object.
        /// </param>
        /// <param name="prx">
        /// The proxy of the object. This proxy is never null.
        /// </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>A task that represents the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task foundObjectByIdAsync(global::Ice.Identity id, Ice.ObjectPrx? prx, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        /// <summary>
        /// Reply to the findAdpaterById request.
        /// </summary>
        /// <param name="id">
        /// The adapter ID.
        /// </param>
        /// <param name="prx">
        /// The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
        /// endpoints. This proxy is never null.
        /// </param>
        /// <param name="isReplicaGroup">
        /// True if the adapter is also a member of a replica group.
        /// </param>
        /// <param name="context">The Context map to send with the invocation.</param>
        void foundAdapterById(string id, Ice.ObjectPrx? prx, bool isReplicaGroup, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Reply to the findAdpaterById request.
        /// </summary>
        /// <param name="id">
        /// The adapter ID.
        /// </param>
        /// <param name="prx">
        /// The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
        /// endpoints. This proxy is never null.
        /// </param>
        /// <param name="isReplicaGroup">
        /// True if the adapter is also a member of a replica group.
        /// </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>A task that represents the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task foundAdapterByIdAsync(string id, Ice.ObjectPrx? prx, bool isReplicaGroup, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class LookupReplyPrxHelper : Ice.ObjectPrxHelperBase, LookupReplyPrx
    {
        public void foundObjectById(global::Ice.Identity id, Ice.ObjectPrx? prx, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_foundObjectByIdAsync(id, prx, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void foundAdapterById(string id, Ice.ObjectPrx? prx, bool isReplicaGroup, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_foundAdapterByIdAsync(id, prx, isReplicaGroup, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task foundObjectByIdAsync(global::Ice.Identity id, Ice.ObjectPrx? prx, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_foundObjectByIdAsync(id, prx, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_foundObjectByIdAsync(global::Ice.Identity iceP_id, Ice.ObjectPrx? iceP_prx, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_foundObjectById(iceP_id, iceP_prx, context, synchronous, completed);
            return completed.Task;
        }

        private const string _foundObjectById_name = "foundObjectById";

        private void _iceI_foundObjectById(global::Ice.Identity iceP_id, Ice.ObjectPrx? iceP_prx, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _foundObjectById_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    global::Ice.Identity.ice_write(ostr, iceP_id);
                    ostr.writeProxy(iceP_prx);
                });
        }

        public global::System.Threading.Tasks.Task foundAdapterByIdAsync(string id, Ice.ObjectPrx? prx, bool isReplicaGroup, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_foundAdapterByIdAsync(id, prx, isReplicaGroup, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_foundAdapterByIdAsync(string iceP_id, Ice.ObjectPrx? iceP_prx, bool iceP_isReplicaGroup, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_foundAdapterById(iceP_id, iceP_prx, iceP_isReplicaGroup, context, synchronous, completed);
            return completed.Task;
        }

        private const string _foundAdapterById_name = "foundAdapterById";

        private void _iceI_foundAdapterById(string iceP_id, Ice.ObjectPrx? iceP_prx, bool iceP_isReplicaGroup, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _foundAdapterById_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_id);
                    ostr.writeProxy(iceP_prx);
                    ostr.writeBool(iceP_isReplicaGroup);
                });
        }

        public static LookupReplyPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new LookupReplyPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static LookupReplyPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new LookupReplyPrxHelper(b) : null;

        public static LookupReplyPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static LookupReplyPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new LookupReplyPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static LookupReplyPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::IceDiscovery::LookupReply"
        };

        public static string ice_staticId() => "::IceDiscovery::LookupReply";

        public static void write(Ice.OutputStream ostr, LookupReplyPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static LookupReplyPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new LookupReplyPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new LookupReplyPrxHelper(reference);

        private LookupReplyPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private LookupReplyPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }

    /// <summary>
    /// The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
    /// </summary>
    public interface LookupPrx : Ice.ObjectPrx
    {
        /// <summary>
        /// Request to find an Ice object
        /// </summary>
        /// <param name="domainId">
        /// The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
        /// matching domain identifier.
        /// </param>
        /// <param name="id">
        /// The object identity.
        /// </param>
        /// <param name="reply">
        /// The proxy of the LookupReply interface that should be used to send the reply if a matching
        /// object is found. The reply proxy is never null.
        /// </param>
        /// <param name="context">The Context map to send with the invocation.</param>
        void findObjectById(string domainId, global::Ice.Identity id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Request to find an Ice object
        /// </summary>
        /// <param name="domainId">
        /// The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
        /// matching domain identifier.
        /// </param>
        /// <param name="id">
        /// The object identity.
        /// </param>
        /// <param name="reply">
        /// The proxy of the LookupReply interface that should be used to send the reply if a matching
        /// object is found. The reply proxy is never null.
        /// </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>A task that represents the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task findObjectByIdAsync(string domainId, global::Ice.Identity id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        /// <summary>
        /// Request to find an object adapter
        /// </summary>
        /// <param name="domainId">
        /// The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
        /// matching domain identifier.
        /// </param>
        /// <param name="id">
        /// The adapter ID.
        /// </param>
        /// <param name="reply">
        /// The proxy of the LookupReply interface that should be used to send the reply if a matching
        /// adapter is found. The reply proxy is never null.
        /// </param>
        /// <param name="context">The Context map to send with the invocation.</param>
        void findAdapterById(string domainId, string id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        /// <summary>
        /// Request to find an object adapter
        /// </summary>
        /// <param name="domainId">
        /// The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
        /// matching domain identifier.
        /// </param>
        /// <param name="id">
        /// The adapter ID.
        /// </param>
        /// <param name="reply">
        /// The proxy of the LookupReply interface that should be used to send the reply if a matching
        /// adapter is found. The reply proxy is never null.
        /// </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>A task that represents the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task findAdapterByIdAsync(string domainId, string id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class LookupPrxHelper : Ice.ObjectPrxHelperBase, LookupPrx
    {
        public void findObjectById(string domainId, global::Ice.Identity id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_findObjectByIdAsync(domainId, id, reply, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void findAdapterById(string domainId, string id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_findAdapterByIdAsync(domainId, id, reply, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task findObjectByIdAsync(string domainId, global::Ice.Identity id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_findObjectByIdAsync(domainId, id, reply, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_findObjectByIdAsync(string iceP_domainId, global::Ice.Identity iceP_id, LookupReplyPrx? iceP_reply, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_findObjectById(iceP_domainId, iceP_id, iceP_reply, context, synchronous, completed);
            return completed.Task;
        }

        private const string _findObjectById_name = "findObjectById";

        private void _iceI_findObjectById(string iceP_domainId, global::Ice.Identity iceP_id, LookupReplyPrx? iceP_reply, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _findObjectById_name,
                Ice.OperationMode.Idempotent,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_domainId);
                    global::Ice.Identity.ice_write(ostr, iceP_id);
                    LookupReplyPrxHelper.write(ostr, iceP_reply);
                });
        }

        public global::System.Threading.Tasks.Task findAdapterByIdAsync(string domainId, string id, LookupReplyPrx? reply, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_findAdapterByIdAsync(domainId, id, reply, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_findAdapterByIdAsync(string iceP_domainId, string iceP_id, LookupReplyPrx? iceP_reply, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_findAdapterById(iceP_domainId, iceP_id, iceP_reply, context, synchronous, completed);
            return completed.Task;
        }

        private const string _findAdapterById_name = "findAdapterById";

        private void _iceI_findAdapterById(string iceP_domainId, string iceP_id, LookupReplyPrx? iceP_reply, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _findAdapterById_name,
                Ice.OperationMode.Idempotent,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_domainId);
                    ostr.writeString(iceP_id);
                    LookupReplyPrxHelper.write(ostr, iceP_reply);
                });
        }

        public static LookupPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new LookupPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static LookupPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new LookupPrxHelper(b) : null;

        public static LookupPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static LookupPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new LookupPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static LookupPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::IceDiscovery::Lookup"
        };

        public static string ice_staticId() => "::IceDiscovery::Lookup";

        public static void write(Ice.OutputStream ostr, LookupPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static LookupPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new LookupPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new LookupPrxHelper(reference);

        private LookupPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private LookupPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }
}

namespace IceDiscovery
{
    [Ice.SliceTypeId("::IceDiscovery::LookupReply")]
    public partial interface LookupReply : Ice.Object
    {
        /// <summary>
        /// Reply to the findObjectById request.
        /// </summary>
        /// <param name="id">
        /// The identity of the object.
        /// </param>
        /// <param name="prx">
        /// The proxy of the object. This proxy is never null.
        /// </param>
        /// <param name="current">The Current object for the dispatch.</param>
        void foundObjectById(global::Ice.Identity id, Ice.ObjectPrx? prx, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_foundObjectByIdAsync(
            LookupReply obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            global::Ice.Identity iceP_id;
            Ice.ObjectPrx? iceP_prx;
            iceP_id = new global::Ice.Identity(istr);
            iceP_prx = istr.readProxy();
            istr.endEncapsulation();
            obj.foundObjectById(iceP_id, iceP_prx, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        /// <summary>
        /// Reply to the findAdpaterById request.
        /// </summary>
        /// <param name="id">
        /// The adapter ID.
        /// </param>
        /// <param name="prx">
        /// The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
        /// endpoints. This proxy is never null.
        /// </param>
        /// <param name="isReplicaGroup">
        /// True if the adapter is also a member of a replica group.
        /// </param>
        /// <param name="current">The Current object for the dispatch.</param>
        void foundAdapterById(string id, Ice.ObjectPrx? prx, bool isReplicaGroup, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_foundAdapterByIdAsync(
            LookupReply obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_id;
            Ice.ObjectPrx? iceP_prx;
            bool iceP_isReplicaGroup;
            iceP_id = istr.readString();
            iceP_prx = istr.readProxy();
            iceP_isReplicaGroup = istr.readBool();
            istr.endEncapsulation();
            obj.foundAdapterById(iceP_id, iceP_prx, iceP_isReplicaGroup, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }
    }

    public abstract class LookupReplyDisp_ : Ice.ObjectImpl, LookupReply
    {
        public abstract void foundObjectById(global::Ice.Identity id, Ice.ObjectPrx? prx, Ice.Current current);

        public abstract void foundAdapterById(string id, Ice.ObjectPrx? prx, bool isReplicaGroup, Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::IceDiscovery::LookupReply";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "foundObjectById" => LookupReply.iceD_foundObjectByIdAsync(this, request),
                "foundAdapterById" => LookupReply.iceD_foundAdapterByIdAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }

    [Ice.SliceTypeId("::IceDiscovery::Lookup")]
    public partial interface Lookup : Ice.Object
    {
        /// <summary>
        /// Request to find an Ice object
        /// </summary>
        /// <param name="domainId">
        /// The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
        /// matching domain identifier.
        /// </param>
        /// <param name="id">
        /// The object identity.
        /// </param>
        /// <param name="reply">
        /// The proxy of the LookupReply interface that should be used to send the reply if a matching
        /// object is found. The reply proxy is never null.
        /// </param>
        /// <param name="current">The Current object for the dispatch.</param>
        void findObjectById(string domainId, global::Ice.Identity id, LookupReplyPrx? reply, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_findObjectByIdAsync(
            Lookup obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Idempotent, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_domainId;
            global::Ice.Identity iceP_id;
            LookupReplyPrx? iceP_reply;
            iceP_domainId = istr.readString();
            iceP_id = new global::Ice.Identity(istr);
            iceP_reply = LookupReplyPrxHelper.read(istr);
            istr.endEncapsulation();
            obj.findObjectById(iceP_domainId, iceP_id, iceP_reply, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        /// <summary>
        /// Request to find an object adapter
        /// </summary>
        /// <param name="domainId">
        /// The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
        /// matching domain identifier.
        /// </param>
        /// <param name="id">
        /// The adapter ID.
        /// </param>
        /// <param name="reply">
        /// The proxy of the LookupReply interface that should be used to send the reply if a matching
        /// adapter is found. The reply proxy is never null.
        /// </param>
        /// <param name="current">The Current object for the dispatch.</param>
        void findAdapterById(string domainId, string id, LookupReplyPrx? reply, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_findAdapterByIdAsync(
            Lookup obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Idempotent, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_domainId;
            string iceP_id;
            LookupReplyPrx? iceP_reply;
            iceP_domainId = istr.readString();
            iceP_id = istr.readString();
            iceP_reply = LookupReplyPrxHelper.read(istr);
            istr.endEncapsulation();
            obj.findAdapterById(iceP_domainId, iceP_id, iceP_reply, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }
    }

    public abstract class LookupDisp_ : Ice.ObjectImpl, Lookup
    {
        public abstract void findObjectById(string domainId, global::Ice.Identity id, LookupReplyPrx? reply, Ice.Current current);

        public abstract void findAdapterById(string domainId, string id, LookupReplyPrx? reply, Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::IceDiscovery::Lookup";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "findObjectById" => Lookup.iceD_findObjectByIdAsync(this, request),
                "findAdapterById" => Lookup.iceD_findAdapterByIdAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}
