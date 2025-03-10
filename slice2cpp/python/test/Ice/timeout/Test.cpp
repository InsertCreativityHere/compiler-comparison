// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#define ICE_BUILDING_GENERATED_CODE
#include "Test.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>
#include <algorithm>
#include <array>

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
Test::TimeoutPrx::op(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TimeoutPrx::_iceI_op, context).get();
}

std::future<void>
Test::TimeoutPrx::opAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TimeoutPrx::_iceI_op, context);
}

std::function<void()>
Test::TimeoutPrx::opAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TimeoutPrx::_iceI_op, context);
}

void
Test::TimeoutPrx::_iceI_op(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "op";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::TimeoutPrx::sendData(const ByteSeq& iceP_seq, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TimeoutPrx::_iceI_sendData, iceP_seq, context).get();
}

std::future<void>
Test::TimeoutPrx::sendDataAsync(const ByteSeq& iceP_seq, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TimeoutPrx::_iceI_sendData, iceP_seq, context);
}

std::function<void()>
Test::TimeoutPrx::sendDataAsync(const ByteSeq& iceP_seq, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TimeoutPrx::_iceI_sendData, iceP_seq, context);
}

void
Test::TimeoutPrx::_iceI_sendData(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const ByteSeq& iceP_seq, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "sendData";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seq);
        },
        nullptr);
}

void
Test::TimeoutPrx::sleep(std::int32_t iceP_to, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TimeoutPrx::_iceI_sleep, iceP_to, context).get();
}

std::future<void>
Test::TimeoutPrx::sleepAsync(std::int32_t iceP_to, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TimeoutPrx::_iceI_sleep, iceP_to, context);
}

std::function<void()>
Test::TimeoutPrx::sleepAsync(std::int32_t iceP_to, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TimeoutPrx::_iceI_sleep, iceP_to, context);
}

void
Test::TimeoutPrx::_iceI_sleep(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, std::int32_t iceP_to, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "sleep";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_to);
        },
        nullptr);
}

Test::TimeoutPrx::~TimeoutPrx() = default;

const char*
Test::TimeoutPrx::ice_staticId() noexcept
{
    return "::Test::Timeout";
}

void
Test::ControllerPrx::holdAdapter(std::int32_t iceP_to, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_holdAdapter, iceP_to, context).get();
}

std::future<void>
Test::ControllerPrx::holdAdapterAsync(std::int32_t iceP_to, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_holdAdapter, iceP_to, context);
}

std::function<void()>
Test::ControllerPrx::holdAdapterAsync(std::int32_t iceP_to, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_holdAdapter, iceP_to, context);
}

void
Test::ControllerPrx::_iceI_holdAdapter(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, std::int32_t iceP_to, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "holdAdapter";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_to);
        },
        nullptr);
}

void
Test::ControllerPrx::resumeAdapter(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_resumeAdapter, context).get();
}

std::future<void>
Test::ControllerPrx::resumeAdapterAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_resumeAdapter, context);
}

std::function<void()>
Test::ControllerPrx::resumeAdapterAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_resumeAdapter, context);
}

void
Test::ControllerPrx::_iceI_resumeAdapter(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "resumeAdapter";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::ControllerPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::ControllerPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::ControllerPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_shutdown, context);
}

void
Test::ControllerPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::ControllerPrx::~ControllerPrx() = default;

const char*
Test::ControllerPrx::ice_staticId() noexcept
{
    return "::Test::Controller";
}

std::vector<std::string>
Test::Timeout::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::Timeout"};
    return allTypeIds;
}

std::string
Test::Timeout::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::Timeout::ice_staticId() noexcept
{
    return "::Test::Timeout";
}

/// \cond INTERNAL
void
Test::Timeout::_iceD_op(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->op(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Timeout::_iceD_sendData(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ByteSeq iceP_seq;
    istr->readAll(iceP_seq);
    istr->endEncapsulation();
    this->sendData(std::move(iceP_seq), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Timeout::_iceD_sleep(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::int32_t iceP_to;
    istr->readAll(iceP_to);
    istr->endEncapsulation();
    this->sleep(iceP_to, request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
Test::Timeout::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 7> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "op", "sendData", "sleep"};

    const Ice::Current& current = request.current();
    auto r = std::equal_range(allOperations.begin(), allOperations.end(), current.operation); // NOLINT(modernize-use-ranges)
    if (r.first == r.second)
    {
        sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        return;
    }

    switch (r.first - allOperations.begin())
    {
        case 0:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_op(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_sendData(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_sleep(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}

std::vector<std::string>
Test::Controller::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::Controller"};
    return allTypeIds;
}

std::string
Test::Controller::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::Controller::ice_staticId() noexcept
{
    return "::Test::Controller";
}

/// \cond INTERNAL
void
Test::Controller::_iceD_holdAdapter(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::int32_t iceP_to;
    istr->readAll(iceP_to);
    istr->endEncapsulation();
    this->holdAdapter(iceP_to, request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Controller::_iceD_resumeAdapter(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->resumeAdapter(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Controller::_iceD_shutdown(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->shutdown(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
Test::Controller::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 7> allOperations{"holdAdapter", "ice_id", "ice_ids", "ice_isA", "ice_ping", "resumeAdapter", "shutdown"};

    const Ice::Current& current = request.current();
    auto r = std::equal_range(allOperations.begin(), allOperations.end(), current.operation); // NOLINT(modernize-use-ranges)
    if (r.first == r.second)
    {
        sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        return;
    }

    switch (r.first - allOperations.begin())
    {
        case 0:
        {
            _iceD_holdAdapter(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_resumeAdapter(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_shutdown(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}
