// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#define ICE_BUILDING_GENERATED_CODE
#include "Callback.h"
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
    const IceInternal::DefaultUserExceptionFactoryInit<::Test::CallbackException> iceC_Test_CallbackException_init("::Test::CallbackException");
}

void
Test::CallbackReceiverPrx::callback(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callback, context).get();
}

std::future<void>
Test::CallbackReceiverPrx::callbackAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callback, context);
}

std::function<void()>
Test::CallbackReceiverPrx::callbackAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callback, context);
}

void
Test::CallbackReceiverPrx::_iceI_callback(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "callback";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::CallbackReceiverPrx::callbackEx(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callbackEx, context).get();
}

std::future<void>
Test::CallbackReceiverPrx::callbackExAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callbackEx, context);
}

std::function<void()>
Test::CallbackReceiverPrx::callbackExAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callbackEx, context);
}

void
Test::CallbackReceiverPrx::_iceI_callbackEx(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "callbackEx";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        [](const Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch (const CallbackException&)
            {
                throw;
            }
            catch (const Ice::UserException&)
            {
            }
        });
}

std::int32_t
Test::CallbackReceiverPrx::concurrentCallback(std::int32_t iceP_number, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::int32_t>(true, this, &CallbackReceiverPrx::_iceI_concurrentCallback, iceP_number, context).get();
}

std::future<std::int32_t>
Test::CallbackReceiverPrx::concurrentCallbackAsync(std::int32_t iceP_number, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::int32_t>(false, this, &CallbackReceiverPrx::_iceI_concurrentCallback, iceP_number, context);
}

std::function<void()>
Test::CallbackReceiverPrx::concurrentCallbackAsync(std::int32_t iceP_number, std::function<void(std::int32_t)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<std::int32_t>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_concurrentCallback, iceP_number, context);
}

void
Test::CallbackReceiverPrx::_iceI_concurrentCallback(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::int32_t>>& outAsync, std::int32_t iceP_number, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "concurrentCallback";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_number);
        },
        nullptr);
}

void
Test::CallbackReceiverPrx::waitCallback(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_waitCallback, context).get();
}

std::future<void>
Test::CallbackReceiverPrx::waitCallbackAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_waitCallback, context);
}

std::function<void()>
Test::CallbackReceiverPrx::waitCallbackAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_waitCallback, context);
}

void
Test::CallbackReceiverPrx::_iceI_waitCallback(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "waitCallback";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

void
Test::CallbackReceiverPrx::callbackWithPayload(const ::Ice::ByteSeq& iceP_payload, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callbackWithPayload, iceP_payload, context).get();
}

std::future<void>
Test::CallbackReceiverPrx::callbackWithPayloadAsync(const ::Ice::ByteSeq& iceP_payload, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callbackWithPayload, iceP_payload, context);
}

std::function<void()>
Test::CallbackReceiverPrx::callbackWithPayloadAsync(const ::Ice::ByteSeq& iceP_payload, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callbackWithPayload, iceP_payload, context);
}

void
Test::CallbackReceiverPrx::_iceI_callbackWithPayload(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::ByteSeq& iceP_payload, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "callbackWithPayload";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_payload);
        },
        nullptr);
}

Test::CallbackReceiverPrx::~CallbackReceiverPrx() = default;

const char*
Test::CallbackReceiverPrx::ice_staticId() noexcept
{
    return "::Test::CallbackReceiver";
}

void
Test::CallbackPrx::initiateCallback(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallback, iceP_proxy, context).get();
}

std::future<void>
Test::CallbackPrx::initiateCallbackAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallback, iceP_proxy, context);
}

std::function<void()>
Test::CallbackPrx::initiateCallbackAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallback, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateCallback(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "initiateCallback";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        nullptr);
}

void
Test::CallbackPrx::initiateCallbackEx(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallbackEx, iceP_proxy, context).get();
}

std::future<void>
Test::CallbackPrx::initiateCallbackExAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallbackEx, iceP_proxy, context);
}

std::function<void()>
Test::CallbackPrx::initiateCallbackExAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallbackEx, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateCallbackEx(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "initiateCallbackEx";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        [](const Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch (const CallbackException&)
            {
                throw;
            }
            catch (const Ice::UserException&)
            {
            }
        });
}

std::int32_t
Test::CallbackPrx::initiateConcurrentCallback(std::int32_t iceP_number, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::int32_t>(true, this, &CallbackPrx::_iceI_initiateConcurrentCallback, iceP_number, iceP_proxy, context).get();
}

std::future<std::int32_t>
Test::CallbackPrx::initiateConcurrentCallbackAsync(std::int32_t iceP_number, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::int32_t>(false, this, &CallbackPrx::_iceI_initiateConcurrentCallback, iceP_number, iceP_proxy, context);
}

std::function<void()>
Test::CallbackPrx::initiateConcurrentCallbackAsync(std::int32_t iceP_number, const std::optional<CallbackReceiverPrx>& iceP_proxy, std::function<void(std::int32_t)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<std::int32_t>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateConcurrentCallback, iceP_number, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateConcurrentCallback(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::int32_t>>& outAsync, std::int32_t iceP_number, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "initiateConcurrentCallback";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_number, iceP_proxy);
        },
        nullptr);
}

