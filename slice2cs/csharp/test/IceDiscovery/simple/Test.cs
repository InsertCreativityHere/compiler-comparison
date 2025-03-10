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
        string getAdapterId(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<string> getAdapterIdAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class TestIntfPrxHelper : Ice.ObjectPrxHelperBase, TestIntfPrx
    {
        public string getAdapterId(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_getAdapterIdAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::System.Threading.Tasks.Task<string> getAdapterIdAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_getAdapterIdAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<string> _iceI_getAdapterIdAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getAdapterId_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<string>(progress, cancel);
            _iceI_getAdapterId(context, synchronous, completed);
            return completed.Task;
        }

        private const string _getAdapterId_name = "getAdapterId";

        private void _iceI_getAdapterId(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<string>(completed);
            outAsync.invoke(
                _getAdapterId_name,
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

    public interface ControllerPrx : Ice.ObjectPrx
    {
        void activateObjectAdapter(string name, string adapterId, string replicaGroupId, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task activateObjectAdapterAsync(string name, string adapterId, string replicaGroupId, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void deactivateObjectAdapter(string name, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task deactivateObjectAdapterAsync(string name, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void addObject(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task addObjectAsync(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void removeObject(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task removeObjectAsync(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public sealed class ControllerPrxHelper : Ice.ObjectPrxHelperBase, ControllerPrx
    {
        public void activateObjectAdapter(string name, string adapterId, string replicaGroupId, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_activateObjectAdapterAsync(name, adapterId, replicaGroupId, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void deactivateObjectAdapter(string name, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_deactivateObjectAdapterAsync(name, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void addObject(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_addObjectAsync(oaName, id, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public void removeObject(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                _iceI_removeObjectAsync(oaName, id, context, null, global::System.Threading.CancellationToken.None, true).Wait();
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

        public global::System.Threading.Tasks.Task activateObjectAdapterAsync(string name, string adapterId, string replicaGroupId, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_activateObjectAdapterAsync(name, adapterId, replicaGroupId, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_activateObjectAdapterAsync(string iceP_name, string iceP_adapterId, string iceP_replicaGroupId, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_activateObjectAdapter(iceP_name, iceP_adapterId, iceP_replicaGroupId, context, synchronous, completed);
            return completed.Task;
        }

        private const string _activateObjectAdapter_name = "activateObjectAdapter";

        private void _iceI_activateObjectAdapter(string iceP_name, string iceP_adapterId, string iceP_replicaGroupId, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _activateObjectAdapter_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_name);
                    ostr.writeString(iceP_adapterId);
                    ostr.writeString(iceP_replicaGroupId);
                });
        }

        public global::System.Threading.Tasks.Task deactivateObjectAdapterAsync(string name, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_deactivateObjectAdapterAsync(name, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_deactivateObjectAdapterAsync(string iceP_name, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_deactivateObjectAdapter(iceP_name, context, synchronous, completed);
            return completed.Task;
        }

        private const string _deactivateObjectAdapter_name = "deactivateObjectAdapter";

        private void _iceI_deactivateObjectAdapter(string iceP_name, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
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
                    ostr.writeString(iceP_name);
                });
        }

        public global::System.Threading.Tasks.Task addObjectAsync(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_addObjectAsync(oaName, id, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_addObjectAsync(string iceP_oaName, string iceP_id, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_addObject(iceP_oaName, iceP_id, context, synchronous, completed);
            return completed.Task;
        }

        private const string _addObject_name = "addObject";

        private void _iceI_addObject(string iceP_oaName, string iceP_id, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _addObject_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_oaName);
                    ostr.writeString(iceP_id);
                });
        }

        public global::System.Threading.Tasks.Task removeObjectAsync(string oaName, string id, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_removeObjectAsync(oaName, id, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_removeObjectAsync(string iceP_oaName, string iceP_id, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_removeObject(iceP_oaName, iceP_id, context, synchronous, completed);
            return completed.Task;
        }

        private const string _removeObject_name = "removeObject";

        private void _iceI_removeObject(string iceP_oaName, string iceP_id, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _removeObject_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_oaName);
                    ostr.writeString(iceP_id);
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

        public static ControllerPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new ControllerPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static ControllerPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new ControllerPrxHelper(b) : null;

        public static ControllerPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static ControllerPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new ControllerPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static ControllerPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Controller"
        };

        public static string ice_staticId() => "::Test::Controller";

        public static void write(Ice.OutputStream ostr, ControllerPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static ControllerPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new ControllerPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new ControllerPrxHelper(reference);

        private ControllerPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private ControllerPrxHelper(Ice.Internal.Reference reference)
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
        string getAdapterId(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_getAdapterIdAsync(
            TestIntf obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            var ret = obj.getAdapterId(request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            ostr.writeString(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }

    public abstract class TestIntfDisp_ : Ice.ObjectImpl, TestIntf
    {
        public abstract string getAdapterId(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::TestIntf";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "getAdapterId" => TestIntf.iceD_getAdapterIdAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }

    [Ice.SliceTypeId("::Test::Controller")]
    public partial interface Controller : Ice.Object
    {
        void activateObjectAdapter(string name, string adapterId, string replicaGroupId, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_activateObjectAdapterAsync(
            Controller obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_name;
            string iceP_adapterId;
            string iceP_replicaGroupId;
            iceP_name = istr.readString();
            iceP_adapterId = istr.readString();
            iceP_replicaGroupId = istr.readString();
            istr.endEncapsulation();
            obj.activateObjectAdapter(iceP_name, iceP_adapterId, iceP_replicaGroupId, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void deactivateObjectAdapter(string name, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_deactivateObjectAdapterAsync(
            Controller obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_name;
            iceP_name = istr.readString();
            istr.endEncapsulation();
            obj.deactivateObjectAdapter(iceP_name, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void addObject(string oaName, string id, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_addObjectAsync(
            Controller obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_oaName;
            string iceP_id;
            iceP_oaName = istr.readString();
            iceP_id = istr.readString();
            istr.endEncapsulation();
            obj.addObject(iceP_oaName, iceP_id, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void removeObject(string oaName, string id, Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_removeObjectAsync(
            Controller obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            string iceP_oaName;
            string iceP_id;
            iceP_oaName = istr.readString();
            iceP_id = istr.readString();
            istr.endEncapsulation();
            obj.removeObject(iceP_oaName, iceP_id, request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        void shutdown(Ice.Current current);

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
            Controller obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.shutdown(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }
    }

    public abstract class ControllerDisp_ : Ice.ObjectImpl, Controller
    {
        public abstract void activateObjectAdapter(string name, string adapterId, string replicaGroupId, Ice.Current current);

        public abstract void deactivateObjectAdapter(string name, Ice.Current current);

        public abstract void addObject(string oaName, string id, Ice.Current current);

        public abstract void removeObject(string oaName, string id, Ice.Current current);

        public abstract void shutdown(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::Controller";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "activateObjectAdapter" => Controller.iceD_activateObjectAdapterAsync(this, request),
                "deactivateObjectAdapter" => Controller.iceD_deactivateObjectAdapterAsync(this, request),
                "addObject" => Controller.iceD_addObjectAsync(this, request),
                "removeObject" => Controller.iceD_removeObjectAsync(this, request),
                "shutdown" => Controller.iceD_shutdownAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}
