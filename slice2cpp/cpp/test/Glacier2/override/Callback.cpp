//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "Callback.h"
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

void
Test::CallbackReceiverPrx::callback(::std::int32_t iceP_token, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callback, iceP_token, context).get();
}

::std::future<void>
Test::CallbackReceiverPrx::callbackAsync(::std::int32_t iceP_token, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callback, iceP_token, context);
}

::std::function<void()>
Test::CallbackReceiverPrx::callbackAsync(::std::int32_t iceP_token, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callback, iceP_token, context);
}

void
Test::CallbackReceiverPrx::_iceI_callback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::int32_t iceP_token, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "callback";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_token);
        },
        nullptr);
}

void
Test::CallbackReceiverPrx::callbackWithPayload(const ::Ice::ByteSeq& iceP_payload, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callbackWithPayload, iceP_payload, context).get();
}

::std::future<void>
Test::CallbackReceiverPrx::callbackWithPayloadAsync(const ::Ice::ByteSeq& iceP_payload, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callbackWithPayload, iceP_payload, context);
}

::std::function<void()>
Test::CallbackReceiverPrx::callbackWithPayloadAsync(const ::Ice::ByteSeq& iceP_payload, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callbackWithPayload, iceP_payload, context);
}

void
Test::CallbackReceiverPrx::_iceI_callbackWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::ByteSeq& iceP_payload, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "callbackWithPayload";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_payload);
        },
        nullptr);
}

const char*
Test::CallbackReceiverPrx::ice_staticId() noexcept
{
    return "::Test::CallbackReceiver";
}

void
Test::CallbackPrx::initiateCallback(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::int32_t iceP_token, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallback, iceP_proxy, iceP_token, context).get();
}

::std::future<void>
Test::CallbackPrx::initiateCallbackAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::int32_t iceP_token, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallback, iceP_proxy, iceP_token, context);
}

::std::function<void()>
Test::CallbackPrx::initiateCallbackAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::int32_t iceP_token, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallback, iceP_proxy, iceP_token, context);
}

void
Test::CallbackPrx::_iceI_initiateCallback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::int32_t iceP_token, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "initiateCallback";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy, iceP_token);
        },
        nullptr);
}

void
Test::CallbackPrx::initiateCallbackWithPayload(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallbackWithPayload, iceP_proxy, context).get();
}

::std::future<void>
Test::CallbackPrx::initiateCallbackWithPayloadAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallbackWithPayload, iceP_proxy, context);
}

::std::function<void()>
Test::CallbackPrx::initiateCallbackWithPayloadAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallbackWithPayload, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateCallbackWithPayload(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "initiateCallbackWithPayload";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        nullptr);
}

void
Test::CallbackPrx::shutdown(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_shutdown, context).get();
}

::std::future<void>
Test::CallbackPrx::shutdownAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_shutdown, context);
}

::std::function<void()>
Test::CallbackPrx::shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::CallbackPrx::_iceI_shutdown, context);
}

void
Test::CallbackPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::CallbackPrx::ice_staticId() noexcept
{
    return "::Test::Callback";
}

::std::vector<::std::string>
Test::CallbackReceiver::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::CallbackReceiver"};
    return allTypeIds;
}

::std::string
Test::CallbackReceiver::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::CallbackReceiver::ice_staticId() noexcept
{
    return "::Test::CallbackReceiver";
}

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_callback(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::int32_t iceP_token;
    istr->readAll(iceP_token);
    istr->endEncapsulation();
    this->callback(iceP_token, request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_callbackWithPayload(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::Ice::ByteSeq iceP_payload;
    istr->readAll(iceP_payload);
    istr->endEncapsulation();
    this->callbackWithPayload(::std::move(iceP_payload), request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::CallbackReceiver::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"callback", "callbackWithPayload", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 6, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_callback(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_callbackWithPayload(request, ::std::move(sendResponse));
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
        default:
        {
            assert(false);
            sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        }
    }
}
/// \endcond

::std::vector<::std::string>
Test::Callback::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::Callback"};
    return allTypeIds;
}

::std::string
Test::Callback::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::Callback::ice_staticId() noexcept
{
    return "::Test::Callback";
}

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateCallback(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::optional<CallbackReceiverPrx> iceP_proxy;
    ::std::int32_t iceP_token;
    istr->readAll(iceP_proxy, iceP_token);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->initiateCallbackAsync(::std::move(iceP_proxy), iceP_token, [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateCallbackWithPayload(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->initiateCallbackWithPayloadAsync(::std::move(iceP_proxy), [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_shutdown(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->shutdown(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"ice_id", "ice_ids", "ice_isA", "ice_ping", "initiateCallback", "initiateCallbackWithPayload", "shutdown"};

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
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_initiateCallback(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_initiateCallbackWithPayload(request, ::std::move(sendResponse));
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
