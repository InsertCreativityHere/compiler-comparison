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
    [Ice.SliceTypeId("::Test::TestException")]
    public partial class TestException : Ice.UserException
    {
        public override string ice_id() => "::Test::TestException";

        protected override void iceWriteImpl(Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Test::TestException", -1, true);
            ostr_.endSlice();
        }

        protected override void iceReadImpl(Ice.InputStream istr_)
        {
            istr_.startSlice();
            istr_.endSlice();
        }
    }

    public interface TestIntfPrx : Ice.ObjectPrx
    {
        int op(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<int> opAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        int callOpOn(TestIntfPrx? proxy, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<int> callOpOnAsync(TestIntfPrx? proxy, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void throwUserException1(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task throwUserException1Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void throwUserException2(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task throwUserException2Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void throwUnhandledException1(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task throwUnhandledException1Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void throwUnhandledException2(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task throwUnhandledException2Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void sleep(int ms, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task sleepAsync(int ms, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class TestIntfPrxHelper : Ice.ObjectPrxHelperBase, TestIntfPrx
    {
        public int op(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_opAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public int callOpOn(TestIntfPrx? proxy, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_callOpOnAsync(proxy, context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void throwUserException1(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_throwUserException1Async(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void throwUserException2(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_throwUserException2Async(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void throwUnhandledException1(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_throwUnhandledException1Async(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void throwUnhandledException2(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_throwUnhandledException2Async(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void sleep(int ms, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_sleepAsync(ms, context, null, global::System.Threading.CancellationToken.None, true).Wait();
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

        public global::System.Threading.Tasks.Task<int> opAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_opAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<int> _iceI_opAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_op_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<int>(progress, cancel);
            _iceI_op(context, synchronous, completed);
            return completed.Task;
        }

        private const string _op_name = "op";

        private void _iceI_op(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<int>(completed);
            outAsync.invoke(
                _op_name,
                Ice.OperationMode.Normal,
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

        public global::System.Threading.Tasks.Task<int> callOpOnAsync(TestIntfPrx? proxy, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_callOpOnAsync(proxy, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<int> _iceI_callOpOnAsync(TestIntfPrx? iceP_proxy, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_callOpOn_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<int>(progress, cancel);
            _iceI_callOpOn(iceP_proxy, context, synchronous, completed);
            return completed.Task;
        }

        private const string _callOpOn_name = "callOpOn";

        private void _iceI_callOpOn(TestIntfPrx? iceP_proxy, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<int>(completed);
            outAsync.invoke(
                _callOpOn_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    TestIntfPrxHelper.write(ostr, iceP_proxy);
                },
                read: (Ice.InputStream istr) =>
                {
                    int ret;
                    ret = istr.readInt();
                    return ret;
                });
        }

        public global::System.Threading.Tasks.Task throwUserException1Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_throwUserException1Async(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_throwUserException1Async(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_throwUserException1_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_throwUserException1(context, synchronous, completed);
            return completed.Task;
        }

        private const string _throwUserException1_name = "throwUserException1";

        private void _iceI_throwUserException1(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _throwUserException1_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                userException: (Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(TestException)
                    {
                        throw;
                    }
                    catch(Ice.UserException)
                    {
                    }
                });
        }

        public global::System.Threading.Tasks.Task throwUserException2Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_throwUserException2Async(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_throwUserException2Async(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_throwUserException2_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_throwUserException2(context, synchronous, completed);
            return completed.Task;
        }

        private const string _throwUserException2_name = "throwUserException2";

        private void _iceI_throwUserException2(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _throwUserException2_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                userException: (Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(TestException)
                    {
                        throw;
                    }
                    catch(Ice.UserException)
                    {
                    }
                });
        }

        public global::System.Threading.Tasks.Task throwUnhandledException1Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_throwUnhandledException1Async(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_throwUnhandledException1Async(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_throwUnhandledException1(context, synchronous, completed);
            return completed.Task;
        }

        private const string _throwUnhandledException1_name = "throwUnhandledException1";

        private void _iceI_throwUnhandledException1(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _throwUnhandledException1_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task throwUnhandledException2Async(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_throwUnhandledException2Async(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_throwUnhandledException2Async(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_throwUnhandledException2(context, synchronous, completed);
            return completed.Task;
        }

        private const string _throwUnhandledException2_name = "throwUnhandledException2";

        private void _iceI_throwUnhandledException2(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _throwUnhandledException2_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task sleepAsync(int ms, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_sleepAsync(ms, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_sleepAsync(int iceP_ms, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_sleep(iceP_ms, context, synchronous, completed);
            return completed.Task;
        }

        private const string _sleep_name = "sleep";

        private void _iceI_sleep(int iceP_ms, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _sleep_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeInt(iceP_ms);
                });
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
        int op(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_opAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            var ret = obj.op(request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            ostr.writeInt(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }

        int callOpOn(TestIntfPrx? proxy, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_callOpOnAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            TestIntfPrx? iceP_proxy;
            iceP_proxy = TestIntfPrxHelper.read(istr);
            istr.endEncapsulation();
            var ret = obj.callOpOn(iceP_proxy, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            ostr.writeInt(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }

        void throwUserException1(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_throwUserException1Async(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.throwUserException1(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void throwUserException2(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_throwUserException2Async(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.throwUserException2(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void throwUnhandledException1(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_throwUnhandledException1Async(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.throwUnhandledException1(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void throwUnhandledException2(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_throwUnhandledException2Async(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.throwUnhandledException2(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void sleep(int ms, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_sleepAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            int iceP_ms;
            iceP_ms = istr.readInt();
            istr.endEncapsulation();
            obj.sleep(iceP_ms, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

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
    }

    public abstract class TestIntfDisp_ : Ice.ObjectImpl, TestIntf
    {
        public abstract int op(Ice.Current current);

        public abstract int callOpOn(TestIntfPrx? proxy, Ice.Current current);

        public abstract void throwUserException1(Ice.Current current);

        public abstract void throwUserException2(Ice.Current current);

        public abstract void throwUnhandledException1(Ice.Current current);

        public abstract void throwUnhandledException2(Ice.Current current);

        public abstract void sleep(int ms, Ice.Current current);

        public abstract void shutdown(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::TestIntf";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "op" => TestIntf.iceD_opAsync(this, request),
                "callOpOn" => TestIntf.iceD_callOpOnAsync(this, request),
                "throwUserException1" => TestIntf.iceD_throwUserException1Async(this, request),
                "throwUserException2" => TestIntf.iceD_throwUserException2Async(this, request),
                "throwUnhandledException1" => TestIntf.iceD_throwUnhandledException1Async(this, request),
                "throwUnhandledException2" => TestIntf.iceD_throwUnhandledException2Async(this, request),
                "sleep" => TestIntf.iceD_sleepAsync(this, request),
                "shutdown" => TestIntf.iceD_shutdownAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}
