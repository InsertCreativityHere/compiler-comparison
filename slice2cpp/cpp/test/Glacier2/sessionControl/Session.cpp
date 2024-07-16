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
Test::SessionPrx::destroyFromClient(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_destroyFromClient, context).get();
}

::std::future<void>
Test::SessionPrx::destroyFromClientAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &SessionPrx::_iceI_destroyFromClient, context);
}

::std::function<void()>
Test::SessionPrx::destroyFromClientAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::SessionPrx::_iceI_destroyFromClient, context);
}

void
Test::SessionPrx::_iceI_destroyFromClient(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "destroyFromClient";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::SessionPrx::shutdown(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &SessionPrx::_iceI_shutdown, context).get();
}

::std::future<void>
Test::SessionPrx::shutdownAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &SessionPrx::_iceI_shutdown, context);
}

::std::function<void()>
Test::SessionPrx::shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::SessionPrx::_iceI_shutdown, context);
}

void
Test::SessionPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::SessionPrx::ice_staticId() noexcept
{
    return "::Test::Session";
}

::std::vector<::std::string>
Test::Session::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Glacier2::Session", "::Ice::Object", "::Test::Session"};
    return allTypeIds;
}

::std::string
Test::Session::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::Session::ice_staticId() noexcept
{
    return "::Test::Session";
}

/// \cond INTERNAL
void
Test::Session::_iceD_destroyFromClient(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->destroyFromClientAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Session::_iceD_shutdown(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->shutdown(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Session::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"destroy", "destroyFromClient", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 7, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_destroy(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_destroyFromClient(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_shutdown(request, ::std::move(sendResponse));
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
