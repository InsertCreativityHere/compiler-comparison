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

std::ostream&
Test::operator<<(std::ostream& os, StateCode value)
{
    switch (value)
    {
        case StateCode::Initial:
            return os << "Initial";
        case StateCode::Running:
            return os << "Running";
        case StateCode::Finished:
            return os << "Finished";
        default:
            return os << static_cast<std::int32_t>(value);
    }
}

namespace
{
}

void
Test::BackendPrx::check(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &BackendPrx::_iceI_check, context).get();
}

std::future<void>
Test::BackendPrx::checkAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &BackendPrx::_iceI_check, context);
}

std::function<void()>
Test::BackendPrx::checkAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::BackendPrx::_iceI_check, context);
}

void
Test::BackendPrx::_iceI_check(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "check";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::BackendPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &BackendPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::BackendPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &BackendPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::BackendPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::BackendPrx::_iceI_shutdown, context);
}

void
Test::BackendPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::BackendPrx::~BackendPrx() = default;

const char*
Test::BackendPrx::ice_staticId() noexcept
{
    return "::Test::Backend";
}

void
Test::TestControllerPrx::step(const std::optional<::Glacier2::SessionPrx>& iceP_currentSession, const TestToken& iceP_currentState, TestToken& iceP_newState, const Ice::Context& context) const
{
    iceP_newState = IceInternal::makePromiseOutgoing<TestToken>(true, this, &TestControllerPrx::_iceI_step, iceP_currentSession, iceP_currentState, context).get();
}

std::future<::Test::TestToken>
Test::TestControllerPrx::stepAsync(const std::optional<::Glacier2::SessionPrx>& iceP_currentSession, const TestToken& iceP_currentState, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<TestToken>(false, this, &TestControllerPrx::_iceI_step, iceP_currentSession, iceP_currentState, context);
}

std::function<void()>
Test::TestControllerPrx::stepAsync(const std::optional<::Glacier2::SessionPrx>& iceP_currentSession, const TestToken& iceP_currentState, std::function<void(::Test::TestToken)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<TestToken>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestControllerPrx::_iceI_step, iceP_currentSession, iceP_currentState, context);
}

void
Test::TestControllerPrx::_iceI_step(const std::shared_ptr<IceInternal::OutgoingAsyncT<TestToken>>& outAsync, const std::optional<::Glacier2::SessionPrx>& iceP_currentSession, const TestToken& iceP_currentState, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "step";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_currentSession, iceP_currentState);
        },
        nullptr);
}

void
Test::TestControllerPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TestControllerPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::TestControllerPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TestControllerPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::TestControllerPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestControllerPrx::_iceI_shutdown, context);
}

void
Test::TestControllerPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::TestControllerPrx::~TestControllerPrx() = default;

const char*
Test::TestControllerPrx::ice_staticId() noexcept
{
    return "::Test::TestController";
}

void
Test::TestSessionPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TestSessionPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::TestSessionPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TestSessionPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::TestSessionPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestSessionPrx::_iceI_shutdown, context);
}

void
Test::TestSessionPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::TestSessionPrx::~TestSessionPrx() = default;

const char*
Test::TestSessionPrx::ice_staticId() noexcept
{
    return "::Test::TestSession";
}

void
Test::TestToken::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "expectedResult = ", this->expectedResult);
    Ice::print(os << ", description = ", this->description);
    Ice::print(os << ", code = ", this->code);
    Ice::print(os << ", config = ", this->config);
    Ice::print(os << ", caseIndex = ", this->caseIndex);
    Ice::print(os << ", testReference = ", this->testReference);
}

std::ostream&
Test::operator<<(std::ostream& os, const ::Test::TestToken& value)
{
    os << "Test::TestToken{";
    value.ice_printFields(os);
    os << '}';
    return os;
}

std::vector<std::string>
Test::Backend::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::Backend"};
    return allTypeIds;
}

std::string
Test::Backend::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::Backend::ice_staticId() noexcept
{
    return "::Test::Backend";
}

/// \cond INTERNAL
void
Test::Backend::_iceD_check(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->check(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Backend::_iceD_shutdown(
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
Test::Backend::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 6> allOperations{"check", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

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
            _iceD_check(request, std::move(sendResponse));
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

std::vector<std::string>
Test::TestController::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::TestController"};
    return allTypeIds;
}

std::string
Test::TestController::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::TestController::ice_staticId() noexcept
{
    return "::Test::TestController";
}

/// \cond INTERNAL
void
Test::TestController::_iceD_step(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::optional<::Glacier2::SessionPrx> iceP_currentSession;
    TestToken iceP_currentState;
    istr->readAll(iceP_currentSession, iceP_currentState);
    istr->endEncapsulation();
    TestToken iceP_newState;
    this->step(std::move(iceP_currentSession), std::move(iceP_currentState), iceP_newState, request.current());
    sendResponse(Ice::makeOutgoingResponse([&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_newState);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestController::_iceD_shutdown(
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
Test::TestController::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 6> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown", "step"};

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
            _iceD_shutdown(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_step(request, std::move(sendResponse));
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
Test::TestSession::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Glacier2::Session", "::Ice::Object", "::Test::TestSession"};
    return allTypeIds;
}

std::string
Test::TestSession::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::TestSession::ice_staticId() noexcept
{
    return "::Test::TestSession";
}

/// \cond INTERNAL
void
Test::TestSession::_iceD_shutdown(
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
Test::TestSession::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 6> allOperations{"destroy", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

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
            _iceD_destroy(request, std::move(sendResponse));
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
