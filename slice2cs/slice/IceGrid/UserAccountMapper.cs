//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `UserAccountMapper.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


using _System = global::System;

#pragma warning disable 1591

namespace IceGrid
{
    /// <summary>
    /// This exception is raised if a user account for a given session
    /// identifier can't be found.
    /// </summary>

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
    public partial class UserAccountNotFoundException : global::Ice.UserException
    {
        #region Constructors

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public UserAccountNotFoundException()
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public UserAccountNotFoundException(global::System.Exception ex) : base(ex)
        {
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public UserAccountNotFoundException(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #endregion

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override string ice_id()
        {
            return "::IceGrid::UserAccountNotFoundException";
        }

        #region Object members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public override int GetHashCode()
        {
            int h_ = 5381;
            global::IceInternal.HashUtil.hashAdd(ref h_, "::IceGrid::UserAccountNotFoundException");
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
            UserAccountNotFoundException o = other as UserAccountNotFoundException;
            if(o == null)
            {
                return false;
            }
            return true;
        }

        #endregion

        #region Comparison members

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator==(UserAccountNotFoundException lhs, UserAccountNotFoundException rhs)
        {
            return Equals(lhs, rhs);
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        public static bool operator!=(UserAccountNotFoundException lhs, UserAccountNotFoundException rhs)
        {
            return !Equals(lhs, rhs);
        }

        #endregion

        #region Marshaling support

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        protected override void iceWriteImpl(global::Ice.OutputStream ostr_)
        {
            ostr_.startSlice("::IceGrid::UserAccountNotFoundException", -1, true);
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
    public partial interface UserAccountMapper : global::Ice.Object, UserAccountMapperOperations_
    {
    }
}

namespace IceGrid
{
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public delegate void Callback_UserAccountMapper_getUserAccount(string ret);
}

namespace IceGrid
{
    /// <summary>
    /// A user account mapper object is used by IceGrid nodes to map
    /// session identifiers to user accounts.
    /// </summary>

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface UserAccountMapperPrx : global::Ice.ObjectPrx
    {
        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// used by IceGrid nodes to figure out the user account to use
        /// to run servers.
        ///
        /// </summary>
        /// <param name="user">The value of the server descriptor's user
        /// attribute. If this attribute is not defined, and the server's
        /// activation mode is session, the default value of
        /// user is the session identifier.
        ///
        /// </param>
        /// <returns>The user account name.
        ///
        /// </returns>
        /// <exception name="UserAccountNotFoundException">Raised if no user account
        /// is found for the given user.</exception>
        /// <param name="context">The Context map to send with the invocation.</param>

        string getUserAccount(string user, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// </summary>
        /// <param name="user">The value of the server descriptor's user
        /// attribute. If this attribute is not defined, and the server's
        /// activation mode is session, the default value of
        /// user is the session identifier.
        ///
        /// </param>
        /// <param name="context">Context map to send with the invocation.</param>
        /// <param name="progress">Sent progress provider.</param>
        /// <param name="cancel">A cancellation token that receives the cancellation requests.</param>
        /// <returns>The task object representing the asynchronous operation.</returns>
        global::System.Threading.Tasks.Task<string> getUserAccountAsync(string user, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken());

        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// </summary>
        /// <param name="user">The value of the server descriptor's user
        /// attribute. If this attribute is not defined, and the server's
        /// activation mode is session, the default value of
        /// user is the session identifier.
        ///
        /// </param>
        /// <param name="context">The Context map to send with the invocation.</param>
        /// <returns>An asynchronous result object.</returns>
        global::Ice.AsyncResult<Callback_UserAccountMapper_getUserAccount> begin_getUserAccount(string user, global::Ice.OptionalContext context = new global::Ice.OptionalContext());

        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// </summary>
        /// <param name="user">The value of the server descriptor's user
        /// attribute. If this attribute is not defined, and the server's
        /// activation mode is session, the default value of
        /// user is the session identifier.
        ///
        /// </param>
        /// <param name="callback">Asynchronous callback invoked when the operation completes.</param>
        /// <param name="cookie">Application data to store in the asynchronous result object.</param>
        /// <returns>An asynchronous result object.</returns>
        global::Ice.AsyncResult begin_getUserAccount(string user, global::Ice.AsyncCallback callback, object cookie);

        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// </summary>
        /// <param name="user">The value of the server descriptor's user
        /// attribute. If this attribute is not defined, and the server's
        /// activation mode is session, the default value of
        /// user is the session identifier.
        ///
        /// </param>
        /// <param name="context">The Context map to send with the invocation.</param>
        /// <param name="callback">Asynchronous callback invoked when the operation completes.</param>
        /// <param name="cookie">Application data to store in the asynchronous result object.</param>
        /// <returns>An asynchronous result object.</returns>
        global::Ice.AsyncResult begin_getUserAccount(string user, global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie);

        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// </summary>
        /// <param name="asyncResult">The asynchronous result object for the invocation.</param>
        /// <returns>The user account name.
        ///
        /// </returns>
        string end_getUserAccount(global::Ice.AsyncResult asyncResult);
    }
}

namespace IceGrid
{
    /// <summary>
    /// A user account mapper object is used by IceGrid nodes to map
    /// session identifiers to user accounts.
    /// </summary>

    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public interface UserAccountMapperOperations_
    {
        /// <summary>
        /// Get the name of the user account for the given user.
        /// This is
        /// used by IceGrid nodes to figure out the user account to use
        /// to run servers.
        ///
        /// </summary>
        /// <param name="user">The value of the server descriptor's user
        /// attribute. If this attribute is not defined, and the server's
        /// activation mode is session, the default value of
        /// user is the session identifier.
        ///
        /// </param>
        /// <returns>The user account name.
        ///
        /// </returns>
        /// <exception name="UserAccountNotFoundException">Raised if no user account
        /// is found for the given user.</exception>
        /// <param name="current">The Current object for the invocation.</param>

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
        string getUserAccount(string user, global::Ice.Current current = null);
    }
}

namespace IceGrid
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    [global::System.Serializable]
    public sealed class UserAccountMapperPrxHelper : global::Ice.ObjectPrxHelperBase, UserAccountMapperPrx
    {
        public UserAccountMapperPrxHelper()
        {
        }

        public UserAccountMapperPrxHelper(global::System.Runtime.Serialization.SerializationInfo info, global::System.Runtime.Serialization.StreamingContext context) : base(info, context)
        {
        }

        #region Synchronous operations

        public string getUserAccount(string user, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            try
            {
                return _iceI_getUserAccountAsync(user, context, null, global::System.Threading.CancellationToken.None, true).Result;
            }
            catch(global::System.AggregateException ex_)
            {
                throw ex_.InnerException;
            }
        }

        #endregion

        #region Async Task operations

        public global::System.Threading.Tasks.Task<string> getUserAccountAsync(string user, global::Ice.OptionalContext context = new global::Ice.OptionalContext(), global::System.IProgress<bool> progress = null, global::System.Threading.CancellationToken cancel = new global::System.Threading.CancellationToken())
        {
            return _iceI_getUserAccountAsync(user, context, progress, cancel, false);
        }

        private global::System.Threading.Tasks.Task<string> _iceI_getUserAccountAsync(string iceP_user, global::Ice.OptionalContext context, global::System.IProgress<bool> progress, global::System.Threading.CancellationToken cancel, bool synchronous)
        {
            iceCheckTwowayOnly(_getUserAccount_name);
            var completed = new global::IceInternal.OperationTaskCompletionCallback<string>(progress, cancel);
            _iceI_getUserAccount(iceP_user, context, synchronous, completed);
            return completed.Task;
        }

        private const string _getUserAccount_name = "getUserAccount";

        private void _iceI_getUserAccount(string iceP_user, global::System.Collections.Generic.Dictionary<string, string> context, bool synchronous, global::IceInternal.OutgoingAsyncCompletionCallback completed)
        {
            var outAsync = getOutgoingAsync<string>(completed);
            outAsync.invoke(
                _getUserAccount_name,
                global::Ice.OperationMode.Normal,
                global::Ice.FormatType.DefaultFormat,
                context,
                synchronous,
                write: (global::Ice.OutputStream ostr) =>
                {
                    ostr.writeString(iceP_user);
                },
                userException: (global::Ice.UserException ex) =>
                {
                    try
                    {
                        throw ex;
                    }
                    catch(UserAccountNotFoundException)
                    {
                        throw;
                    }
                    catch(global::Ice.UserException)
                    {
                    }
                },
                read: (global::Ice.InputStream istr) =>
                {
                    string ret;
                    ret = istr.readString();
                    return ret;
                });
        }

        #endregion

        #region Asynchronous operations

        public global::Ice.AsyncResult<Callback_UserAccountMapper_getUserAccount> begin_getUserAccount(string user, global::Ice.OptionalContext context = new global::Ice.OptionalContext())
        {
            return begin_getUserAccount(user, context, null, null, false);
        }

        public global::Ice.AsyncResult begin_getUserAccount(string user, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getUserAccount(user, new global::Ice.OptionalContext(), callback, cookie, false);
        }

        public global::Ice.AsyncResult begin_getUserAccount(string user, global::Ice.OptionalContext context, global::Ice.AsyncCallback callback, object cookie)
        {
            return begin_getUserAccount(user, context, callback, cookie, false);
        }

        public string end_getUserAccount(global::Ice.AsyncResult asyncResult)
        {
            var resultI_ = global::IceInternal.AsyncResultI.check(asyncResult, this, _getUserAccount_name);
            var outgoing_ = (global::IceInternal.OutgoingAsyncT<string>)resultI_.OutgoingAsync;
            return outgoing_.getResult(resultI_.wait());
        }

        private global::Ice.AsyncResult<Callback_UserAccountMapper_getUserAccount> begin_getUserAccount(string iceP_user, global::System.Collections.Generic.Dictionary<string, string> context, global::Ice.AsyncCallback completedCallback, object cookie, bool synchronous)
        {
            iceCheckAsyncTwowayOnly(_getUserAccount_name);
            var completed = new global::IceInternal.OperationAsyncResultCompletionCallback<Callback_UserAccountMapper_getUserAccount, string>(
                (Callback_UserAccountMapper_getUserAccount cb, string ret) =>
                {
                    if(cb != null)
                    {
                        cb.Invoke(ret);
                    }
                },
                this, _getUserAccount_name, cookie, completedCallback);
            _iceI_getUserAccount(iceP_user, context, synchronous, completed);
            return completed;
        }

        #endregion

        #region Checked and unchecked cast operations

        public static UserAccountMapperPrx checkedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            UserAccountMapperPrx r = b as UserAccountMapperPrx;
            if((r == null) && b.ice_isA(ice_staticId()))
            {
                UserAccountMapperPrxHelper h = new UserAccountMapperPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static UserAccountMapperPrx checkedCast(global::Ice.ObjectPrx b, global::System.Collections.Generic.Dictionary<string, string> ctx)
        {
            if(b == null)
            {
                return null;
            }
            UserAccountMapperPrx r = b as UserAccountMapperPrx;
            if((r == null) && b.ice_isA(ice_staticId(), ctx))
            {
                UserAccountMapperPrxHelper h = new UserAccountMapperPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static UserAccountMapperPrx checkedCast(global::Ice.ObjectPrx b, string f)
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
                    UserAccountMapperPrxHelper h = new UserAccountMapperPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static UserAccountMapperPrx checkedCast(global::Ice.ObjectPrx b, string f, global::System.Collections.Generic.Dictionary<string, string> ctx)
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
                    UserAccountMapperPrxHelper h = new UserAccountMapperPrxHelper();
                    h.iceCopyFrom(bb);
                    return h;
                }
            }
            catch(global::Ice.FacetNotExistException)
            {
            }
            return null;
        }

        public static UserAccountMapperPrx uncheckedCast(global::Ice.ObjectPrx b)
        {
            if(b == null)
            {
                return null;
            }
            UserAccountMapperPrx r = b as UserAccountMapperPrx;
            if(r == null)
            {
                UserAccountMapperPrxHelper h = new UserAccountMapperPrxHelper();
                h.iceCopyFrom(b);
                r = h;
            }
            return r;
        }

        public static UserAccountMapperPrx uncheckedCast(global::Ice.ObjectPrx b, string f)
        {
            if(b == null)
            {
                return null;
            }
            global::Ice.ObjectPrx bb = b.ice_facet(f);
            UserAccountMapperPrxHelper h = new UserAccountMapperPrxHelper();
            h.iceCopyFrom(bb);
            return h;
        }

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::IceGrid::UserAccountMapper"
        };

        public static string ice_staticId()
        {
            return _ids[1];
        }

        #endregion

        #region Marshaling support

        public static void write(global::Ice.OutputStream ostr, UserAccountMapperPrx v)
        {
            ostr.writeProxy(v);
        }

        public static UserAccountMapperPrx read(global::Ice.InputStream istr)
        {
            global::Ice.ObjectPrx proxy = istr.readProxy();
            if(proxy != null)
            {
                UserAccountMapperPrxHelper result = new UserAccountMapperPrxHelper();
                result.iceCopyFrom(proxy);
                return result;
            }
            return null;
        }

        #endregion
    }
}

namespace IceGrid
{
    [global::System.Runtime.InteropServices.ComVisible(false)]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("slice2cs", "3.7.9")]
    public abstract class UserAccountMapperDisp_ : global::Ice.ObjectImpl, UserAccountMapper
    {
        #region Slice operations

        public abstract string getUserAccount(string user, global::Ice.Current current = null);

        #endregion

        #region Slice type-related members

        private static readonly string[] _ids =
        {
            "::Ice::Object",
            "::IceGrid::UserAccountMapper"
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
        iceD_getUserAccount(UserAccountMapper obj, global::IceInternal.Incoming inS, global::Ice.Current current)
        {
            global::Ice.ObjectImpl.iceCheckMode(global::Ice.OperationMode.Normal, current.mode);
            var istr = inS.startReadParams();
            string iceP_user;
            iceP_user = istr.readString();
            inS.endReadParams();
            var ret = obj.getUserAccount(iceP_user, current);
            var ostr = inS.startWriteParams();
            ostr.writeString(ret);
            inS.endWriteParams(ostr);
            return inS.setResult(ostr);
        }

        private static readonly string[] _all =
        {
            "getUserAccount",
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
                    return iceD_getUserAccount(this, inS, current);
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
