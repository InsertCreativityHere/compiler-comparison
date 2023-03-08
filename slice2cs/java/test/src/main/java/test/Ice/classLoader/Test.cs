//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
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
    [global::System.Serializable]
    public partial class ConcreteClass : global::Ice.Value
    {
        #region Slice data members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public int i;

        #endregion

        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public ConcreteClass()
        {
            ice_initialize();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public ConcreteClass(int i)
        {
            this.i = i;
            ice_initialize();
        }

        #endregion

        private const string _id = "::Test::ConcreteClass";

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static new string ice_staticId()
        {
            return _id;
        }
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override string ice_id()
        {
            return _id;
        }

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
        {
            ostr_.startSlice(ice_staticId(), -1, true);
            ostr_.writeInt(i);
            ostr_.endSlice();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        protected override void iceReadImpl(global::Ice.InputStream istr_)
        {
            istr_.startSlice();
            i = istr_.readInt();
            istr_.endSlice();
        }

        #endregion
    }

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
    public partial class E : global::Ice.UserException
    {
        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public E()
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public E(global::System.Exception ex) : base(ex)
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public E(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #endregion

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override string ice_id()
        {
            return "::Test::E";
        }

        #region Object members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override int GetHashCode()
        {
            int h_ = 5381;
            global::IceInternal.HashUtil.hashAdd(ref h_, "::Test::E");
            return h_;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override bool Equals(object other)
        {
            if(other == null)
            {
                return false;
            }
            if(object.ReferenceEquals(this, other))
            {
                return true;
            }
            E o = other as E;
            if(o == null)
            {
                return false;
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator==(E lhs, E rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator!=(E lhs, E rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::Test::E", -1, true);
            ostr_.endSlice();
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
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
    public partial interface Initial : global::Ice.Object, InitialOperations_
    {
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public delegate void Callback_Initial_getConcreteClass(ConcreteClass ret);

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public delegate void Callback_Initial_throwException();

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public delegate void Callback_Initial_shutdown();
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface InitialPrx : global::Ice.ObjectPrx
    {
        ConcreteClass getConcreteClass(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task<ConcreteClass> getConcreteClassAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_Initial_getConcreteClass> begin_getConcreteClass(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_getConcreteClass(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_getConcreteClass(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        ConcreteClass end_getConcreteClass(global::Ice.AsyncResult asyncResult);

        void throwException(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task throwExceptionAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_Initial_throwException> begin_throwException(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_throwException(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_throwException(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        void end_throwException(global::Ice.AsyncResult asyncResult);

        void shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task shutdownAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_Initial_shutdown> begin_shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_shutdown(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_shutdown(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        void end_shutdown(global::Ice.AsyncResult asyncResult);
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface InitialOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        ConcreteClass getConcreteClass(global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        void throwException(global::Ice.Current current = null);

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        void shutdown(global::Ice.Current current = null);
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    [global::System.Serializable]
    public sealed class InitialPrxHelper : global::Ice.ObjectPrxHelperBase, InitialPrx
    {
        public InitialPrxHelper()
        {
        }

        public InitialPrxHelper(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #region Synchronous operations

        public ConcreteClass getConcreteClass(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                return _iceI_getConcreteClassAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        public void throwException(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                _iceI_throwExceptionAsync(context, null, global::System.Threading.CancellationToken.None, true).Wait();
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

        public global::System.Threading.Tasks.Task<ConcreteClass> getConcreteClassAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_getConcreteClassAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<ConcreteClass> _iceI_getConcreteClassAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getConcreteClass_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<ConcreteClass>(progress, cancel);
            _iceI_getConcreteClass(context, synchronous, completed);
            return completed.Task;
        }

        private const string _getConcreteClass_name = "getConcreteClass";

        private void _iceI_getConcreteClass(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<ConcreteClass>(completed);
            outAsync.invoke(
                _getConcreteClass_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                read: (global::Ice.InputStream istr) =>
                {
                    ConcreteClass ret = null;
                    istr.readValue((ConcreteClass v) => {ret = v; });
                    istr.readPendingValues();
                    return ret;
                });
        }

        public global::System.Threading.Tasks.Task throwExceptionAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_throwExceptionAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task _iceI_throwExceptionAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_throwException_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<object>(progress, cancel);
            _iceI_throwException(context, synchronous, completed);
            return completed.Task;
        }

        private const string _throwException_name = "throwException";

        private void _iceI_throwException(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<object>(completed);
            outAsync.invoke(
                _throwException_name,
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
                    catch(E)
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

        public global::Ice.AsyncResult<Callback_Initial_getConcreteClass> begin_getConcreteClass(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_getConcreteClass(context, null, null, false);
        }

        public global::Ice.AsyncResult begin_getConcreteClass(global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getConcreteClass(new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_getConcreteClass(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getConcreteClass(context, callback, cookie, false);
        }

        public ConcreteClass end_getConcreteClass(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _getConcreteClass_name);
            var outgoing_ = (global::IceInternal.OutgoingAsyncT<ConcreteClass>)resultI_.OutgoingAsync;
            return outgoing_.getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_Initial_getConcreteClass> begin_getConcreteClass(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_getConcreteClass_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_Initial_getConcreteClass, ConcreteClass>(
                (Callback_Initial_getConcreteClass cb, ConcreteClass ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke(ret);
                    }
                },
                this, _getConcreteClass_name, cookie, completedCallback);
            _iceI_getConcreteClass(context, synchronous, completed);
            return completed;
        }

        public global::Ice.AsyncResult<Callback_Initial_throwException> begin_throwException(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_throwException(context, null, null, false);
        }

        public global::Ice.AsyncResult begin_throwException(global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_throwException(new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_throwException(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_throwException(context, callback, cookie, false);
        }

        public void end_throwException(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _throwException_name);
            ((global::IceInternal.OutgoingAsyncT<object>)resultI_.OutgoingAsync).getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_Initial_throwException> begin_throwException(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_throwException_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_Initial_throwException, object>(
                (Callback_Initial_throwException cb, object ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke();
                    }
                },
                this, _throwException_name, cookie, completedCallback);
            _iceI_throwException(context, synchronous, completed);
            return completed;
        }

        public global::Ice.AsyncResult<Callback_Initial_shutdown> begin_shutdown(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
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

        private global::Ice.AsyncResult<Callback_Initial_shutdown> begin_shutdown(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_Initial_shutdown, object>(
                (Callback_Initial_shutdown cb, object ret) =>
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

        public static InitialPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            InitialPrx r = b as InitialPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                InitialPrxHelper h = new InitialPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static InitialPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            InitialPrx r = b as InitialPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                InitialPrxHelper h = new InitialPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static InitialPrx checkedCast(global::Ice.ObjectPrx b, string f)
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
                    InitialPrxHelper h = new InitialPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static InitialPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
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
                    InitialPrxHelper h = new InitialPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static InitialPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            InitialPrx r = b as InitialPrx;
            if(r == null)
            {
                InitialPrxHelper h = new InitialPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static InitialPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            InitialPrxHelper h = new InitialPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Initial"
        };

        public static string ice_staticId()
        {
            return _ids[1];
        }

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, InitialPrx v)
        {
            ostr.writeProxy(v);
        }

        public static InitialPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                InitialPrxHelper result = new InitialPrxHelper();
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
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public abstract class InitialDisp_ : global::Ice.ObjectImpl, Initial
    {
        #region Slice operations

        public abstract ConcreteClass getConcreteClass(global::Ice.Current current = null);

        public abstract void throwException(global::Ice.Current current = null);

        public abstract void shutdown(global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::Initial"
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
        iceD_getConcreteClass(Initial obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            var ret = obj.getConcreteClass(current);
            var ostr = inS.startWriteParams();
            ostr.writeValue(ret);
            ostr.writePendingValues();
            inS.endWriteParams(ostr);
            return inS.setResult(ostr);
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_throwException(Initial obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.throwException(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        [global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
        public static global::System.Threading.Tasks.Task<global::Ice.OutputStream>
        iceD_shutdown(Initial obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            obj.shutdown(current);
            return inS.setResult(inS.writeEmptyParams());
        }

        private static readonly string[] _all =
        {
            "getConcreteClass",
            "ice_id",
            "ice_ids",
            "ice_isA",
            "ice_ping",
            "shutdown",
            "throwException"
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
                    return iceD_getConcreteClass(this, inS, current);
                }
                case 1:
                {
                    return global::Ice.ObjectImpl.iceD_ice_id(this, inS, current);
                }
                case 2:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ids(this, inS, current);
                }
                case 3:
                {
                    return global::Ice.ObjectImpl.iceD_ice_isA(this, inS, current);
                }
                case 4:
                {
                    return global::Ice.ObjectImpl.iceD_ice_ping(this, inS, current);
                }
                case 5:
                {
                    return iceD_shutdown(this, inS, current);
                }
                case 6:
                {
                    return iceD_throwException(this, inS, current);
                }
            }

            global::System.Diagnostics.Debug.Assert(false);
            throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        #endregion
    }
}
