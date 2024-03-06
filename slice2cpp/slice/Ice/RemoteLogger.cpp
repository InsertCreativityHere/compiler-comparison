//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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
#include <Ice/OutgoingAsync.h>
#include <Ice/Incoming.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{

const ::IceInternal::DefaultUserExceptionFactoryInit<::Ice::RemoteLoggerAlreadyAttachedException> iceC_Ice_RemoteLoggerAlreadyAttachedException_init("::Ice::RemoteLoggerAlreadyAttachedException");

}

void
Ice::RemoteLoggerPrx::init(::std::string_view iceP_prefix, const LogMessageSeq& iceP_logMessages, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &RemoteLoggerPrx::_iceI_init, iceP_prefix, iceP_logMessages, context).get();
}

::std::future<void>
Ice::RemoteLoggerPrx::initAsync(::std::string_view iceP_prefix, const LogMessageSeq& iceP_logMessages, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &RemoteLoggerPrx::_iceI_init, iceP_prefix, iceP_logMessages, context);
}

::std::function<void()>
Ice::RemoteLoggerPrx::initAsync(::std::string_view iceP_prefix, const LogMessageSeq& iceP_logMessages, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Ice::RemoteLoggerPrx::_iceI_init, iceP_prefix, iceP_logMessages, context);
}

void
Ice::RemoteLoggerPrx::_iceI_init(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::string_view iceP_prefix, const LogMessageSeq& iceP_logMessages, const Context& context) const
{
    static constexpr ::std::string_view operationName = "init";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_prefix, iceP_logMessages);
        },
        nullptr);
}

void
Ice::RemoteLoggerPrx::log(const LogMessage& iceP_message, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &RemoteLoggerPrx::_iceI_log, iceP_message, context).get();
}

::std::future<void>
Ice::RemoteLoggerPrx::logAsync(const LogMessage& iceP_message, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &RemoteLoggerPrx::_iceI_log, iceP_message, context);
}

::std::function<void()>
Ice::RemoteLoggerPrx::logAsync(const LogMessage& iceP_message, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Ice::RemoteLoggerPrx::_iceI_log, iceP_message, context);
}

void
Ice::RemoteLoggerPrx::_iceI_log(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const LogMessage& iceP_message, const Context& context) const
{
    static constexpr ::std::string_view operationName = "log";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_message);
        },
        nullptr);
}

::std::string_view
Ice::RemoteLoggerPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Ice::RemoteLogger";
    return typeId;
}

void
Ice::LoggerAdminPrx::attachRemoteLogger(const ::std::optional<RemoteLoggerPrx>& iceP_prx, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &LoggerAdminPrx::_iceI_attachRemoteLogger, iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, context).get();
}

::std::future<void>
Ice::LoggerAdminPrx::attachRemoteLoggerAsync(const ::std::optional<RemoteLoggerPrx>& iceP_prx, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &LoggerAdminPrx::_iceI_attachRemoteLogger, iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, context);
}

::std::function<void()>
Ice::LoggerAdminPrx::attachRemoteLoggerAsync(const ::std::optional<RemoteLoggerPrx>& iceP_prx, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Ice::LoggerAdminPrx::_iceI_attachRemoteLogger, iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, context);
}

void
Ice::LoggerAdminPrx::_iceI_attachRemoteLogger(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::optional<RemoteLoggerPrx>& iceP_prx, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, const Context& context) const
{
    static constexpr ::std::string_view operationName = "attachRemoteLogger";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
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

bool
Ice::LoggerAdminPrx::detachRemoteLogger(const ::std::optional<RemoteLoggerPrx>& iceP_prx, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<bool>(true, this, &LoggerAdminPrx::_iceI_detachRemoteLogger, iceP_prx, context).get();
}

::std::future<bool>
Ice::LoggerAdminPrx::detachRemoteLoggerAsync(const ::std::optional<RemoteLoggerPrx>& iceP_prx, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<bool>(false, this, &LoggerAdminPrx::_iceI_detachRemoteLogger, iceP_prx, context);
}

::std::function<void()>
Ice::LoggerAdminPrx::detachRemoteLoggerAsync(const ::std::optional<RemoteLoggerPrx>& iceP_prx, ::std::function<void(bool)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<bool>(std::move(response), std::move(ex), std::move(sent), this, &Ice::LoggerAdminPrx::_iceI_detachRemoteLogger, iceP_prx, context);
}

void
Ice::LoggerAdminPrx::_iceI_detachRemoteLogger(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<bool>>& outAsync, const ::std::optional<RemoteLoggerPrx>& iceP_prx, const Context& context) const
{
    static constexpr ::std::string_view operationName = "detachRemoteLogger";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_prx);
        },
        nullptr);
}

::Ice::LogMessageSeq
Ice::LoggerAdminPrx::getLog(const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, ::std::string& iceP_prefix, const ::Ice::Context& context) const
{
    auto result = ::IceInternal::makePromiseOutgoing<::std::tuple<LogMessageSeq, ::std::string>>(true, this, &LoggerAdminPrx::_iceI_getLog, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, context).get();
    iceP_prefix = ::std::move(::std::get<1>(result));
    return ::std::move(::std::get<0>(result));
}

