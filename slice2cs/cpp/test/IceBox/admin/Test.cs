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
    public partial interface TestFacet : global::Ice.Object, TestFacetOperations_
    {
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public delegate void Callback_TestFacet_getChanges(global::System.Collections.Generic.Dictionary<string, string> ret);
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface TestFacetPrx : global::Ice.ObjectPrx
    {
        global::System.Collections.Generic.Dictionary<string, string> getChanges(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> getChangesAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_TestFacet_getChanges> begin_getChanges(global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_getChanges(global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_getChanges(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        global::System.Collections.Generic.Dictionary<string, string> end_getChanges(global::Ice.AsyncResult asyncResult);
    }
}

namespace Test
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface TestFacetOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        global::System.Collections.Generic.Dictionary<string, string> getChanges(global::Ice.Current current = null);
    }
}

namespace Test
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    [global::System.Serializable]
    public sealed class TestFacetPrxHelper : global::Ice.ObjectPrxHelperBase, TestFacetPrx
    {
        public TestFacetPrxHelper()
        {
        }

        public TestFacetPrxHelper(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #region Synchronous operations

        public global::System.Collections.Generic.Dictionary<string, string> getChanges(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                return _iceI_getChangesAsync(context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        #endregion

        #region Async Task operations

        public global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> getChangesAsync(global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_getChangesAsync(context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<global::System.Collections.Generic.Dictionary<string, string>> _iceI_getChangesAsync(global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getChanges_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<global::System.Collections.Generic.Dictionary<string, string>>(progress, cancel);
            _iceI_getChanges(context, synchronous, completed);
            return completed.Task;
        }

        private const string _getChanges_name = "getChanges";

        private void _iceI_getChanges(global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<global::System.Collections.Generic.Dictionary<string, string>>(completed);
            outAsync.invoke(
                _getChanges_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                read: (global::Ice.InputStream istr) =>
                {
                    global::System.Collections.Generic.Dictionary<string, string> ret;
                    ret = global::Ice.PropertyDictHelper.read(istr);
                    return ret;
                });
        }

        #endregion

        #region Asynchronous operations

        public global::Ice.AsyncResult<Callback_TestFacet_getChanges> begin_getChanges(global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_getChanges(context, null, null, false);
        }

        public global::Ice.AsyncResult begin_getChanges(global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getChanges(new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_getChanges(global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getChanges(context, callback, cookie, false);
        }

        public global::System.Collections.Generic.Dictionary<string, string> end_getChanges(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _getChanges_name);
            var outgoing_ = (global::IceInternal.OutgoingAsyncT<global::System.Collections.Generic.Dictionary<string, string>>)resultI_.OutgoingAsync;
            return outgoing_.getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_TestFacet_getChanges> begin_getChanges(global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_getChanges_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_TestFacet_getChanges, global::System.Collections.Generic.Dictionary<string, string>>(
                (Callback_TestFacet_getChanges cb, global::System.Collections.Generic.Dictionary<string, string> ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke(ret);
                    }
                },
                this, _getChanges_name, cookie, completedCallback);
            _iceI_getChanges(context, synchronous, completed);
            return completed;
        }

        #endregion

        #region Checked and unchecked cast operations

        public static TestFacetPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            TestFacetPrx r = b as TestFacetPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                TestFacetPrxHelper h = new TestFacetPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static TestFacetPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            TestFacetPrx r = b as TestFacetPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                TestFacetPrxHelper h = new TestFacetPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static TestFacetPrx checkedCast(global::Ice.ObjectPrx b, string f)
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
                    TestFacetPrxHelper h = new TestFacetPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static TestFacetPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
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
                    TestFacetPrxHelper h = new TestFacetPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static TestFacetPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            TestFacetPrx r = b as TestFacetPrx;
            if(r == null)
            {
                TestFacetPrxHelper h = new TestFacetPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static TestFacetPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            TestFacetPrxHelper h = new TestFacetPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::TestFacet"
        };

        public static string ice_staticId()
        {
            return _ids[1];
        }

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, TestFacetPrx v)
        {
            ostr.writeProxy(v);
        }

        public static TestFacetPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                TestFacetPrxHelper result = new TestFacetPrxHelper();
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
    public abstract class TestFacetDisp_ : global::Ice.ObjectImpl, TestFacet
    {
        #region Slice operations

        public abstract global::System.Collections.Generic.Dictionary<string, string> getChanges(global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::Test::TestFacet"
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
        iceD_getChanges(TestFacet obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            inS.readEmptyParams();
            var ret = obj.getChanges(current);
            var ostr = inS.startWriteParams();
            global::Ice.PropertyDictHelper.write(ostr, ret);
            inS.endWriteParams(ostr);
            return inS.setResult(ostr);
        }

        private static readonly string[] _all =
        {
            "getChanges",
            "ice_id",
            "ice_ids",
            "ice_isA",
            "ice_ping"
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
                    return iceD_getChanges(this, inS, current);
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
            }

            global::System.Diagnostics.Debug.Assert(false);
            throw new global::Ice.OperationNotExistException(current.id, current.facet, current.operation);
        }

        #endregion
    }
}
