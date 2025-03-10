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

namespace
{
    const IceInternal::FactoryTableInit iceC_factoryTableInit;
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::UserEx> iceC_Test_UserEx_init("::Test::UserEx");
}

void
Test::MetricsPrx::op(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_op, context).get();
}

std::future<void>
Test::MetricsPrx::opAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_op, context);
}

std::function<void()>
Test::MetricsPrx::opAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_op, context);
}

void
Test::MetricsPrx::_iceI_op(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "op";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::MetricsPrx::fail(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_fail, context).get();
}

std::future<void>
Test::MetricsPrx::failAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_fail, context);
}

std::function<void()>
Test::MetricsPrx::failAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_fail, context);
}

void
Test::MetricsPrx::_iceI_fail(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "fail";

    outAsync->invoke(operationName, Ice::OperationMode::Idempotent, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::MetricsPrx::opWithUserException(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithUserException, context).get();
}

std::future<void>
Test::MetricsPrx::opWithUserExceptionAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_opWithUserException, context);
}

std::function<void()>
Test::MetricsPrx::opWithUserExceptionAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithUserException, context);
}

void
Test::MetricsPrx::_iceI_opWithUserException(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "opWithUserException";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        [](const Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch (const UserEx&)
            {
                throw;
            }
            catch (const Ice::UserException&)
            {
            }
        });
}

void
Test::MetricsPrx::opWithRequestFailedException(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithRequestFailedException, context).get();
}

std::future<void>
Test::MetricsPrx::opWithRequestFailedExceptionAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_opWithRequestFailedException, context);
}

std::function<void()>
Test::MetricsPrx::opWithRequestFailedExceptionAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithRequestFailedException, context);
}

void
Test::MetricsPrx::_iceI_opWithRequestFailedException(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "opWithRequestFailedException";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::MetricsPrx::opWithLocalException(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithLocalException, context).get();
}

std::future<void>
Test::MetricsPrx::opWithLocalExceptionAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_opWithLocalException, context);
}

std::function<void()>
Test::MetricsPrx::opWithLocalExceptionAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithLocalException, context);
}

void
Test::MetricsPrx::_iceI_opWithLocalException(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "opWithLocalException";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::MetricsPrx::opWithUnknownException(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithUnknownException, context).get();
}

std::future<void>
Test::MetricsPrx::opWithUnknownExceptionAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_opWithUnknownException, context);
}

std::function<void()>
Test::MetricsPrx::opWithUnknownExceptionAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithUnknownException, context);
}

void
Test::MetricsPrx::_iceI_opWithUnknownException(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "opWithUnknownException";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::MetricsPrx::opByteS(const ByteSeq& iceP_bs, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opByteS, iceP_bs, context).get();
}

std::future<void>
Test::MetricsPrx::opByteSAsync(const ByteSeq& iceP_bs, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_opByteS, iceP_bs, context);
}

std::function<void()>
Test::MetricsPrx::opByteSAsync(const ByteSeq& iceP_bs, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_opByteS, iceP_bs, context);
}

void
Test::MetricsPrx::_iceI_opByteS(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const ByteSeq& iceP_bs, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "opByteS";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_bs);
        },
        nullptr);
}

std::optional<Ice::ObjectPrx>
Test::MetricsPrx::getAdmin(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::optional<Ice::ObjectPrx>>(true, this, &MetricsPrx::_iceI_getAdmin, context).get();
}

std::future<std::optional<Ice::ObjectPrx>>
Test::MetricsPrx::getAdminAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::optional<Ice::ObjectPrx>>(false, this, &MetricsPrx::_iceI_getAdmin, context);
}

std::function<void()>
Test::MetricsPrx::getAdminAsync(std::function<void(std::optional<Ice::ObjectPrx>)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<std::optional<Ice::ObjectPrx>>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_getAdmin, context);
}

void
Test::MetricsPrx::_iceI_getAdmin(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::optional<Ice::ObjectPrx>>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "getAdmin";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::MetricsPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::MetricsPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &MetricsPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::MetricsPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::MetricsPrx::_iceI_shutdown, context);
}

void
Test::MetricsPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::MetricsPrx::~MetricsPrx() = default;

const char*
Test::MetricsPrx::ice_staticId() noexcept
{
    return "::Test::Metrics";
}

void
Test::ControllerPrx::hold(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_hold, context).get();
}

std::future<void>
Test::ControllerPrx::holdAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_hold, context);
}

std::function<void()>
Test::ControllerPrx::holdAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_hold, context);
}

void
Test::ControllerPrx::_iceI_hold(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "hold";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::ControllerPrx::resume(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_resume, context).get();
}

std::future<void>
Test::ControllerPrx::resumeAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_resume, context);
}

std::function<void()>
Test::ControllerPrx::resumeAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_resume, context);
}

void
Test::ControllerPrx::_iceI_resume(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "resume";

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

const char*
Test::UserEx::ice_staticId() noexcept
{
    return "::Test::UserEx";
}

const char*
Test::UserEx::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::UserEx::ice_throw() const
{
    throw *this;
}

void
Test::UserEx::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->endSlice();
}

void
Test::UserEx::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->endSlice();
}

std::vector<std::string>
Test::Metrics::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::Metrics"};
    return allTypeIds;
}

std::string
Test::Metrics::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::Metrics::ice_staticId() noexcept
{
    return "::Test::Metrics";
}

/// \cond INTERNAL
void
Test::Metrics::_iceD_op(
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
Test::Metrics::_iceD_fail(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Idempotent, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->fail(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_opWithUserException(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->opWithUserException(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_opWithRequestFailedException(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->opWithRequestFailedException(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_opWithLocalException(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->opWithLocalException(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_opWithUnknownException(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->opWithUnknownException(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_opByteS(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ByteSeq iceP_bs;
    istr->readAll(iceP_bs);
    istr->endEncapsulation();
    this->opByteS(std::move(iceP_bs), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_getAdmin(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    const std::optional<Ice::ObjectPrx> ret = this->getAdmin(request.current());
    sendResponse(Ice::makeOutgoingResponse([&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Metrics::_iceD_shutdown(
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
Test::Metrics::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 13> allOperations{"fail", "getAdmin", "ice_id", "ice_ids", "ice_isA", "ice_ping", "op", "opByteS", "opWithLocalException", "opWithRequestFailedException", "opWithUnknownException", "opWithUserException", "shutdown"};

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
            _iceD_fail(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_getAdmin(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_op(request, std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_opByteS(request, std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_opWithLocalException(request, std::move(sendResponse));
            break;
        }
        case 9:
        {
            _iceD_opWithRequestFailedException(request, std::move(sendResponse));
            break;
        }
        case 10:
        {
            _iceD_opWithUnknownException(request, std::move(sendResponse));
            break;
        }
        case 11:
        {
            _iceD_opWithUserException(request, std::move(sendResponse));
            break;
        }
        case 12:
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
Test::Controller::_iceD_hold(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->hold(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Controller::_iceD_resume(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->resume(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
Test::Controller::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 6> allOperations{"hold", "ice_id", "ice_ids", "ice_isA", "ice_ping", "resume"};

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
            _iceD_hold(request, std::move(sendResponse));
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
            _iceD_resume(request, std::move(sendResponse));
            break;
        }
        default:
        {
            assert(false);
            sendResponse(Ice::makeOutgoingResponse(std::make_exception_ptr(Ice::OperationNotExistException{__FILE__, __LINE__}), current));
        }
    }
}
