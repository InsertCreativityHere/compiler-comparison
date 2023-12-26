//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `RemoteLogger.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICE_API_EXPORTS
#   define ICE_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <RemoteLogger.h>
#include <IceUtil/PushDisableWarnings.h>
#include <IceUtil/PopDisableWarnings.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 10
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::std::string iceC_Ice_RemoteLogger_ids[2] =
{
    "::Ice::Object",
    "::Ice::RemoteLogger"
};
const ::std::string iceC_Ice_RemoteLogger_ops[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "init",
    "log"
};
const ::std::string iceC_Ice_RemoteLogger_init_name = "init";
const ::std::string iceC_Ice_RemoteLogger_log_name = "log";

const ::IceInternal::DefaultUserExceptionFactoryInit<::Ice::RemoteLoggerAlreadyAttachedException> iceC_Ice_RemoteLoggerAlreadyAttachedException_init("::Ice::RemoteLoggerAlreadyAttachedException");

const ::std::string iceC_Ice_LoggerAdmin_ids[2] =
{
    "::Ice::LoggerAdmin",
    "::Ice::Object"
};
const ::std::string iceC_Ice_LoggerAdmin_ops[] =
{
    "attachRemoteLogger",
    "detachRemoteLogger",
    "getLog",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Ice_LoggerAdmin_attachRemoteLogger_name = "attachRemoteLogger";
const ::std::string iceC_Ice_LoggerAdmin_detachRemoteLogger_name = "detachRemoteLogger";
const ::std::string iceC_Ice_LoggerAdmin_getLog_name = "getLog";

}

Ice::RemoteLoggerAlreadyAttachedException::~RemoteLoggerAlreadyAttachedException()
{
}

const ::std::string&
Ice::RemoteLoggerAlreadyAttachedException::ice_staticId()
{
    static const ::std::string typeId = "::Ice::RemoteLoggerAlreadyAttachedException";
    return typeId;
}

bool
Ice::RemoteLogger::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_RemoteLogger_ids, iceC_Ice_RemoteLogger_ids + 2, s);
}

::std::vector<::std::string>
Ice::RemoteLogger::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_RemoteLogger_ids[0], &iceC_Ice_RemoteLogger_ids[2]);
}

