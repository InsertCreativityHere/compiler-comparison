//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `InvokeTest.ice'
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
    [global::System.Serializable]
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
    public partial class MyException : global::Ice.UserException
    {
        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        public MyException()
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        public MyException(global::System.Exception ex) : base(ex)
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        public MyException(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #endregion

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        public override string ice_id()
        {
            return "::Test::MyException";
        }

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Test::MyException", -1, true);
            ostr_.endSlice();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        protected override void iceReadImpl(global::Ice.InputStream istr_)
        {
            istr_.startSlice();
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
    public partial interface MyClass : global::Ice.Object, MyClassOperations_
    {
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public delegate void Callback_MyClass_opOneway();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public delegate void Callback_MyClass_opString(string ret, string s2);

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public delegate void Callback_MyClass_opException();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public delegate void Callback_MyClass_shutdown();
}

namespace Test
{
    public struct MyClass_OpStringResult
    {
        public MyClass_OpStringResult(string returnValue, string s2)
        {
            this.returnValue = returnValue;
            this.s2 = s2;
        }

        public string returnValue;
        public string s2;
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public interface MyClassPrx : global::Ice.ObjectPrx
    {
        void opOneway(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task opOnewayAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_MyClass_opOneway> begin_opOneway(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_opOneway(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_opOneway(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        void end_opOneway(global::Ice.AsyncResult asyncResult);

        string opString(string s1, out string s2, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task<MyClass_OpStringResult> opStringAsync(string s1, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_MyClass_opString> begin_opString(string s1, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_opString(string s1, global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_opString(string s1, global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        string end_opString(out string s2, global::Ice.AsyncResult asyncResult);

        void opException(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task opExceptionAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_MyClass_opException> begin_opException(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_opException(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_opException(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        void end_opException(global::Ice.AsyncResult asyncResult);

        void shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task shutdownAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_MyClass_shutdown> begin_shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_shutdown(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_shutdown(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        void end_shutdown(global::Ice.AsyncResult asyncResult);
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public interface MyClassOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        void opOneway(global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        string opString(string s1, out string s2, global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        void opException(global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
        void shutdown(global::Ice.Current current = null);
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    [global::System.Serializable]
    public sealed class MyClassPrxHelper : global::Ice.ObjectPrxHelperBase, MyClassPrx
    {
        public MyClassPrxHelper()
        {
        }

        public MyClassPrxHelper(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #region Synchronous operations

        public void opOneway(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_opOnewayAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        public string opString(string s1, out string s2, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                var result_ = _iceI_opStringAsync(s1, context, null, global::System.Threading.CancellationToken.None, true).Result;
                s2 = result_.s2;
                return result_.returnValue;
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        public void opException(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_opExceptionAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
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

        public global::System.Threading.Tasks.Task opOnewayAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_opOnewayAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_opOnewayAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            var completed = new global::IceInternal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_opOneway(context, synchronous, completed);
            return completed.Task;
        }

        private const string _opOneway_name = "opOneway";

        private void _iceI_opOneway(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _opOneway_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous);
        }

        public global::System.Threading.Tasks.Task<MyClass_OpStringResult> opStringAsync(string s1, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_opStringAsync(s1, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<MyClass_OpStringResult> _iceI_opStringAsync(string iceP_s1, global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_opString_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<MyClass_OpStringResult>(progress, cancel);
            _iceI_opString(iceP_s1, context, synchronous, completed);
            return completed.Task;
        }

        private const string _opString_name = "opString";

        private void _iceI_opString(string iceP_s1, global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<MyClass_OpStringResult>(completed);
            outAsync.invoke(
                _opString_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                write: (global::Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_s1);
                },
                read: (global::Ice.InputStream istr) =>
                {
                    MyClass_OpStringResult ret = new MyClass_OpStringResult();
                    ret.s2 = istr.readString();
                    ret.returnValue = istr.readString();
                    return ret;
                });
        }

        public global::System.Threading.Tasks.Task opExceptionAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_opExceptionAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_opExceptionAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_opException_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_opException(context, synchronous, completed);
            return completed.Task;
        }

        private const string _opException_name = "opException";

        private void _iceI_opException(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _opException_name,
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
                    catch(MyException)
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
            var completed = new global::IceInternal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_shutdown(context, synchronous, completed);
            return completed.Task;
        }

        private const string _shutdown_name = "shutdown";

        private void _iceI_shutdown(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
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

        #region Asynchronous operations

        public global::Ice.AsyncResult<Callback_MyClass_opOneway> begin_opOneway(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_opOneway(context, null, null, false);
        }

        public global::Ice.AsyncResult begin_opOneway(global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_opOneway(new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_opOneway(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_opOneway(context, callback, cookie, false);
        }

        public void end_opOneway(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _opOneway_name);
            ((global::IceInternal.OutgoingAsyncT<object>)resultI_.OutgoingAsync).getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_MyClass_opOneway> begin_opOneway(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_MyClass_opOneway, object>(
                (Callback_MyClass_opOneway cb, object ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke();
                    }
                },
                this, _opOneway_name, cookie, completedCallback);
            _iceI_opOneway(context, synchronous, completed);
            return completed;
        }

        public global::Ice.AsyncResult<Callback_MyClass_opString> begin_opString(string s1, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_opString(s1, context, null, null, false);
        }

        public global::Ice.AsyncResult begin_opString(string s1, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_opString(s1, new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_opString(string s1, global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_opString(s1, context, callback, cookie, false);
        }

        public string end_opString(out string s2, global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _opString_name);
            var outgoing_ = (global::IceInternal.OutgoingAsyncT<MyClass_OpStringResult>)resultI_.OutgoingAsync;
            var result_ = outgoing_.getResult(resultI_.wait());
            s2 = result_.s2;
            return result_.returnValue;
        }

        private global::Ice.AsyncResult<Callback_MyClass_opString> begin_opString(string iceP_s1, global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_opString_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_MyClass_opString, MyClass_OpStringResult>(
                (Callback_MyClass_opString cb, MyClass_OpStringResult ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke(ret.returnValue, ret.s2);
                    }
                },
                this, _opString_name, cookie, completedCallback);
            _iceI_opString(iceP_s1, context, synchronous, completed);
            return completed;
        }

        public global::Ice.AsyncResult<Callback_MyClass_opException> begin_opException(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_opException(context, null, null, false);
        }

        public global::Ice.AsyncResult begin_opException(global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_opException(new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_opException(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_opException(context, callback, cookie, false);
        }

        public void end_opException(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _opException_name);
            ((global::IceInternal.OutgoingAsyncT<object>)resultI_.OutgoingAsync).getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_MyClass_opException> begin_opException(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_opException_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_MyClass_opException, object>(
                (Callback_MyClass_opException cb, object ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke();
                    }
                },
                this, _opException_name, cookie, completedCallback);
            _iceI_opException(context, synchronous, completed);
            return completed;
        }

        public global::Ice.AsyncResult<Callback_MyClass_shutdown> begin_shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_shutdown(context, null, null, false);
        }

        public global::Ice.AsyncResult begin_shutdown(global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_shutdown(new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_shutdown(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_shutdown(context, callback, cookie, false);
        }

        public void end_shutdown(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _shutdown_name);
            ((global::IceInternal.OutgoingAsyncT<object>)resultI_.OutgoingAsync).getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_MyClass_shutdown> begin_shutdown(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_MyClass_shutdown, object>(
                (Callback_MyClass_shutdown cb, object ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke();
                    }
                },
                this, _shutdown_name, cookie, completedCallback);
            _iceI_shutdown(context, synchronous, completed);
            return completed;
        }

        #endregion

        #region Checked and unchecked cast operations

        public static MyClassPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            MyClassPrx r = b as MyClassPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                MyClassPrxHelper h = new MyClassPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static MyClassPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            MyClassPrx r = b as MyClassPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                MyClassPrxHelper h = new MyClassPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static MyClassPrx checkedCast(global::Ice.ObjectPrx b, string f)
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
                    MyClassPrxHelper h = new MyClassPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static MyClassPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
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
                    MyClassPrxHelper h = new MyClassPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static MyClassPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            MyClassPrx r = b as MyClassPrx;
            if(r == null)
            {
                MyClassPrxHelper h = new MyClassPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static MyClassPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            MyClassPrxHelper h = new MyClassPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::MyClass"
        };

        public static string ice_staticId()
        {
            return _ids[1];
        }

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, MyClassPrx v)
        {
            ostr.writeProxy(v);
        }

        public static MyClassPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                MyClassPrxHelper result = new MyClassPrxHelper();
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
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.10")]
    public abstract class MyClassDisp_ : global::Ice.ObjectImpl, MyClass
    {
        #region Slice operations

        public abstract void opOneway(global::Ice.Current current = null);

        public abstract string opString(string s1, out string s2, global::Ice.Current current = null);

        public abstract void opException(global::Ice.Current current = null);

        public abstract void shutdown(global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::MyClass"
        };

        public override bool ice_isA(string s, global::Ice.Current current = null)
        {
            return global::System.Array.BinarySearch(_ids, s, IceUtilInternal.StringUtil.OrdinalStringComparer) >= 0;
        }

        public override string[] ice_ids(global::Ice.Current current = null)
        {
            return _ids;
        }

        public override string ice_id(global::Ice.Current current = null)
        {
            return _ids[1];
        }

        public static new string ice_staticId()
        {
            return _ids[1];
        }

        #endregion

        #region Operation dispatch

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_opOneway(MyClass obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.opOneway(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_opString(MyClass obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            var istr = inS.startReadParams();
            string iceP_s1;
            iceP_s1 = istr.readString();
            inS.endReadParams();
            string iceP_s2;
            var ret = obj.opString(iceP_s1, out iceP_s2, current);
            var ostr = inS.startWriteParams();
            ostr.writeString(iceP_s2);
            ostr.writeString(ret);
            inS.endWriteParams(ostr);
            return inS.setResult(ostr);
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_opException(MyClass obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.opException(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_shutdown(MyClass obj, global::IceInternal.Incoming inS, global::Ice.Current current)
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
            "opException",
            "opOneway",
            "opString",
            "shutdown"
        };

        public override global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceDispatch(global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            int pos = global::System.Array.BinarySearch(_all, current.operation, global::IceUtilInternal.StringUtil.OrdinalStringComparer);
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
                    return iceD_opException(this, inS, current);
                }
                case 5:
                {
                    return iceD_opOneway(this, inS, current);
                }
                case 6:
                {
                    return iceD_opString(this, inS, current);
                }
                case 7:
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
