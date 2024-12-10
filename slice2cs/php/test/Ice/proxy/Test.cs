//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#nullable enable

[assembly:Ice.Slice("Test.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace Test
{
    [Ice.SliceTypeId("::Test::MyClass")]
    public partial interface MyClass : Ice.Object
    {
        void shutdown(Ice.Current current);

        global::System.Collections.Generic.Dictionary<string, string> getContext(Ice.Current current);
    }

    [Ice.SliceTypeId("::Test::MyDerivedClass")]
    public partial interface MyDerivedClass : MyClass
    {
        global::Ice.ObjectPrx? echo(global::Ice.ObjectPrx? obj, Ice.Current current);
    }
}

namespace Test
{
    public interface MyClassPrx : Ice.ObjectPrx
    {
        void shutdown(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task shutdownAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);

        global::System.Collections.Generic.Dictionary<string, string> getContext(global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> getContextAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }

    public interface MyDerivedClassPrx : MyClassPrx
    {
        global::Ice.ObjectPrx? echo(global::Ice.ObjectPrx? obj, global::System.Collections.Generic.Dictionary<string, string>? context = null);

        global::System.Threading.Tasks.Task<global::Ice.ObjectPrx?> echoAsync(global::Ice.ObjectPrx? obj, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default);
    }
}

namespace Test
{
    public sealed class ContextHelper
    {
        public static void write(Ice.OutputStream ostr,
                                 global::System.Collections.Generic.Dictionary<string, string> v)
        {
            if(v == null)
            {
                ostr.writeSize(0);
            }
            else
            {
                ostr.writeSize(v.Count);
                foreach(global::System.Collections.Generic.KeyValuePair<string, string> e in v)
                {
                    ostr.writeString(e.Key);
                    ostr.writeString(e.Value);
                }
            }
        }

        public static global::System.Collections.Generic.Dictionary<string, string> read(Ice.InputStream istr)
        {
            int sz = istr.readSize();
            global::System.Collections.Generic.Dictionary<string, string> r = new global::System.Collections.Generic.Dictionary<string, string>();
            for(int i = 0; i < sz; ++i)
            {
                string k;
                k = istr.readString();
                string v;
                v = istr.readString();
                r[k] = v;
            }
            return r;
        }
    }

    public sealed class MyClassPrxHelper : Ice.ObjectPrxHelperBase, MyClassPrx
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

        public global::System.Collections.Generic.Dictionary<string, string> getContext(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_getContextAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
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

        public global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> getContextAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_getContextAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> _iceI_getContextAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getContext_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<global::System.Collections.Generic.Dictionary<string, string>>(progress, cancel);
            _iceI_getContext(context, synchronous, completed);
            return completed.Task;
        }

        private const string _getContext_name = "getContext";

        private void _iceI_getContext(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<global::System.Collections.Generic.Dictionary<string, string>>(completed);
            outAsync.invoke(
                _getContext_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                read: (Ice.InputStream istr) =>
                {
                    global::System.Collections.Generic.Dictionary<string, string> ret;
                    ret = ContextHelper.read(istr);
                    return ret;
                });
        }

        public static MyClassPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new MyClassPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static MyClassPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new MyClassPrxHelper(b) : null;

        public static MyClassPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static MyClassPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new MyClassPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static MyClassPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::MyClass"
        };

        public static string ice_staticId() => "::Test::MyClass";

        public static void write(Ice.OutputStream ostr, MyClassPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static MyClassPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new MyClassPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new MyClassPrxHelper(reference);

        private MyClassPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private MyClassPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }

    public sealed class MyDerivedClassPrxHelper : Ice.ObjectPrxHelperBase, MyDerivedClassPrx
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

        public global::System.Collections.Generic.Dictionary<string, string> getContext(global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_getContextAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch (global::System.AggregateException ex_)
            {
                throw ex_.InnerException!;
            }
        }

        public global::Ice.ObjectPrx? echo(global::Ice.ObjectPrx? obj, global::System.Collections.Generic.Dictionary<string, string>? context = null)
        {
            try
            {
                return _iceI_echoAsync(obj, context, null, global::System.Threading.CancellationToken.None, true).Result;
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

        public global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> getContextAsync(global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_getContextAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> _iceI_getContextAsync(global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getContext_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<global::System.Collections.Generic.Dictionary<string, string>>(progress, cancel);
            _iceI_getContext(context, synchronous, completed);
            return completed.Task;
        }

        private const string _getContext_name = "getContext";

        private void _iceI_getContext(global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<global::System.Collections.Generic.Dictionary<string, string>>(completed);
            outAsync.invoke(
                _getContext_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                read: (Ice.InputStream istr) =>
                {
                    global::System.Collections.Generic.Dictionary<string, string> ret;
                    ret = ContextHelper.read(istr);
                    return ret;
                });
        }

        public global::System.Threading.Tasks.Task<global::Ice.ObjectPrx?> echoAsync(global::Ice.ObjectPrx? obj, global::System.Collections.Generic.Dictionary<string, string>? context = null, global::System.IProgress<bool>? progress = null, global::System.Threading.CancellationToken cancel = default)
        {
            return _iceI_echoAsync(obj, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<global::Ice.ObjectPrx?> _iceI_echoAsync(global::Ice.ObjectPrx? iceP_obj, global::System.Collections.Generic.Dictionary<string, string>? context, global::System.IProgress<bool>? progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_echo_name);
            var completed = new Ice.Internal.OperationTaskCompletionCallback<global::Ice.ObjectPrx?>(progress, cancel);
            _iceI_echo(iceP_obj, context, synchronous, completed);
            return completed.Task;
        }

        private const string _echo_name = "echo";

        private void _iceI_echo(global::Ice.ObjectPrx? iceP_obj, global::System.Collections.Generic.Dictionary<string, string>? context, bool synchronous, Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<global::Ice.ObjectPrx?>(completed);
            outAsync.invoke(
                _echo_name,
                Ice.OperationMode.Normal,
                null,
                context,
                synchronous,
                write: (Ice.OutputStream ostr) =>
                {
                    ostr.writeProxy(iceP_obj);
                },
                read: (Ice.InputStream istr) =>
                {
                    global::Ice.ObjectPrx? ret;
                    ret = istr.readProxy();
                    return ret;
                });
        }

        public static MyDerivedClassPrx createProxy(Ice.Communicator communicator, string proxyString) =>
            new MyDerivedClassPrxHelper(Ice.ObjectPrxHelper.createProxy(communicator, proxyString));

        public static MyDerivedClassPrx? checkedCast(Ice.ObjectPrx? b, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            b is not null && b.ice_isA(ice_staticId(), ctx) ? new MyDerivedClassPrxHelper(b) : null;

        public static MyDerivedClassPrx? checkedCast(Ice.ObjectPrx? b, string f, global::System.Collections.Generic.Dictionary<string, string>? ctx = null) =>
            checkedCast(b?.ice_facet(f), ctx);

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static MyDerivedClassPrx? uncheckedCast(Ice.ObjectPrx? b) =>
            b is not null ? new MyDerivedClassPrxHelper(b) : null;

        [return: global::System.Diagnostics.CodeAnalysis.NotNullIfNotNull(nameof(b))]

        public static MyDerivedClassPrx? uncheckedCast(Ice.ObjectPrx? b, string f) =>
            uncheckedCast(b?.ice_facet(f));

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::MyClass",
            "::Test::MyDerivedClass"
        };

        public static string ice_staticId() => "::Test::MyDerivedClass";

        public static void write(Ice.OutputStream ostr, MyDerivedClassPrx? v)
        {
            ostr.writeProxy(v);
        }

        public static MyDerivedClassPrx? read(Ice.InputStream istr) =>
            istr.readProxy() is Ice.ObjectPrx proxy ? new MyDerivedClassPrxHelper(proxy) : null;

        protected override Ice.ObjectPrxHelperBase iceNewInstance(Ice.Internal.Reference reference) => new MyDerivedClassPrxHelper(reference);

        private MyDerivedClassPrxHelper(Ice.ObjectPrx proxy)
            : base(proxy)
        {
        }

        private MyDerivedClassPrxHelper(Ice.Internal.Reference reference)
            : base(reference)
        {
        }
    }
}

namespace Test
{
    public abstract class MyClassDisp_ : Ice.ObjectImpl, MyClass
    {
        public abstract void shutdown(Ice.Current current);

        public abstract global::System.Collections.Generic.Dictionary<string, string> getContext(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::MyClass";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "shutdown" => MyClass.iceD_shutdownAsync(this, request),
                "getContext" => MyClass.iceD_getContextAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }

    public abstract class MyDerivedClassDisp_ : Ice.ObjectImpl, MyDerivedClass
    {
        public abstract global::Ice.ObjectPrx? echo(global::Ice.ObjectPrx? obj, Ice.Current current);

        public abstract global::System.Collections.Generic.Dictionary<string, string> getContext(Ice.Current current);

        public abstract void shutdown(Ice.Current current);

        public override string ice_id(Ice.Current current) => ice_staticId();

        public static new string ice_staticId() => "::Test::MyDerivedClass";

        public override global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> dispatchAsync(Ice.IncomingRequest request) =>
            request.current.operation switch
            {
                "shutdown" => MyClass.iceD_shutdownAsync(this, request),
                "getContext" => MyClass.iceD_getContextAsync(this, request),
                "echo" => MyDerivedClass.iceD_echoAsync(this, request),
                "ice_id" => Ice.Object.iceD_ice_idAsync(this, request),
                "ice_ids" => Ice.Object.iceD_ice_idsAsync(this, request),
                "ice_isA" => Ice.Object.iceD_ice_isAAsync(this, request),
                "ice_ping" => Ice.Object.iceD_ice_pingAsync(this, request),
                _ => throw new Ice.OperationNotExistException()
            };
    }
}

namespace Test
{
    public partial interface MyClass
    {
        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_shutdownAsync(
            MyClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            obj.shutdown(request.current);
            return new(Ice.CurrentExtensions.createEmptyOutgoingResponse(request.current));
        }

        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_getContextAsync(
            MyClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            request.inputStream.skipEmptyEncapsulation();
            var ret = obj.getContext(request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            ContextHelper.write(ostr, ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }

    public partial interface MyDerivedClass
    {
        protected static global::System.Threading.Tasks.ValueTask<Ice.OutgoingResponse> iceD_echoAsync(
            MyDerivedClass obj,
            Ice.IncomingRequest request)
        {
            Ice.ObjectImpl.iceCheckMode(Ice.OperationMode.Normal, request.current.mode);
            var istr = request.inputStream;
            istr.startEncapsulation();
            global::Ice.ObjectPrx? iceP_obj;
            iceP_obj = istr.readProxy();
            istr.endEncapsulation();
            var ret = obj.echo(iceP_obj, request.current);
            var ostr = Ice.CurrentExtensions.startReplyStream(request.current);
            ostr.startEncapsulation(request.current.encoding, null);
            ostr.writeProxy(ret);
            ostr.endEncapsulation();
            return new(new Ice.OutgoingResponse(ostr));
        }
    }
}
