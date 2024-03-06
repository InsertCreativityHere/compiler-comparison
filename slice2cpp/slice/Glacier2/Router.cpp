//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef GLACIER2_API_EXPORTS
#   define GLACIER2_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include <Router.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Glacier2::SessionNotExistException> iceC_Glacier2_SessionNotExistException_init("::Glacier2::SessionNotExistException");

}

::std::string
Glacier2::RouterPrx::getCategoryForClient(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(true, this, &RouterPrx::_iceI_getCategoryForClient, context).get();
}

::std::future<::std::string>
Glacier2::RouterPrx::getCategoryForClientAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(false, this, &RouterPrx::_iceI_getCategoryForClient, context);
}

::std::function<void()>
Glacier2::RouterPrx::getCategoryForClientAsync(::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::string>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_getCategoryForClient, context);
}

void
Glacier2::RouterPrx::_iceI_getCategoryForClient(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getCategoryForClient";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::optional<::Glacier2::SessionPrx>
Glacier2::RouterPrx::createSession(::std::string_view iceP_userId, ::std::string_view iceP_password, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<SessionPrx>>(true, this, &RouterPrx::_iceI_createSession, iceP_userId, iceP_password, context).get();
}

::std::future<::std::optional<::Glacier2::SessionPrx>>
Glacier2::RouterPrx::createSessionAsync(::std::string_view iceP_userId, ::std::string_view iceP_password, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<SessionPrx>>(false, this, &RouterPrx::_iceI_createSession, iceP_userId, iceP_password, context);
}

::std::function<void()>
Glacier2::RouterPrx::createSessionAsync(::std::string_view iceP_userId, ::std::string_view iceP_password, ::std::function<void(::std::optional<::Glacier2::SessionPrx>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::optional<SessionPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_createSession, iceP_userId, iceP_password, context);
}

void
Glacier2::RouterPrx::_iceI_createSession(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<SessionPrx>>>& outAsync, ::std::string_view iceP_userId, ::std::string_view iceP_password, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "createSession";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_userId, iceP_password);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const CannotCreateSessionException&)
            {
                throw;
            }
            catch(const PermissionDeniedException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::optional<::Glacier2::SessionPrx>
Glacier2::RouterPrx::createSessionFromSecureConnection(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<SessionPrx>>(true, this, &RouterPrx::_iceI_createSessionFromSecureConnection, context).get();
}

::std::future<::std::optional<::Glacier2::SessionPrx>>
Glacier2::RouterPrx::createSessionFromSecureConnectionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<SessionPrx>>(false, this, &RouterPrx::_iceI_createSessionFromSecureConnection, context);
}

::std::function<void()>
Glacier2::RouterPrx::createSessionFromSecureConnectionAsync(::std::function<void(::std::optional<::Glacier2::SessionPrx>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::optional<SessionPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_createSessionFromSecureConnection, context);
}

void
Glacier2::RouterPrx::_iceI_createSessionFromSecureConnection(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<SessionPrx>>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "createSessionFromSecureConnection";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const CannotCreateSessionException&)
            {
                throw;
            }
            catch(const PermissionDeniedException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Glacier2::RouterPrx::refreshSession(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &RouterPrx::_iceI_refreshSession, context).get();
}

::std::future<void>
Glacier2::RouterPrx::refreshSessionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &RouterPrx::_iceI_refreshSession, context);
}

::std::function<void()>
Glacier2::RouterPrx::refreshSessionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_refreshSession, context);
}

void
Glacier2::RouterPrx::_iceI_refreshSession(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "refreshSession";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const SessionNotExistException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Glacier2::RouterPrx::destroySession(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &RouterPrx::_iceI_destroySession, context).get();
}

::std::future<void>
Glacier2::RouterPrx::destroySessionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &RouterPrx::_iceI_destroySession, context);
}

::std::function<void()>
Glacier2::RouterPrx::destroySessionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_destroySession, context);
}

void
Glacier2::RouterPrx::_iceI_destroySession(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "destroySession";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const SessionNotExistException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::int64_t
Glacier2::RouterPrx::getSessionTimeout(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int64_t>(true, this, &RouterPrx::_iceI_getSessionTimeout, context).get();
}

::std::future<::std::int64_t>
Glacier2::RouterPrx::getSessionTimeoutAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int64_t>(false, this, &RouterPrx::_iceI_getSessionTimeout, context);
}

