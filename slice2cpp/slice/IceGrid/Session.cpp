//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Session.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ICEGRID_API_EXPORTS
#   define ICEGRID_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include "Session.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>

#if defined(_MSC_VER)
#   pragma warning(disable : 4458) // declaration of ... hides class member
#   pragma warning(disable : 4996) // ... was declared deprecated
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#   pragma clang diagnostic ignored "-Wdeprecated-declarations"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#   pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{
}

void
IceGrid::SessionPrx::keepAlive(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_keepAlive, context).get();
}

::std::future<void>
IceGrid::SessionPrx::keepAliveAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &SessionPrx::_iceI_keepAlive, context);
}

::std::function<void()>
IceGrid::SessionPrx::keepAliveAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &IceGrid::SessionPrx::_iceI_keepAlive, context);
}

void
IceGrid::SessionPrx::_iceI_keepAlive(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "keepAlive";

    outAsync->invoke(operationName, ::Ice::OperationMode::Idempotent, ::std::nullopt, context,
        nullptr,
        nullptr);
}

::std::optional<::Ice::ObjectPrx>
IceGrid::SessionPrx::allocateObjectById(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(true, this, &SessionPrx::_iceI_allocateObjectById, iceP_id, context).get();
}

::std::future<::std::optional<::Ice::ObjectPrx>>
IceGrid::SessionPrx::allocateObjectByIdAsync(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(false, this, &SessionPrx::_iceI_allocateObjectById, iceP_id, context);
}

::std::function<void()>
IceGrid::SessionPrx::allocateObjectByIdAsync(const ::Ice::Identity& iceP_id, ::std::function<void(::std::optional<::Ice::ObjectPrx>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::optional<::Ice::ObjectPrx>>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &IceGrid::SessionPrx::_iceI_allocateObjectById, iceP_id, context);
}

void
IceGrid::SessionPrx::_iceI_allocateObjectById(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>& outAsync, const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "allocateObjectById";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::std::nullopt, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_id);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ObjectNotRegisteredException&)
            {
                throw;
            }
            catch(const AllocationException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::optional<::Ice::ObjectPrx>
IceGrid::SessionPrx::allocateObjectByType(::std::string_view iceP_type, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(true, this, &SessionPrx::_iceI_allocateObjectByType, iceP_type, context).get();
}

::std::future<::std::optional<::Ice::ObjectPrx>>
IceGrid::SessionPrx::allocateObjectByTypeAsync(::std::string_view iceP_type, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(false, this, &SessionPrx::_iceI_allocateObjectByType, iceP_type, context);
}

::std::function<void()>
IceGrid::SessionPrx::allocateObjectByTypeAsync(::std::string_view iceP_type, ::std::function<void(::std::optional<::Ice::ObjectPrx>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::optional<::Ice::ObjectPrx>>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &IceGrid::SessionPrx::_iceI_allocateObjectByType, iceP_type, context);
}

void
IceGrid::SessionPrx::_iceI_allocateObjectByType(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>& outAsync, ::std::string_view iceP_type, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "allocateObjectByType";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::std::nullopt, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_type);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const AllocationException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
IceGrid::SessionPrx::releaseObject(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_releaseObject, iceP_id, context).get();
}

::std::future<void>
IceGrid::SessionPrx::releaseObjectAsync(const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &SessionPrx::_iceI_releaseObject, iceP_id, context);
}

::std::function<void()>
IceGrid::SessionPrx::releaseObjectAsync(const ::Ice::Identity& iceP_id, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &IceGrid::SessionPrx::_iceI_releaseObject, iceP_id, context);
}

void
IceGrid::SessionPrx::_iceI_releaseObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Identity& iceP_id, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "releaseObject";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::std::nullopt, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_id);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ObjectNotRegisteredException&)
            {
                throw;
            }
            catch(const AllocationException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
IceGrid::SessionPrx::setAllocationTimeout(::std::int32_t iceP_timeout, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_setAllocationTimeout, iceP_timeout, context).get();
}

::std::future<void>
IceGrid::SessionPrx::setAllocationTimeoutAsync(::std::int32_t iceP_timeout, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &SessionPrx::_iceI_setAllocationTimeout, iceP_timeout, context);
}

::std::function<void()>
IceGrid::SessionPrx::setAllocationTimeoutAsync(::std::int32_t iceP_timeout, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &IceGrid::SessionPrx::_iceI_setAllocationTimeout, iceP_timeout, context);
}

void
IceGrid::SessionPrx::_iceI_setAllocationTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::int32_t iceP_timeout, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "setAllocationTimeout";

    outAsync->invoke(operationName, ::Ice::OperationMode::Idempotent, ::std::nullopt, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_timeout);
        },
        nullptr);
}

const char*
IceGrid::SessionPrx::ice_staticId() noexcept
{
    return "::IceGrid::Session";
}

::std::vector<::std::string>
IceGrid::Session::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Glacier2::Session", "::Ice::Object", "::IceGrid::Session"};
    return allTypeIds;
}

::std::string
IceGrid::Session::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
IceGrid::Session::ice_staticId() noexcept
{
    return "::IceGrid::Session";
}

/// \cond INTERNAL
void
IceGrid::Session::_iceD_keepAlive(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->keepAlive(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::Session::_iceD_allocateObjectById(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::Ice::Identity iceP_id;
    istr->readAll(iceP_id);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](const ::std::optional<::Ice::ObjectPrx>& ret)
    {
        responseHandler->sendResponse(
            [&](::Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->allocateObjectByIdAsync(::std::move(iceP_id), ::std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::Session::_iceD_allocateObjectByType(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::string iceP_type;
    istr->readAll(iceP_type);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](const ::std::optional<::Ice::ObjectPrx>& ret)
    {
        responseHandler->sendResponse(
            [&](::Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->allocateObjectByTypeAsync(::std::move(iceP_type), ::std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::Session::_iceD_releaseObject(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::Ice::Identity iceP_id;
    istr->readAll(iceP_id);
    istr->endEncapsulation();
    this->releaseObject(::std::move(iceP_id), request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::Session::_iceD_setAllocationTimeout(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::int32_t iceP_timeout;
    istr->readAll(iceP_timeout);
    istr->endEncapsulation();
    this->setAllocationTimeout(iceP_timeout, request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
IceGrid::Session::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"allocateObjectById", "allocateObjectByType", "destroy", "ice_id", "ice_ids", "ice_isA", "ice_ping", "keepAlive", "releaseObject", "setAllocationTimeout"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 10, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_allocateObjectById(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_allocateObjectByType(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_destroy(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_keepAlive(request, ::std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_releaseObject(request, ::std::move(sendResponse));
            break;
        }
        case 9:
        {
            _iceD_setAllocationTimeout(request, ::std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        }
    }
}
/// \endcond
