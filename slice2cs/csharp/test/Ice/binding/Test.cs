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

namespace Ice.binding
{
    namespace Test
    {
        public interface TestIntfPrx : Ice.ObjectPrx
        {
            string getAdapterName(global::System.Collections.Generic.Dictionary<string, string>? context = null);

            global::System.Threading.Tasks.Task<string> getAdapterNameAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
        }

        public sealed class TestIntfPrxHelper : Ice.ObjectPrxHelperBase, TestIntfPrx
        {
            public string getAdapterName(global::System.Collections.Generic.Dictionary<string, string>? context = null)
            {
                try
                {
                    return _iceI_getAdapterNameAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
                }
                catch (global::System.AggregateException ex_)
                {
                    throw ex_.InnerException!;
                }
            }

            public global::System.Threading.Tasks.Task<string> getAdapterNameAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
            {
                return _iceI_getAdapterNameAsync(context, progress, cancel, false);
            }

            private global::System.Threading.Tasks.Task<string> _iceI_getAdapterNameAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
            {
                iceCheckTwowayOnly(_getAdapterName_name);
                var completed = new Ice.Internal.OperationTaskCompletionCallback<string>(progress, cancel);
                _iceI_getAdapterName(context, synchronous, completed);
                return completed.Task;
            }

            private const string _getAdapterName_name = "getAdapterName";

