//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `User.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace User
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
    public partial class UserInfo : global::Ice.Value
    {
        partial void ice_initialize();

        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public UserInfo()
        {
            ice_initialize();
        }

        #endregion

        private const string _id = "::User::UserInfo";

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
    public partial interface Registry : global::Ice.Object, RegistryOperations_
    {
    }
}

namespace User
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public delegate void Callback_Registry_getUserInfo(UserInfo ret);
}

namespace User
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface RegistryPrx : global::Ice.ObjectPrx
    {
        UserInfo getUserInfo(string id, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::System.Threading.Tasks.Task<UserInfo> getUserInfoAsync(string id, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        global::Ice.AsyncResult<Callback_Registry_getUserInfo> begin_getUserInfo(string id, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        global::Ice.AsyncResult begin_getUserInfo(string id, global::Ice.AsyncCallback callback, object cookie);

        global::Ice.AsyncResult begin_getUserInfo(string id, global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        UserInfo end_getUserInfo(global::Ice.AsyncResult asyncResult);
    }
}

namespace User
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface RegistryOperations_
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        UserInfo getUserInfo(string id, global::Ice.Current current = null);
    }
}

namespace User
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    [global::System.Serializable]
    public sealed class RegistryPrxHelper : global::Ice.ObjectPrxHelperBase, RegistryPrx
    {
        public RegistryPrxHelper()
        {
        }

        public RegistryPrxHelper(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #region Synchronous operations

        public UserInfo getUserInfo(string id, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                return _iceI_getUserInfoAsync(id, context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        #endregion

        #region Async Task operations

        public global::System.Threading.Tasks.Task<UserInfo> getUserInfoAsync(string id, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_getUserInfoAsync(id, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<UserInfo> _iceI_getUserInfoAsync(string iceP_id, global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getUserInfo_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<UserInfo>(progress, cancel);
            _iceI_getUserInfo(iceP_id, context, synchronous, completed);
            return completed.Task;
        }

        private const string _getUserInfo_name = "getUserInfo";

        private void _iceI_getUserInfo(string iceP_id, global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<UserInfo>(completed);
            outAsync.invoke(
                _getUserInfo_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                write: (global::Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_id);
                },
                userException: (global::Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(global::Core.ArgumentException)
                    {
                        throw;
                    }
                    catch(global::Ice.UserException)
                    {
                    }
                },
                read: (global::Ice.InputStream istr) =>
                {
                    UserInfo ret = null;
                    istr.readValue((UserInfo v) => {ret = v; });
                    istr.readPendingValues();
                    return ret;
                });
        }

        #endregion

        #region Asynchronous operations

        public global::Ice.AsyncResult<Callback_Registry_getUserInfo> begin_getUserInfo(string id, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_getUserInfo(id, context, null, null, false);
        }

        public global::Ice.AsyncResult begin_getUserInfo(string id, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getUserInfo(id, new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_getUserInfo(string id, global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getUserInfo(id, context, callback, cookie, false);
        }

        public UserInfo end_getUserInfo(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _getUserInfo_name);
            var outgoing_ = (global::IceInternal.OutgoingAsyncT<UserInfo>)resultI_.OutgoingAsync;
            return outgoing_.getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_Registry_getUserInfo> begin_getUserInfo(string iceP_id, global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_getUserInfo_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_Registry_getUserInfo, UserInfo>(
                (Callback_Registry_getUserInfo cb, UserInfo ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke(ret);
                    }
                },
                this, _getUserInfo_name, cookie, completedCallback);
            _iceI_getUserInfo(iceP_id, context, synchronous, completed);
            return completed;
        }

        #endregion

        #region Checked and unchecked cast operations

        public static RegistryPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            RegistryPrx r = b as RegistryPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                RegistryPrxHelper h = new RegistryPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static RegistryPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            RegistryPrx r = b as RegistryPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                RegistryPrxHelper h = new RegistryPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static RegistryPrx checkedCast(global::Ice.ObjectPrx b, string f)
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
                    RegistryPrxHelper h = new RegistryPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static RegistryPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
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
                    RegistryPrxHelper h = new RegistryPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static RegistryPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            RegistryPrx r = b as RegistryPrx;
            if(r == null)
            {
                RegistryPrxHelper h = new RegistryPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static RegistryPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            RegistryPrxHelper h = new RegistryPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::User::Registry"
        };

        public static string ice_staticId()
        {
            return _ids[1];
        }

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, RegistryPrx v)
        {
            ostr.writeProxy(v);
        }

        public static RegistryPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                RegistryPrxHelper result = new RegistryPrxHelper();
                result.iceCopyFrom(proxy);
                return result;
            }
            return null;
        }

        #endregion
    }
}

namespace User
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public abstract class RegistryDisp_ : global::Ice.ObjectImpl, Registry
    {
        #region Slice operations

        public abstract UserInfo getUserInfo(string id, global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::User::Registry"
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
        iceD_getUserInfo(Registry obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            var istr = inS.startReadParams();
            string iceP_id;
            iceP_id = istr.readString();
            inS.endReadParams();
            var ret = obj.getUserInfo(iceP_id, current);
            var ostr = inS.startWriteParams();
            ostr.writeValue(ret);
            ostr.writePendingValues();
            inS.endWriteParams(ostr);
            return inS.setResult(ostr);
        }

        private static readonly string[] _all =
        {
            "getUserInfo",
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
                    return iceD_getUserInfo(this, inS, current);
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