void
Test::CallbackPrx::initiateWaitCallback(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateWaitCallback, iceP_proxy, context).get();
}

std::future<void>
Test::CallbackPrx::initiateWaitCallbackAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateWaitCallback, iceP_proxy, context);
}

std::function<void()>
Test::CallbackPrx::initiateWaitCallbackAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateWaitCallback, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateWaitCallback(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "initiateWaitCallback";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        nullptr);
}

void
Test::CallbackPrx::initiateCallbackWithPayload(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallbackWithPayload, iceP_proxy, context).get();
}

std::future<void>
Test::CallbackPrx::initiateCallbackWithPayloadAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallbackWithPayload, iceP_proxy, context);
}

std::function<void()>
Test::CallbackPrx::initiateCallbackWithPayloadAsync(const std::optional<CallbackReceiverPrx>& iceP_proxy, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallbackWithPayload, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateCallbackWithPayload(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const std::optional<CallbackReceiverPrx>& iceP_proxy, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "initiateCallbackWithPayload";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        nullptr);
}

void
Test::CallbackPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::CallbackPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::CallbackPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::CallbackPrx::_iceI_shutdown, context);
}

void
Test::CallbackPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::CallbackPrx::~CallbackPrx() = default;

const char*
Test::CallbackPrx::ice_staticId() noexcept
{
    return "::Test::Callback";
}

void
Test::CallbackException::ice_printFields(std::ostream& os) const
{
    Ice::print(os << "someValue = ", this->someValue);
    Ice::print(os << ", someString = ", this->someString);
}

const char*
Test::CallbackException::ice_staticId() noexcept
{
    return "::Test::CallbackException";
}

const char*
Test::CallbackException::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::CallbackException::ice_throw() const
{
    throw *this;
}

void
Test::CallbackException::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->writeAll(this->someValue, this->someString);
    ostr->endSlice();
}

void
Test::CallbackException::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->readAll(this->someValue, this->someString);
    istr->endSlice();
}

std::vector<std::string>
Test::CallbackReceiver::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::CallbackReceiver"};
    return allTypeIds;
}

std::string
Test::CallbackReceiver::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::CallbackReceiver::ice_staticId() noexcept
{
    return "::Test::CallbackReceiver";
}

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_callback(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->callback(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_callbackEx(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->callbackEx(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_concurrentCallback(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::int32_t iceP_number;
    istr->readAll(iceP_number);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](std::int32_t ret)
    {
        responseHandler->sendResponse(
            [&](Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->concurrentCallbackAsync(iceP_number, std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_waitCallback(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->waitCallback(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::CallbackReceiver::_iceD_callbackWithPayload(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::Ice::ByteSeq iceP_payload;
    istr->readAll(iceP_payload);
    istr->endEncapsulation();
    this->callbackWithPayload(std::move(iceP_payload), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
Test::CallbackReceiver::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 9> allOperations{"callback", "callbackEx", "callbackWithPayload", "concurrentCallback", "ice_id", "ice_ids", "ice_isA", "ice_ping", "waitCallback"};

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
            _iceD_callback(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_callbackEx(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_callbackWithPayload(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_concurrentCallback(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_waitCallback(request, std::move(sendResponse));
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
Test::Callback::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::Callback"};
    return allTypeIds;
}

std::string
Test::Callback::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::Callback::ice_staticId() noexcept
{
    return "::Test::Callback";
}

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateCallback(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    try
    {
        this->initiateCallbackAsync(std::move(iceP_proxy), [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateCallbackEx(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    try
    {
        this->initiateCallbackExAsync(std::move(iceP_proxy), [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateConcurrentCallback(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::int32_t iceP_number;
    std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_number, iceP_proxy);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](std::int32_t ret)
    {
        responseHandler->sendResponse(
            [&](Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->initiateConcurrentCallbackAsync(iceP_number, std::move(iceP_proxy), std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateWaitCallback(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    try
    {
        this->initiateWaitCallbackAsync(std::move(iceP_proxy), [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_initiateCallbackWithPayload(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    istr->endEncapsulation();
    auto responseHandler = std::make_shared<IceInternal::AsyncResponseHandler>(std::move(sendResponse), request.current());
    try
    {
        this->initiateCallbackWithPayloadAsync(std::move(iceP_proxy), [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::Callback::_iceD_shutdown(
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
Test::Callback::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 10> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "initiateCallback", "initiateCallbackEx", "initiateCallbackWithPayload", "initiateConcurrentCallback", "initiateWaitCallback", "shutdown"};

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
            _iceD_initiateCallback(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_initiateCallbackEx(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_initiateCallbackWithPayload(request, std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_initiateConcurrentCallback(request, std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_initiateWaitCallback(request, std::move(sendResponse));
            break;
        }
        case 9:
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
