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
    public interface TestIntfPrx : Ice.ObjectPrx
    {
        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void abort(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task abortAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void idempotentAbort(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task idempotentAbortAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        int pid(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<int> pidAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class TestIntfPrxHelper : Ice.ObjectPrxHelperBase, TestIntfPrx
    {
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

        public void abort(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_abortAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void idempotentAbort(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_idempotentAbortAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public int pid(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_pidAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
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

        public global::System.Threading.Tasks.Task abortAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_abortAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_abortAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_abort(context, synchronous, completed);
            return completed.Task;
        }

        private const string _abort_name = "abort";

        private void _iceI_abort(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _abort_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task idempotentAbortAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_idempotentAbortAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_idempotentAbortAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_idempotentAbort(context, synchronous, completed);
            return completed.Task;
        }

        private const string _idempotentAbort_name = "idempotentAbort";

        private void _iceI_idempotentAbort(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _idempotentAbort_name,
                Ice.OperationMode.Idempotent,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task<int> pidAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_pidAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<int> _iceI_pidAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_pid_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<int>(progress, cancel);
            _iceI_pid(context, synchronous, completed);
            return completed.Task;
        }

        private const string _pid_name = "pid";

        private void _iceI_pid(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<int>(completed);
            outAsync.invoke(
                _pid_name,
                Ice.OperationMode.Idempotent,
                null,
                context,
                synchronous,
                read: (Ice.InputStream istr) =>
                {
                    int ret;
                    ret = istr.readInt();
                    return ret;
                });
        }

        public static TestIntfPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new TestIntfPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static TestIntfPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new TestIntfPrxHelper(b) : null;

        public static TestIntfPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static TestIntfPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new TestIntfPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static TestIntfPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::TestIntf"
        };

        public static string ice_staticId() => "::Test::TestIntf";

        public static void write(Ice.OutputStream ostr, TestIntfPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static TestIntfPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new TestIntfPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new TestIntfPrxHelper(reference);

        private TestIntfPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private TestIntfPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }
}

namespace Test
{
    [Ice.SliceTypeId("::Test::TestIntf")]
    public partial interface TestIntf : Ice.Object
    {
        void shutdown(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.shutdown(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void abort(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_abortAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.abort(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void idempotentAbort(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_idempotentAbortAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Idempotent, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.idempotentAbort(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        int pid(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_pidAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Idempotent, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            var ret = obj.pid(request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            ostr.writeInt(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }

    public abstract class TestIntfDisp_ : Ice.ObjectImpl, TestIntf
    {
        public abstract void shutdown(Ice.Current current);

        public abstract void abort(Ice.Current current);

        public abstract void idempotentAbort(Ice.Current current);

        public abstract int pid(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::TestIntf";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "shutdown" => TestIntf.iceD_shutdownAsync(this, request),
                "abort" => TestIntf.iceD_abortAsync(this, request),
                "idempotentAbort" => TestIntf.iceD_idempotentAbortAsync(this, request),
                "pid" => TestIntf.iceD_pidAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}
