// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("Test.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace Test
{
    public interface EchoPrx : Ice.ObjectPrx
    {
        void startBatch(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task startBatchAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void flushBatch(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task flushBatchAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class EchoPrxHelper : Ice.ObjectPrxHelperBase, EchoPrx
    {
        public void startBatch(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_startBatchAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void flushBatch(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_flushBatchAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_shutdownAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task startBatchAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_startBatchAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_startBatchAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_startBatch(context, synchronous, completed);
            return completed.Task;
        }

        private const string _startBatch_name = "startBatch";

        private void _iceI_startBatch(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _startBatch_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task flushBatchAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_flushBatchAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_flushBatchAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_flushBatch(context, synchronous, completed);
            return completed.Task;
        }

        private const string _flushBatch_name = "flushBatch";

        private void _iceI_flushBatch(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _flushBatch_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_shutdownAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_shutdown(context, synchronous, completed);
            return completed.Task;
        }

        private const string _shutdown_name = "shutdown";

        private void _iceI_shutdown(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _shutdown_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public static EchoPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new EchoPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static EchoPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new EchoPrxHelper(b) : null;

        public static EchoPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static EchoPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new EchoPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static EchoPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Echo"
        };

        public static string ice_staticId() => "::Test::Echo";

        public static void write(Ice.OutputStream ostr, EchoPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static EchoPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new EchoPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new EchoPrxHelper(reference);

        private EchoPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private EchoPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }
}

namespace Test
{
    [Ice.SliceTypeId("::Test::Echo")]
    public partial interface Echo : Ice.Object
    {
        void startBatch(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_startBatchAsync(
            Echo obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.startBatch(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void flushBatch(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_flushBatchAsync(
            Echo obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.flushBatch(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void shutdown(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
            Echo obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.shutdown(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }
    }

    public abstract class EchoDisp_ : Ice.ObjectImpl, Echo
    {
        public abstract void startBatch(Ice.Current current);

        public abstract void flushBatch(Ice.Current current);

        public abstract void shutdown(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::Echo";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "startBatch" => Echo.iceD_startBatchAsync(this, request),
                "flushBatch" => Echo.iceD_flushBatchAsync(this, request),
                "shutdown" => Echo.iceD_shutdownAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}
