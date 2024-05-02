//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1032")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1707")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1710")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1711")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1715")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1716")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1720")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1722")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1724")]
    public partial class CallbackException : global::Ice.UserException
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public double someValue;

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public string someString;

        #endregion

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        private void _initDM()
        {
            this.someString = "";
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public CallbackException()
        {
            _initDM();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public CallbackException(global::System.Exception ex) : base(ex)
        {
            _initDM();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        private void _initDM(double someValue, string someString)
        {
            this.someValue = someValue;
            this.someString = someString;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public CallbackException(double someValue, string someString)
        {
            _initDM(someValue, someString);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public CallbackException(double someValue, string someString, global::System.Exception ex) : base(ex)
        {
            _initDM(someValue, someString);
        }

        #endregion

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        public override string ice_id()
        {
            return "::Test::CallbackException";
        }

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Test::CallbackException", -1, true);
            ostr_.writeDouble(someValue);
            ostr_.writeString(someString);
            ostr_.endSlice();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        protected override void iceReadImpl(global::Ice.InputStream istr_)
        {
            istr_.startSlice();
            someValue = istr_.readDouble();
            someString = istr_.readString();
            istr_.endSlice();
        }

        #endregion
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1707")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1710")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1711")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1715")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1716")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1720")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1722")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1724")]
    public partial interface CallbackReceiver : global::Ice.Object, CallbackReceiverOperations_
    {
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1707")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1709")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1710")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1711")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1715")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1716")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1720")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1722")]
    [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1724")]
    public partial interface Callback : global::Ice.Object, CallbackOperations_
    {
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public delegate void Callback_CallbackReceiver_callback();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public delegate void Callback_CallbackReceiver_callbackEx();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public delegate void Callback_Callback_initiateCallback();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public delegate void Callback_Callback_initiateCallbackEx();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public delegate void Callback_Callback_shutdown();
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface CallbackReceiverPrx : global::Ice.ObjectPrx
    {
        void callback(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task callbackAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        void callbackEx(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task callbackExAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());
    }

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface CallbackPrx : global::Ice.ObjectPrx
    {
        void initiateCallback(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task initiateCallbackAsync(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        void initiateCallbackEx(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task initiateCallbackExAsync(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        void shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task shutdownAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface CallbackReceiverOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        void callback(global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        void callbackEx(global::Ice.Current current = null);
    }

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public interface CallbackOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        void initiateCallback(CallbackReceiverPrx proxy, global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        void initiateCallbackEx(CallbackReceiverPrx proxy, global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
        void shutdown(global::Ice.Current current = null);
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class CallbackReceiverPrxHelper : global::Ice.ObjectPrxHelperBase, CallbackReceiverPrx
    {
        public CallbackReceiverPrxHelper()
        {
        }

        #region Synchronous operations

        public void callback(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_callbackAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        public void callbackEx(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_callbackExAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        #endregion

        #region Async Task operations

        public global::System.Threading.Tasks.Task callbackAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_callbackAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_callbackAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new global::Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_callback(context, synchronous, completed);
            return completed.Task;
        }

        private const string _callback_name = "callback";

        private void _iceI_callback(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _callback_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task callbackExAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_callbackExAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_callbackExAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_callbackEx_name);
            var completed = new global::Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_callbackEx(context, synchronous, completed);
            return completed.Task;
        }

        private const string _callbackEx_name = "callbackEx";

        private void _iceI_callbackEx(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _callbackEx_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                userException: (global::Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(CallbackException)
                    {
                        throw;
                    }
                    catch(global::Ice.UserException)
                    {
                    }
                });
        }

        #endregion

        #region Checked and unchecked cast operations

        public static CallbackReceiverPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            CallbackReceiverPrx r = b as CallbackReceiverPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                CallbackReceiverPrxHelper h = new CallbackReceiverPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static CallbackReceiverPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            CallbackReceiverPrx r = b as CallbackReceiverPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                CallbackReceiverPrxHelper h = new CallbackReceiverPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static CallbackReceiverPrx checkedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            try
            {
                if(bb.ice_isA(ice_staticId()))
                {
                    CallbackReceiverPrxHelper h = new CallbackReceiverPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static CallbackReceiverPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            try
            {
                if(bb.ice_isA(ice_staticId(), ctx))
                {
                    CallbackReceiverPrxHelper h = new CallbackReceiverPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static CallbackReceiverPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            CallbackReceiverPrx r = b as CallbackReceiverPrx;
            if(r == null)
            {
                CallbackReceiverPrxHelper h = new CallbackReceiverPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static CallbackReceiverPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            CallbackReceiverPrxHelper h = new CallbackReceiverPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::CallbackReceiver"
        };

        public static string ice_staticId() => "::Test::CallbackReceiver";

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, CallbackReceiverPrx v)
        {
            ostr.writeProxy(v);
        }

        public static CallbackReceiverPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                CallbackReceiverPrxHelper result = new CallbackReceiverPrxHelper();
                result.iceCopyFrom(proxy);
                return result;
            }
            return null;
        }

        #endregion
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public sealed class CallbackPrxHelper : global::Ice.ObjectPrxHelperBase, CallbackPrx
    {
        public CallbackPrxHelper()
        {
        }

        #region Synchronous operations

        public void initiateCallback(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_initiateCallbackAsync(proxy, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        public void initiateCallbackEx(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_initiateCallbackExAsync(proxy, context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        public void shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_shutdownAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        #endregion

        #region Async Task operations

        public global::System.Threading.Tasks.Task initiateCallbackAsync(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_initiateCallbackAsync(proxy, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_initiateCallbackAsync(CallbackReceiverPrx iceP_proxy, global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new global::Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_initiateCallback(iceP_proxy, context, synchronous, completed);
            return completed.Task;
        }

        private const string _initiateCallback_name = "initiateCallback";

        private void _iceI_initiateCallback(CallbackReceiverPrx iceP_proxy, global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _initiateCallback_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                write: (global::Ice.OutputStream ostr) =>
                {
                    CallbackReceiverPrxHelper.write(ostr, iceP_proxy);
                });
        }

        public global::System.Threading.Tasks.Task initiateCallbackExAsync(CallbackReceiverPrx proxy, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_initiateCallbackExAsync(proxy, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_initiateCallbackExAsync(CallbackReceiverPrx iceP_proxy, global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_initiateCallbackEx_name);
            var completed = new global::Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_initiateCallbackEx(iceP_proxy, context, synchronous, completed);
            return completed.Task;
        }

        private const string _initiateCallbackEx_name = "initiateCallbackEx";

        private void _iceI_initiateCallbackEx(CallbackReceiverPrx iceP_proxy, global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _initiateCallbackEx_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                write: (global::Ice.OutputStream ostr) =>
                {
                    CallbackReceiverPrxHelper.write(ostr, iceP_proxy);
                },
                userException: (global::Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(CallbackException)
                    {
                        throw;
                    }
                    catch(global::Ice.UserException)
                    {
                    }
                });
        }

        public global::System.Threading.Tasks.Task shutdownAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_shutdownAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_shutdownAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new global::Ice.Internal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_shutdown(context, synchronous, completed);
            return completed.Task;
        }

        private const string _shutdown_name = "shutdown";

        private void _iceI_shutdown(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::Ice.Internal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _shutdown_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous);
        }

        #endregion

        #region Checked and unchecked cast operations

        public static CallbackPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            CallbackPrx r = b as CallbackPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                CallbackPrxHelper h = new CallbackPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static CallbackPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            CallbackPrx r = b as CallbackPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                CallbackPrxHelper h = new CallbackPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static CallbackPrx checkedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            try
            {
                if(bb.ice_isA(ice_staticId()))
                {
                    CallbackPrxHelper h = new CallbackPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static CallbackPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            try
            {
                if(bb.ice_isA(ice_staticId(), ctx))
                {
                    CallbackPrxHelper h = new CallbackPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static CallbackPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            CallbackPrx r = b as CallbackPrx;
            if(r == null)
            {
                CallbackPrxHelper h = new CallbackPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static CallbackPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            CallbackPrxHelper h = new CallbackPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Callback"
        };

        public static string ice_staticId() => "::Test::Callback";

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, CallbackPrx v)
        {
            ostr.writeProxy(v);
        }

        public static CallbackPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                CallbackPrxHelper result = new CallbackPrxHelper();
                result.iceCopyFrom(proxy);
                return result;
            }
            return null;
        }

        #endregion
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public abstract class CallbackReceiverDisp_ : global::Ice.ObjectImpl, CallbackReceiver
    {
        #region Slice operations

        public abstract void callback(global::Ice.Current current = null);

        public abstract void callbackEx(global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::CallbackReceiver"
        };

        public override bool ice_isA(string s, global::Ice.Current current = null)
        {
            return global::System.Array.BinarySearch(_ids, s, Ice.UtilInternal.StringUtil.OrdinalStringComparer) >= 0;
        }

        public override string[] ice_ids(global::Ice.Current current = null)
        {
            return _ids;
        }

        public override string ice_id(global::Ice.Current current = null)
        {
            return ice_staticId();
        }

        public static new string ice_staticId()
        {
            return "::Test::CallbackReceiver";
        }

        #endregion

        #region Operation dispatch

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_callback(CallbackReceiver obj, global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.callback(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_callbackEx(CallbackReceiver obj, global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.callbackEx(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        private static readonly string[] _all =
        {
            "callback",
            "callbackEx",
            "ice_id",
            "ice_ids",
            "ice_isA",
            "ice_ping"
        };

        public override global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceDispatch(global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            int pos = global::System.Array.BinarySearch(_all, current.operation, global::Ice.UtilInternal.StringUtil.OrdinalStringComparer);
            if(pos < 0)
            {
                throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
            }

            switch(pos)
            {
                case 0:
                {
                    return iceD_callback(this, inS, current);
                }
                case 1:
                {
                    return iceD_callbackEx(this, inS, current);
                }
                case 2:
                {
                    return global::Ice.ObjectImpl.iceD_ice_id(this, inS, current);
                }
                case 3:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ids(this, inS, current);
                }
                case 4:
                {
                    return global::Ice.ObjectImpl.iceD_ice_isA(this, inS, current);
                }
                case 5:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ping(this, inS, current);
                }
            }

            global::System.Diagnostics.Debug.Assert(false);
            throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        #endregion
    }

    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.8.0-alpha.0")]
    public abstract class CallbackDisp_ : global::Ice.ObjectImpl, Callback
    {
        #region Slice operations

        public abstract void initiateCallback(CallbackReceiverPrx proxy, global::Ice.Current current = null);

        public abstract void initiateCallbackEx(CallbackReceiverPrx proxy, global::Ice.Current current = null);

        public abstract void shutdown(global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Callback"
        };

        public override bool ice_isA(string s, global::Ice.Current current = null)
        {
            return global::System.Array.BinarySearch(_ids, s, Ice.UtilInternal.StringUtil.OrdinalStringComparer) >= 0;
        }

        public override string[] ice_ids(global::Ice.Current current = null)
        {
            return _ids;
        }

        public override string ice_id(global::Ice.Current current = null)
        {
            return ice_staticId();
        }

        public static new string ice_staticId()
        {
            return "::Test::Callback";
        }

        #endregion

        #region Operation dispatch

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_initiateCallback(Callback obj, global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            var istr = inS.startReadParams();
            CallbackReceiverPrx iceP_proxy;
            iceP_proxy = CallbackReceiverPrxHelper.read(istr);
            inS.endReadParams();
            obj.initiateCallback(iceP_proxy, current);
            return inS.setResult(inS.writeEmptyParams());
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_initiateCallbackEx(Callback obj, global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            var istr = inS.startReadParams();
            CallbackReceiverPrx iceP_proxy;
            iceP_proxy = CallbackReceiverPrxHelper.read(istr);
            inS.endReadParams();
            obj.initiateCallbackEx(iceP_proxy, current);
            return inS.setResult(inS.writeEmptyParams());
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_shutdown(Callback obj, global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.shutdown(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        private static readonly string[] _all =
        {
            "ice_id",
            "ice_ids",
            "ice_isA",
            "ice_ping",
            "initiateCallback",
            "initiateCallbackEx",
            "shutdown"
        };

        public override global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceDispatch(global::Ice.Internal.Incoming inS, global::Ice.Current current)
        {
            int pos = global::System.Array.BinarySearch(_all, current.operation, global::Ice.UtilInternal.StringUtil.OrdinalStringComparer);
            if(pos < 0)
            {
                throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
            }

            switch(pos)
            {
                case 0:
                {
                    return global::Ice.ObjectImpl.iceD_ice_id(this, inS, current);
                }
                case 1:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ids(this, inS, current);
                }
                case 2:
                {
                    return global::Ice.ObjectImpl.iceD_ice_isA(this, inS, current);
                }
                case 3:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ping(this, inS, current);
                }
                case 4:
                {
                    return iceD_initiateCallback(this, inS, current);
                }
                case 5:
                {
                    return iceD_initiateCallbackEx(this, inS, current);
                }
                case 6:
                {
                    return iceD_shutdown(this, inS, current);
                }
            }

            global::System.Diagnostics.Debug.Assert(false);
            throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        #endregion
    }
}