            private void _iceI_getAdapterName(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
            {
                var outAsync = getOutgoingAsync<string>(completed);
                outAsync.invoke(
                    _getAdapterName_name,
                    Ice.OperationMode.Normal,
                    null,
                    context,
                    synchronous,
                    read: (Ice.InputStream istr) =>
                    {
                        string ret;
                        ret = istr.readString();
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

        public interface RemoteObjectAdapterPrx : Ice.ObjectPrx
        {
            TestIntfPrx? getTestIntf(global::System.Collections.Generic.Dictionary<string, string>? context = null);

            global::System.Threading.Tasks.Task<TestIntfPrx?> getTestIntfAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

            void deactivate(global::System.Collections.Generic.Dictionary<string, string>? context = null);

            global::System.Threading.Tasks.Task deactivateAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
        }

        public sealed class RemoteObjectAdapterPrxHelper : Ice.ObjectPrxHelperBase, RemoteObjectAdapterPrx
        {
            public TestIntfPrx? getTestIntf(global::System.Collections.Generic.Dictionary<string, string>? context = null)
            {
                try
                {
                    return _iceI_getTestIntfAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
                }
                catch (global::System.AggregateException ex_)
                {
                    throw ex_.InnerException!;
                }
            }

            public void deactivate(global::System.Collections.Generic.Dictionary<string, string>? context = null)
            {
                try
                {
                    _iceI_deactivateAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
                }
                catch (global::System.AggregateException ex_)
                {
                    throw ex_.InnerException!;
                }
            }

            public global::System.Threading.Tasks.Task<TestIntfPrx?> getTestIntfAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
            {
                return _iceI_getTestIntfAsync(context, progress, cancel, false);
            }

            private global::System.Threading.Tasks.Task<TestIntfPrx?> _iceI_getTestIntfAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
            {
                iceCheckTwowayOnly(_getTestIntf_name);
                var completed = new Ice.Internal.OperationTaskCompletionCallback<TestIntfPrx?>(progress, cancel);
                _iceI_getTestIntf(context, synchronous, completed);
                return completed.Task;
            }

            private const string _getTestIntf_name = "getTestIntf";

            private void _iceI_getTestIntf(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
            {
                var outAsync = getOutgoingAsync<TestIntfPrx?>(completed);
                outAsync.invoke(
                    _getTestIntf_name,
                    Ice.OperationMode.Normal,
                    null,
                    context,
                    synchronous,
                    read: (Ice.InputStream istr) =>
                    {
                        TestIntfPrx? ret;
                        ret = TestIntfPrxHelper.read(istr);
                        return ret;
                    });
            }

            public global::System.Threading.Tasks.Task deactivateAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
            {
                return _iceI_deactivateAsync(context, progress, cancel, false);
            }

            private global::System.Threading.Tasks.Task _iceI_deactivateAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
            {
                var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
                _iceI_deactivate(context, synchronous, completed);
                return completed.Task;
            }

            private const string _deactivate_name = "deactivate";

            private void _iceI_deactivate(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
            {
                var outAsync = getOutgoingAsync<object>(completed);
                outAsync.invoke(
                    _deactivate_name,
                    Ice.OperationMode.Normal,
                    null,
                    context,
                    synchronous);
            }

            public static RemoteObjectAdapterPrx createProxy(Ice.Communicator communicator, string proxyString) =>
                new RemoteObjectAdapterPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

            public static RemoteObjectAdapterPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
                b is not null && b.ice_isA(ice_staticId(), ctx) ? new RemoteObjectAdapterPrxHelper(b) : null;

            public static RemoteObjectAdapterPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
                checkedCast(b?.ice_facet(f), ctx);

            [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

            public static RemoteObjectAdapterPrx? uncheckedCast(Ice.ObjectPrx? b) =>
                b is not null ? new RemoteObjectAdapterPrxHelper(b) : null;

            [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

            public static RemoteObjectAdapterPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
                uncheckedCast(b?.ice_facet(f));

            private static readonly string[] _ids =
            {
                "::Ice::Object",
                "::Test::RemoteObjectAdapter"
            };

            public static string ice_staticId() => "::Test::RemoteObjectAdapter";

            public static void write(Ice.OutputStream ostr, RemoteObjectAdapterPrx? v)
            {
                ostr.writeProxy(v);
            }

            public static RemoteObjectAdapterPrx? read(Ice.InputStream istr) =>
                istr.readProxy() is Ice.ObjectPrx proxy ? new RemoteObjectAdapterPrxHelper(proxy) : null;

            protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new RemoteObjectAdapterPrxHelper(reference);

            private RemoteObjectAdapterPrxHelper(Ice.ObjectPrx proxy)
                : base(proxy)
            {
            }

            private RemoteObjectAdapterPrxHelper(Ice.Internal.Reference reference)
                : base(reference)
            {
            }
        }

        public interface RemoteCommunicatorPrx : Ice.ObjectPrx
        {
            RemoteObjectAdapterPrx? createObjectAdapter(string name, string endpoints, global::System.Collections.Generic.Dictionary<string, string>? context = null);

            global::System.Threading.Tasks.Task<RemoteObjectAdapterPrx?> createObjectAdapterAsync(string name, string endpoints, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

            void deactivateObjectAdapter(RemoteObjectAdapterPrx? adapter, global::System.Collections.Generic.Dictionary<string, string>? context = null);

            global::System.Threading.Tasks.Task deactivateObjectAdapterAsync(RemoteObjectAdapterPrx? adapter, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

            void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

            global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
        }

        public sealed class RemoteCommunicatorPrxHelper : Ice.ObjectPrxHelperBase, RemoteCommunicatorPrx
        {
            public RemoteObjectAdapterPrx? createObjectAdapter(string name, string endpoints, global::System.Collections.Generic.Dictionary<string, string>? context = null)
            {
                try
                {
                    return _iceI_createObjectAdapterAsync(name, endpoints, context, null, global::System.Threading.CancellationToken.None, true).Result;
                }
                catch (global::System.AggregateException ex_)
                {
                    throw ex_.InnerException!;
                }
            }

            public void deactivateObjectAdapter(RemoteObjectAdapterPrx? adapter, global::System.Collections.Generic.Dictionary<string, string>? context = null)
            {
                try
                {
                    _iceI_deactivateObjectAdapterAsync(adapter, context, null, global::System.Threading.CancellationToken.None, true).Wait();
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

            public global::System.Threading.Tasks.Task<RemoteObjectAdapterPrx?> createObjectAdapterAsync(string name, string endpoints, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
            {
                return _iceI_createObjectAdapterAsync(name, endpoints, context, progress, cancel, false);
            }

            private global::System.Threading.Tasks.Task<RemoteObjectAdapterPrx?> _iceI_createObjectAdapterAsync(string iceP_name, string iceP_endpoints, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
            {
                iceCheckTwowayOnly(_createObjectAdapter_name);
                var completed = new Ice.Internal.OperationTaskCompletionCallback<RemoteObjectAdapterPrx?>(progress, cancel);
                _iceI_createObjectAdapter(iceP_name, iceP_endpoints, context, synchronous, completed);
                return completed.Task;
            }

            private const string _createObjectAdapter_name = "createObjectAdapter";

            private void _iceI_createObjectAdapter(string iceP_name, string iceP_endpoints, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
            {
                var outAsync = getOutgoingAsync<RemoteObjectAdapterPrx?>(completed);
                outAsync.invoke(
                    _createObjectAdapter_name,
                    Ice.OperationMode.Normal,
                    null,
                    context,
                    synchronous,
                    write: (Ice.OutputStream ostr) =>
                    {
                        ostr.writeString(iceP_name);
                        ostr.writeString(iceP_endpoints);
                    },
                    read: (Ice.InputStream istr) =>
                    {
                        RemoteObjectAdapterPrx? ret;
                        ret = RemoteObjectAdapterPrxHelper.read(istr);
                        return ret;
                    });
            }

            public global::System.Threading.Tasks.Task deactivateObjectAdapterAsync(RemoteObjectAdapterPrx? adapter, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
            {
                return _iceI_deactivateObjectAdapterAsync(adapter, context, progress, cancel, false);
            }

            private global::System.Threading.Tasks.Task _iceI_deactivateObjectAdapterAsync(RemoteObjectAdapterPrx? iceP_adapter, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
            {
                var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
                _iceI_deactivateObjectAdapter(iceP_adapter, context, synchronous, completed);
                return completed.Task;
            }

            private const string _deactivateObjectAdapter_name = "deactivateObjectAdapter";

            private void _iceI_deactivateObjectAdapter(RemoteObjectAdapterPrx? iceP_adapter, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
            {
                var outAsync = getOutgoingAsync<object>(completed);
                outAsync.invoke(
                    _deactivateObjectAdapter_name,
                    Ice.OperationMode.Normal,
                    null,
                    context,
                    synchronous,
                    write: (Ice.OutputStream ostr) =>
                    {
                        RemoteObjectAdapterPrxHelper.write(ostr, iceP_adapter);
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

            public static RemoteCommunicatorPrx createProxy(Ice.Communicator communicator, string proxyString) =>
                new RemoteCommunicatorPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

            public static RemoteCommunicatorPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
                b is not null && b.ice_isA(ice_staticId(), ctx) ? new RemoteCommunicatorPrxHelper(b) : null;

            public static RemoteCommunicatorPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
                checkedCast(b?.ice_facet(f), ctx);

            [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

            public static RemoteCommunicatorPrx? uncheckedCast(Ice.ObjectPrx? b) =>
                b is not null ? new RemoteCommunicatorPrxHelper(b) : null;

            [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

            public static RemoteCommunicatorPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
                uncheckedCast(b?.ice_facet(f));

            private static readonly string[] _ids =
            {
                "::Ice::Object",
                "::Test::RemoteCommunicator"
            };

            public static string ice_staticId() => "::Test::RemoteCommunicator";

            public static void write(Ice.OutputStream ostr, RemoteCommunicatorPrx? v)
            {
                ostr.writeProxy(v);
            }

            public static RemoteCommunicatorPrx? read(Ice.InputStream istr) =>
                istr.readProxy() is Ice.ObjectPrx proxy ? new RemoteCommunicatorPrxHelper(proxy) : null;

            protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new RemoteCommunicatorPrxHelper(reference);

            private RemoteCommunicatorPrxHelper(Ice.ObjectPrx proxy)
                : base(proxy)
            {
            }

            private RemoteCommunicatorPrxHelper(Ice.Internal.Reference reference)
                : base(reference)
            {
            }
        }
    }
}

namespace Ice.binding
{
    namespace Test
    {
        [Ice.SliceTypeId("::Test::TestIntf")]
        public partial interface TestIntf : Ice.Object
        {
            string getAdapterName(Ice.Current current);

            protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_getAdapterNameAsync(
                TestIntf obj,
                Ice.IncomingRequest request)
            {
                Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
                request.inputStream.skipEmptyEncapsulation();
                var ret = obj.getAdapterName(request.current);
                var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
                ostr.startEncapsulation(request.current.encoding, null);
                ostr.writeString(ret);
                ostr.endEncapsulation();
                return new(new Ice.OutgoingResponse(ostr));
            }
        }

        public abstract class TestIntfDisp_ : Ice.ObjectImpl, TestIntf
        {
            public abstract string getAdapterName(Ice.Current current);

            public override string ice_id(Ice.Current current) => ice_staticId();

            public static new string ice_staticId() => "::Test::TestIntf";

            public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
                request.current.operation switch
                {
                    "getAdapterName" => TestIntf.iceD_getAdapterNameAsync(this, request),
                    "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                    "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                    "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                    "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                    _ => throw new Ice.OperationNotExistException()
                };
        }

        [Ice.SliceTypeId("::Test::RemoteObjectAdapter")]
        public partial interface RemoteObjectAdapter : Ice.Object
        {
            TestIntfPrx? getTestIntf(Ice.Current current);

            protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_getTestIntfAsync(
                RemoteObjectAdapter obj,
                Ice.IncomingRequest request)
            {
                Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
                request.inputStream.skipEmptyEncapsulation();
                var ret = obj.getTestIntf(request.current);
                var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
                ostr.startEncapsulation(request.current.encoding, null);
                TestIntfPrxHelper.write(ostr, ret);
                ostr.endEncapsulation();
                return new(new Ice.OutgoingResponse(ostr));
            }

            void deactivate(Ice.Current current);

            protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_deactivateAsync(
                RemoteObjectAdapter obj,
                Ice.IncomingRequest request)
            {
                Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
                request.inputStream.skipEmptyEncapsulation();
                obj.deactivate(request.current);
                return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
            }
        }

        public abstract class RemoteObjectAdapterDisp_ : Ice.ObjectImpl, RemoteObjectAdapter
        {
            public abstract TestIntfPrx? getTestIntf(Ice.Current current);

            public abstract void deactivate(Ice.Current current);

            public override string ice_id(Ice.Current current) => ice_staticId();

            public static new string ice_staticId() => "::Test::RemoteObjectAdapter";

            public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
                request.current.operation switch
                {
                    "getTestIntf" => RemoteObjectAdapter.iceD_getTestIntfAsync(this, request),
                    "deactivate" => RemoteObjectAdapter.iceD_deactivateAsync(this, request),
                    "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                    "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                    "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                    "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                    _ => throw new Ice.OperationNotExistException()
                };
        }

        [Ice.SliceTypeId("::Test::RemoteCommunicator")]
        public partial interface RemoteCommunicator : Ice.Object
        {
            RemoteObjectAdapterPrx? createObjectAdapter(string name, string endpoints, Ice.Current current);

            protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_createObjectAdapterAsync(
                RemoteCommunicator obj,
                Ice.IncomingRequest request)
            {
                Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
                var istr = request.inputStream;
                istr.startEncapsulation();
                string iceP_name;
                string iceP_endpoints;
                iceP_name = istr.readString();
                iceP_endpoints = istr.readString();
                istr.endEncapsulation();
                var ret = obj.createObjectAdapter(iceP_name, iceP_endpoints, request.current);
                var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
                ostr.startEncapsulation(request.current.encoding, null);
                RemoteObjectAdapterPrxHelper.write(ostr, ret);
                ostr.endEncapsulation();
                return new(new Ice.OutgoingResponse(ostr));
            }

            void deactivateObjectAdapter(RemoteObjectAdapterPrx? adapter, Ice.Current current);

            protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_deactivateObjectAdapterAsync(
                RemoteCommunicator obj,
                Ice.IncomingRequest request)
            {
                Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
                var istr = request.inputStream;
                istr.startEncapsulation();
                RemoteObjectAdapterPrx? iceP_adapter;
                iceP_adapter = RemoteObjectAdapterPrxHelper.read(istr);
                istr.endEncapsulation();
                obj.deactivateObjectAdapter(iceP_adapter, request.current);
                return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
            }

            void shutdown(Ice.Current current);

            protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
                RemoteCommunicator obj,
                Ice.IncomingRequest request)
            {
                Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
                request.inputStream.skipEmptyEncapsulation();
                obj.shutdown(request.current);
                return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
            }
        }

        public abstract class RemoteCommunicatorDisp_ : Ice.ObjectImpl, RemoteCommunicator
        {
            public abstract RemoteObjectAdapterPrx? createObjectAdapter(string name, string endpoints, Ice.Current current);

            public abstract void deactivateObjectAdapter(RemoteObjectAdapterPrx? adapter, Ice.Current current);

            public abstract void shutdown(Ice.Current current);

            public override string ice_id(Ice.Current current) => ice_staticId();

            public static new string ice_staticId() => "::Test::RemoteCommunicator";

            public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
                request.current.operation switch
                {
                    "createObjectAdapter" => RemoteCommunicator.iceD_createObjectAdapterAsync(this, request),
                    "deactivateObjectAdapter" => RemoteCommunicator.iceD_deactivateObjectAdapterAsync(this, request),
                    "shutdown" => RemoteCommunicator.iceD_shutdownAsync(this, request),
                    "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                    "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                    "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                    "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                    _ => throw new Ice.OperationNotExistException()
                };
        }
    }
}