::std::future<::std::tuple<::Ice::LogMessageSeq, ::std::string>>
Ice::LoggerAdminPrx::getLogAsync(const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::tuple<LogMessageSeq, ::std::string>>(false, this, &LoggerAdminPrx::_iceI_getLog, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, context);
}

::std::function<void()>
Ice::LoggerAdminPrx::getLogAsync(const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, ::std::function<void(::Ice::LogMessageSeq, ::std::string)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    auto responseCb = [response = ::std::move(response)](::std::tuple<LogMessageSeq, ::std::string>&& result)
    {
        ::std::apply(::std::move(response), ::std::move(result));
    };
    return ::IceInternal::makeLambdaOutgoing<::std::tuple<LogMessageSeq, ::std::string>>(std::move(responseCb), std::move(ex), std::move(sent), this, &Ice::LoggerAdminPrx::_iceI_getLog, iceP_messageTypes, iceP_traceCategories, iceP_messageMax, context);
}

void
Ice::LoggerAdminPrx::_iceI_getLog(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<LogMessageSeq, ::std::string>>>& outAsync, const LogMessageTypeSeq& iceP_messageTypes, const StringSeq& iceP_traceCategories, ::std::int32_t iceP_messageMax, const Context& context) const
{
    static constexpr ::std::string_view operationName = "getLog";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
        },
        nullptr,
        [](InputStream* istr)
        {
            ::std::tuple<LogMessageSeq, ::std::string> v;
            istr->readAll(::std::get<1>(v), ::std::get<0>(v));
            return v;
        });
}

::std::string_view
Ice::LoggerAdminPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Ice::LoggerAdmin";
    return typeId;
}

Ice::RemoteLoggerAlreadyAttachedException::~RemoteLoggerAlreadyAttachedException()
{
}

::std::string_view
Ice::RemoteLoggerAlreadyAttachedException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Ice::RemoteLoggerAlreadyAttachedException";
    return typeId;
}

::std::vector<::std::string>
Ice::RemoteLogger::ice_ids(const Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Ice::RemoteLogger" };
    return allTypeIds;
}

::std::string
Ice::RemoteLogger::ice_id(const Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Ice::RemoteLogger::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Ice::RemoteLogger";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceD_init(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::string iceP_prefix;
    LogMessageSeq iceP_logMessages;
    istr->readAll(iceP_prefix, iceP_logMessages);
    incoming.endReadParams();
    this->init(::std::move(iceP_prefix), ::std::move(iceP_logMessages), incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceD_log(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    LogMessage iceP_message;
    istr->readAll(iceP_message);
    incoming.endReadParams();
    this->log(::std::move(iceP_message), incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RemoteLogger::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "ice_id", "ice_ids", "ice_isA", "ice_ping", "init", "log" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 6, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_ice_id(incoming);
        }
        case 1:
        {
            return _iceD_ice_ids(incoming);
        }
        case 2:
        {
            return _iceD_ice_isA(incoming);
        }
        case 3:
        {
            return _iceD_ice_ping(incoming);
        }
        case 4:
        {
            return _iceD_init(incoming);
        }
        case 5:
        {
            return _iceD_log(incoming);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

::std::vector<::std::string>
Ice::LoggerAdmin::ice_ids(const Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::LoggerAdmin", "::Ice::Object" };
    return allTypeIds;
}

::std::string
Ice::LoggerAdmin::ice_id(const Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Ice::LoggerAdmin::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Ice::LoggerAdmin";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_attachRemoteLogger(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::optional<RemoteLoggerPrx> iceP_prx;
    LogMessageTypeSeq iceP_messageTypes;
    StringSeq iceP_traceCategories;
    ::std::int32_t iceP_messageMax;
    istr->readAll(iceP_prx, iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
    incoming.endReadParams();
    this->attachRemoteLogger(::std::move(iceP_prx), ::std::move(iceP_messageTypes), ::std::move(iceP_traceCategories), iceP_messageMax, incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_detachRemoteLogger(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::optional<RemoteLoggerPrx> iceP_prx;
    istr->readAll(iceP_prx);
    incoming.endReadParams();
    bool ret = this->detachRemoteLogger(::std::move(iceP_prx), incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceD_getLog(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    LogMessageTypeSeq iceP_messageTypes;
    StringSeq iceP_traceCategories;
    ::std::int32_t iceP_messageMax;
    istr->readAll(iceP_messageTypes, iceP_traceCategories, iceP_messageMax);
    incoming.endReadParams();
    ::std::string iceP_prefix;
    LogMessageSeq ret = this->getLog(::std::move(iceP_messageTypes), ::std::move(iceP_traceCategories), iceP_messageMax, iceP_prefix, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(iceP_prefix, ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::LoggerAdmin::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "attachRemoteLogger", "detachRemoteLogger", "getLog", "ice_id", "ice_ids", "ice_isA", "ice_ping" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 7, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_attachRemoteLogger(incoming);
        }
        case 1:
        {
            return _iceD_detachRemoteLogger(incoming);
        }
        case 2:
        {
            return _iceD_getLog(incoming);
        }
        case 3:
        {
            return _iceD_ice_id(incoming);
        }
        case 4:
        {
            return _iceD_ice_ids(incoming);
        }
        case 5:
        {
            return _iceD_ice_isA(incoming);
        }
        case 6:
        {
            return _iceD_ice_ping(incoming);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