::std::string
Ice::RemoteLogger::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::RemoteLogger::ice_staticId()
{
    static const ::std::string typeId = "::Ice::RemoteLogger";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceD_init(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::string iceP_prefix;
    LogMessageSeq iceP_logMessages;
    istr->readAll(iceP_prefix, iceP_logMessages);
    inS.endReadParams();
    this->init(::std::move(iceP_prefix), ::std::move(iceP_logMessages), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceD_log(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    LogMessage iceP_message;
    istr->readAll(iceP_message);
    inS.endReadParams();
    this->log(::std::move(iceP_message), current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_RemoteLogger_ops, iceC_Ice_RemoteLogger_ops + 6, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_RemoteLogger_ops)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_init(in, current);
        }
        case 5:
        {
            return _iceD_log(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
Ice::LoggerAdmin::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_LoggerAdmin_ids, iceC_Ice_LoggerAdmin_ids + 2, s);
}

::std::vector<::std::string>
Ice::LoggerAdmin::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_LoggerAdmin_ids[0], &iceC_Ice_LoggerAdmin_ids[2]);
}

::std::string
Ice::LoggerAdmin::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::LoggerAdmin::ice_staticId()
{
    static const ::std::string typeId = "::Ice::LoggerAdmin";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_attachRemoteLogger(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<RemoteLoggerPrx> iceP_prx;
    LogMessageTypeSeq iceP_messageTypes;
    StringSeq iceP_traceCategories;
    int iceP_messageMax;
    istr->readAll(iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
    inS.endReadParams();
    this->attachRemoteLogger(::std::move(iceP_prx), ::std::move(iceP_messageTypes), ::std::move(iceP_traceCategories), iceP_messageMax, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_detachRemoteLogger(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    ::std::shared_ptr<RemoteLoggerPrx> iceP_prx;
    istr->readAll(iceP_prx);
    inS.endReadParams();
    bool ret = this->detachRemoteLogger(::std::move(iceP_prx), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_getLog(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    auto istr = inS.startReadParams();
    LogMessageTypeSeq iceP_messageTypes;
    StringSeq iceP_traceCategories;
    int iceP_messageMax;
    istr->readAll(iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
    inS.endReadParams();
    ::std::string iceP_prefix;
    LogMessageSeq ret = this->getLog(::std::move(iceP_messageTypes), ::std::move(iceP_traceCategories), iceP_messageMax, iceP_prefix, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(iceP_prefix, ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_LoggerAdmin_ops, iceC_Ice_LoggerAdmin_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_LoggerAdmin_ops)
    {
        case 0:
        {
            return _iceD_attachRemoteLogger(in, current);
        }
        case 1:
        {
            return _iceD_detachRemoteLogger(in, current);
        }
        case 2:
        {
            return _iceD_getLog(in, current);
        }
        case 3:
        {
            return _iceD_ice_id(in, current);
        }
        case 4:
        {
            return _iceD_ice_ids(in, current);
        }
        case 5:
        {
            return _iceD_ice_isA(in, current);
        }
        case 6:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond INTERNAL
void
Ice::RemoteLoggerPrx::_iceI_init(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::string& iceP_prefix, const LogMessageSeq& iceP_logMessages, const Context& context)
{
    outAsync->invoke(iceC_Ice_RemoteLogger_init_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_prefix, iceP_logMessages);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Ice::RemoteLoggerPrx::_iceI_log(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const LogMessage& iceP_message, const Context& context)
{
    outAsync->invoke(iceC_Ice_RemoteLogger_log_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_message);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::RemoteLoggerPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RemoteLoggerPrx>();
}
/// \endcond

const ::std::string&
Ice::RemoteLoggerPrx::ice_staticId()
{
    return RemoteLogger::ice_staticId();
}

/// \cond INTERNAL
void
Ice::LoggerAdminPrx::_iceI_attachRemoteLogger(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::shared_ptr<RemoteLoggerPrx>& iceP_prx, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, int iceP_messageMax, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_LoggerAdmin_attachRemoteLogger_name);
    outAsync->invoke(iceC_Ice_LoggerAdmin_attachRemoteLogger_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
        },
        [](const UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const RemoteLoggerAlreadyAttachedException&)
            {
                throw;
            }
            catch(const UserException&)
            {
            }
        });
}
/// \endcond

/// \cond INTERNAL
void
Ice::LoggerAdminPrx::_iceI_detachRemoteLogger(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>& outAsync, const ::std::shared_ptr<RemoteLoggerPrx>& iceP_prx, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_LoggerAdmin_detachRemoteLogger_name);
    outAsync->invoke(iceC_Ice_LoggerAdmin_detachRemoteLogger_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_prx);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Ice::LoggerAdminPrx::_iceI_getLog(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<LoggerAdmin::GetLogResult>>& outAsync, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, int iceP_messageMax, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_LoggerAdmin_getLog_name);
    outAsync->invoke(iceC_Ice_LoggerAdmin_getLog_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
        },
        nullptr,
        [](InputStream* istr)
        {
            LoggerAdmin::GetLogResult v;
            istr->readAll(v.prefix, v.returnValue);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::LoggerAdminPrx::_newInstance() const
{
    return ::IceInternal::createProxy<LoggerAdminPrx>();
}
/// \endcond

const ::std::string&
Ice::LoggerAdminPrx::ice_staticId()
{
    return LoggerAdmin::ice_staticId();
}

namespace Ice
{
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Ice_RemoteLogger_init_name = "init";

const ::std::string iceC_Ice_RemoteLogger_log_name = "log";

const ::std::string iceC_Ice_LoggerAdmin_attachRemoteLogger_name = "attachRemoteLogger";

const ::std::string iceC_Ice_LoggerAdmin_detachRemoteLogger_name = "detachRemoteLogger";

const ::std::string iceC_Ice_LoggerAdmin_getLog_name = "getLog";

}

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit< ::Ice::RemoteLoggerAlreadyAttachedException> iceC_Ice_RemoteLoggerAlreadyAttachedException_init("::Ice::RemoteLoggerAlreadyAttachedException");

}

#ifdef ICE_CPP11_COMPILER
Ice::RemoteLoggerAlreadyAttachedException::~RemoteLoggerAlreadyAttachedException()
{
}
#else
Ice::RemoteLoggerAlreadyAttachedException::~RemoteLoggerAlreadyAttachedException() throw()
{
}
#endif

::std::string
Ice::RemoteLoggerAlreadyAttachedException::ice_id() const
{
    return "::Ice::RemoteLoggerAlreadyAttachedException";
}

Ice::RemoteLoggerAlreadyAttachedException*
Ice::RemoteLoggerAlreadyAttachedException::ice_clone() const
{
    return new RemoteLoggerAlreadyAttachedException(*this);
}

void
Ice::RemoteLoggerAlreadyAttachedException::ice_throw() const
{
    throw *this;
}

/// \cond STREAM
void
Ice::RemoteLoggerAlreadyAttachedException::_writeImpl(OutputStream* ostr) const
{
    ostr->startSlice("::Ice::RemoteLoggerAlreadyAttachedException", -1, true);
    StreamWriter< RemoteLoggerAlreadyAttachedException, OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Ice::RemoteLoggerAlreadyAttachedException::_readImpl(InputStream* istr)
{
    istr->startSlice();
    StreamReader< RemoteLoggerAlreadyAttachedException, InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
ICE_API ::IceProxy::Ice::Object* ::IceProxy::Ice::upCast(RemoteLogger* p) { return p; }

void
::IceProxy::Ice::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< RemoteLogger>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new RemoteLogger;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Ice::RemoteLogger::_iceI_begin_init(const ::std::string& iceP_prefix, const ::Ice::LogMessageSeq& iceP_logMessages, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_RemoteLogger_init_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_RemoteLogger_init_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_prefix);
        ostr->write(iceP_logMessages);
        result->endWriteParams();
        result->invoke(iceC_Ice_RemoteLogger_init_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Ice::RemoteLogger::end_init(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Ice_RemoteLogger_init_name);
}

::Ice::AsyncResultPtr
IceProxy::Ice::RemoteLogger::_iceI_begin_log(const ::Ice::LogMessage& iceP_message, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_RemoteLogger_log_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_RemoteLogger_log_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_message);
        result->endWriteParams();
        result->invoke(iceC_Ice_RemoteLogger_log_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Ice::RemoteLogger::end_log(const ::Ice::AsyncResultPtr& result)
{
    _end(result, iceC_Ice_RemoteLogger_log_name);
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Ice::RemoteLogger::_newInstance() const
{
    return new RemoteLogger;
}
/// \endcond

const ::std::string&
IceProxy::Ice::RemoteLogger::ice_staticId()
{
    return ::Ice::RemoteLogger::ice_staticId();
}

/// \cond INTERNAL
ICE_API ::IceProxy::Ice::Object* ::IceProxy::Ice::upCast(LoggerAdmin* p) { return p; }

void
::IceProxy::Ice::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< LoggerAdmin>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new LoggerAdmin;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Ice::LoggerAdmin::_iceI_begin_attachRemoteLogger(const ::Ice::RemoteLoggerPrx& iceP_prx, const ::Ice::LogMessageTypeSeq& iceP_messageTypes, const ::Ice::StringSeq& iceP_traceCategories, ::Ice::Int iceP_messageMax, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_LoggerAdmin_attachRemoteLogger_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_LoggerAdmin_attachRemoteLogger_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_LoggerAdmin_attachRemoteLogger_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_prx);
        ostr->write(iceP_messageTypes);
        ostr->write(iceP_traceCategories);
        ostr->write(iceP_messageMax);
        result->endWriteParams();
        result->invoke(iceC_Ice_LoggerAdmin_attachRemoteLogger_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

void
IceProxy::Ice::LoggerAdmin::end_attachRemoteLogger(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_LoggerAdmin_attachRemoteLogger_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::RemoteLoggerAlreadyAttachedException&)
        {
            throw;
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    result->_readEmptyParams();
}

::Ice::AsyncResultPtr
IceProxy::Ice::LoggerAdmin::_iceI_begin_detachRemoteLogger(const ::Ice::RemoteLoggerPrx& iceP_prx, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_LoggerAdmin_detachRemoteLogger_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_LoggerAdmin_detachRemoteLogger_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_LoggerAdmin_detachRemoteLogger_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_prx);
        result->endWriteParams();
        result->invoke(iceC_Ice_LoggerAdmin_detachRemoteLogger_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

bool
IceProxy::Ice::LoggerAdmin::end_detachRemoteLogger(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_LoggerAdmin_detachRemoteLogger_name);
    bool ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::Ice::LoggerAdmin::_iceI_begin_getLog(const ::Ice::LogMessageTypeSeq& iceP_messageTypes, const ::Ice::StringSeq& iceP_traceCategories, ::Ice::Int iceP_messageMax, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_LoggerAdmin_getLog_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_LoggerAdmin_getLog_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_LoggerAdmin_getLog_name, ::Ice::Normal, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_messageTypes);
        ostr->write(iceP_traceCategories);
        ostr->write(iceP_messageMax);
        result->endWriteParams();
        result->invoke(iceC_Ice_LoggerAdmin_getLog_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::LogMessageSeq
IceProxy::Ice::LoggerAdmin::end_getLog(::std::string& iceP_prefix, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_LoggerAdmin_getLog_name);
    ::Ice::LogMessageSeq ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(iceP_prefix);
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

void IceProxy::Ice::LoggerAdmin::_iceI_end_getLog(::std::string& iceP_prefix, ::Ice::LogMessageSeq& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_LoggerAdmin_getLog_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(iceP_prefix);
    istr->read(ret);
    result->_endReadParams();
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Ice::LoggerAdmin::_newInstance() const
{
    return new LoggerAdmin;
}
/// \endcond

const ::std::string&
IceProxy::Ice::LoggerAdmin::ice_staticId()
{
    return ::Ice::LoggerAdmin::ice_staticId();
}

Ice::RemoteLogger::~RemoteLogger()
{
}

/// \cond INTERNAL
ICE_API ::Ice::Object* Ice::upCast(RemoteLogger* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Ice_RemoteLogger_ids[2] =
{
    "::Ice::Object",
    "::Ice::RemoteLogger"
};

}

bool
Ice::RemoteLogger::ice_isA(const ::std::string& s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_RemoteLogger_ids, iceC_Ice_RemoteLogger_ids + 2, s);
}

::std::vector< ::std::string>
Ice::RemoteLogger::ice_ids(const Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Ice_RemoteLogger_ids[0], &iceC_Ice_RemoteLogger_ids[2]);
}

const ::std::string&
Ice::RemoteLogger::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::RemoteLogger::ice_staticId()
{
    static const ::std::string typeId = "::Ice::RemoteLogger";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceD_init(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    InputStream* istr = inS.startReadParams();
    ::std::string iceP_prefix;
    LogMessageSeq iceP_logMessages;
    istr->read(iceP_prefix);
    istr->read(iceP_logMessages);
    inS.endReadParams();
    this->init(iceP_prefix, iceP_logMessages, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceD_log(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    InputStream* istr = inS.startReadParams();
    LogMessage iceP_message;
    istr->read(iceP_message);
    inS.endReadParams();
    this->log(iceP_message, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Ice_RemoteLogger_all[] =
{
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping",
    "init",
    "log"
};

}

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_RemoteLogger_all, iceC_Ice_RemoteLogger_all + 6, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_RemoteLogger_all)
    {
        case 0:
        {
            return _iceD_ice_id(in, current);
        }
        case 1:
        {
            return _iceD_ice_ids(in, current);
        }
        case 2:
        {
            return _iceD_ice_isA(in, current);
        }
        case 3:
        {
            return _iceD_ice_ping(in, current);
        }
        case 4:
        {
            return _iceD_init(in, current);
        }
        case 5:
        {
            return _iceD_log(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Ice::RemoteLogger::_iceWriteImpl(OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    StreamWriter< RemoteLogger, OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Ice::RemoteLogger::_iceReadImpl(InputStream* istr)
{
    istr->startSlice();
    StreamReader< RemoteLogger, InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Ice::_icePatchObjectPtr(RemoteLoggerPtr& handle, const ObjectPtr& v)
{
    handle = RemoteLoggerPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(RemoteLogger::ice_staticId(), v);
    }
}
/// \endcond

Ice::LoggerAdmin::~LoggerAdmin()
{
}

/// \cond INTERNAL
ICE_API ::Ice::Object* Ice::upCast(LoggerAdmin* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Ice_LoggerAdmin_ids[2] =
{
    "::Ice::LoggerAdmin",
    "::Ice::Object"
};

}

bool
Ice::LoggerAdmin::ice_isA(const ::std::string& s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_LoggerAdmin_ids, iceC_Ice_LoggerAdmin_ids + 2, s);
}

::std::vector< ::std::string>
Ice::LoggerAdmin::ice_ids(const Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Ice_LoggerAdmin_ids[0], &iceC_Ice_LoggerAdmin_ids[2]);
}

const ::std::string&
Ice::LoggerAdmin::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::LoggerAdmin::ice_staticId()
{
    static const ::std::string typeId = "::Ice::LoggerAdmin";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_attachRemoteLogger(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    InputStream* istr = inS.startReadParams();
    RemoteLoggerPrx iceP_prx;
    LogMessageTypeSeq iceP_messageTypes;
    StringSeq iceP_traceCategories;
    Int iceP_messageMax;
    istr->read(iceP_prx);
    istr->read(iceP_messageTypes);
    istr->read(iceP_traceCategories);
    istr->read(iceP_messageMax);
    inS.endReadParams();
    this->attachRemoteLogger(iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, current);
    inS.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_detachRemoteLogger(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    InputStream* istr = inS.startReadParams();
    RemoteLoggerPrx iceP_prx;
    istr->read(iceP_prx);
    inS.endReadParams();
    bool ret = this->detachRemoteLogger(iceP_prx, current);
    OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_getLog(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    InputStream* istr = inS.startReadParams();
    LogMessageTypeSeq iceP_messageTypes;
    StringSeq iceP_traceCategories;
    Int iceP_messageMax;
    istr->read(iceP_messageTypes);
    istr->read(iceP_traceCategories);
    istr->read(iceP_messageMax);
    inS.endReadParams();
    ::std::string iceP_prefix;
    LogMessageSeq ret = this->getLog(iceP_messageTypes, iceP_traceCategories, iceP_messageMax, iceP_prefix, current);
    OutputStream* ostr = inS.startWriteParams();
    ostr->write(iceP_prefix);
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Ice_LoggerAdmin_all[] =
{
    "attachRemoteLogger",
    "detachRemoteLogger",
    "getLog",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_LoggerAdmin_all, iceC_Ice_LoggerAdmin_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_LoggerAdmin_all)
    {
        case 0:
        {
            return _iceD_attachRemoteLogger(in, current);
        }
        case 1:
        {
            return _iceD_detachRemoteLogger(in, current);
        }
        case 2:
        {
            return _iceD_getLog(in, current);
        }
        case 3:
        {
            return _iceD_ice_id(in, current);
        }
        case 4:
        {
            return _iceD_ice_ids(in, current);
        }
        case 5:
        {
            return _iceD_ice_isA(in, current);
        }
        case 6:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Ice::LoggerAdmin::_iceWriteImpl(OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    StreamWriter< LoggerAdmin, OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Ice::LoggerAdmin::_iceReadImpl(InputStream* istr)
{
    istr->startSlice();
    StreamReader< LoggerAdmin, InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Ice::_icePatchObjectPtr(LoggerAdminPtr& handle, const ObjectPtr& v)
{
    handle = LoggerAdminPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(LoggerAdmin::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