::std::function<void()>
Glacier2::RouterPrx::getSessionTimeoutAsync(::std::function<void(::std::int64_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int64_t>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_getSessionTimeout, context);
}

void
Glacier2::RouterPrx::_iceI_getSessionTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int64_t>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getSessionTimeout";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::int32_t
Glacier2::RouterPrx::getACMTimeout(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &RouterPrx::_iceI_getACMTimeout, context).get();
}

::std::future<::std::int32_t>
Glacier2::RouterPrx::getACMTimeoutAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &RouterPrx::_iceI_getACMTimeout, context);
}

::std::function<void()>
Glacier2::RouterPrx::getACMTimeoutAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Glacier2::RouterPrx::_iceI_getACMTimeout, context);
}

void
Glacier2::RouterPrx::_iceI_getACMTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getACMTimeout";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::string_view
Glacier2::RouterPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Glacier2::Router";
    return typeId;
}

Glacier2::SessionNotExistException::~SessionNotExistException()
{
}

::std::string_view
Glacier2::SessionNotExistException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Glacier2::SessionNotExistException";
    return typeId;
}

::std::vector<::std::string>
Glacier2::Router::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Glacier2::Router", "::Ice::Object", "::Ice::Router" };
    return allTypeIds;
}

::std::string
Glacier2::Router::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Glacier2::Router::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Glacier2::Router";
    return typeId;
}

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_getCategoryForClient(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    incoming.readEmptyParams();
    ::std::string ret = this->getCategoryForClient(incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_createSession(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::string iceP_userId;
    ::std::string iceP_password;
    istr->readAll(iceP_userId, iceP_password);
    incoming.endReadParams();
    incoming.setFormat(::Ice::FormatType::SlicedFormat);
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](const ::std::optional<SessionPrx>& ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->createSessionAsync(::std::move(iceP_userId), ::std::move(iceP_password), responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_createSessionFromSecureConnection(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    incoming.setFormat(::Ice::FormatType::SlicedFormat);
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](const ::std::optional<SessionPrx>& ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->createSessionFromSecureConnectionAsync(responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_refreshSession(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    try
    {
        this->refreshSessionAsync([incomingPtr] { incomingPtr->response(); }, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_destroySession(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->destroySession(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_getSessionTimeout(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    incoming.readEmptyParams();
    ::std::int64_t ret = this->getSessionTimeout(incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceD_getACMTimeout(::IceInternal::Incoming& incoming) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, incoming.current().mode);
    incoming.readEmptyParams();
    ::std::int32_t ret = this->getACMTimeout(incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Glacier2::Router::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "addProxies", "createSession", "createSessionFromSecureConnection", "destroySession", "getACMTimeout", "getCategoryForClient", "getClientProxy", "getServerProxy", "getSessionTimeout", "ice_id", "ice_ids", "ice_isA", "ice_ping", "refreshSession" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 14, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_addProxies(incoming);
        }
        case 1:
        {
            return _iceD_createSession(incoming);
        }
        case 2:
        {
            return _iceD_createSessionFromSecureConnection(incoming);
        }
        case 3:
        {
            return _iceD_destroySession(incoming);
        }
        case 4:
        {
            return _iceD_getACMTimeout(incoming);
        }
        case 5:
        {
            return _iceD_getCategoryForClient(incoming);
        }
        case 6:
        {
            return _iceD_getClientProxy(incoming);
        }
        case 7:
        {
            return _iceD_getServerProxy(incoming);
        }
        case 8:
        {
            return _iceD_getSessionTimeout(incoming);
        }
        case 9:
        {
            return _iceD_ice_id(incoming);
        }
        case 10:
        {
            return _iceD_ice_ids(incoming);
        }
        case 11:
        {
            return _iceD_ice_isA(incoming);
        }
        case 12:
        {
            return _iceD_ice_ping(incoming);
        }
        case 13:
        {
            return _iceD_refreshSession(incoming);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
