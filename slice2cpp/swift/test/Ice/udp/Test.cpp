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
Test::PingReplyPrx::reply(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &PingReplyPrx::_iceI_reply, context).get();
}

std::future<void>
Test::PingReplyPrx::replyAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &PingReplyPrx::_iceI_reply, context);
}

std::function<void()>
Test::PingReplyPrx::replyAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::PingReplyPrx::_iceI_reply, context);
}

void
Test::PingReplyPrx::_iceI_reply(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "reply";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::PingReplyPrx::~PingReplyPrx() = default;

const char*
Test::PingReplyPrx::ice_staticId() noexcept
{
    return "::Test::PingReply";
}

void
Test::TestIntfPrx::ping(const std::optional<PingReplyPrx>& iceP_reply, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_ping, iceP_reply, context).get();
}

std::future<void>
Test::TestIntfPrx::pingAsync(const std::optional<PingReplyPrx>& iceP_reply, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_ping, iceP_reply, context);
}

std::function<void()>
Test::TestIntfPrx::pingAsync(const std::optional<PingReplyPrx>& iceP_reply, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestIntfPrx::_iceI_ping, iceP_reply, context);
}

void
Test::TestIntfPrx::_iceI_ping(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const std::optional<PingReplyPrx>& iceP_reply, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "ping";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_reply);
        },
        nullptr);
}

void
Test::TestIntfPrx::sendByteSeq(const ByteSeq& iceP_seq, const std::optional<PingReplyPrx>& iceP_reply, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_sendByteSeq, iceP_seq, iceP_reply, context).get();
}

std::future<void>
Test::TestIntfPrx::sendByteSeqAsync(const ByteSeq& iceP_seq, const std::optional<PingReplyPrx>& iceP_reply, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_sendByteSeq, iceP_seq, iceP_reply, context);
}

std::function<void()>
Test::TestIntfPrx::sendByteSeqAsync(const ByteSeq& iceP_seq, const std::optional<PingReplyPrx>& iceP_reply, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestIntfPrx::_iceI_sendByteSeq, iceP_seq, iceP_reply, context);
}

void
Test::TestIntfPrx::_iceI_sendByteSeq(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const ByteSeq& iceP_seq, const std::optional<PingReplyPrx>& iceP_reply, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "sendByteSeq";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_seq, iceP_reply);
        },
        nullptr);
}

void
Test::TestIntfPrx::pingBiDir(const ::Ice::Identity& iceP_reply, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_pingBiDir, iceP_reply, context).get();
}

std::future<void>
Test::TestIntfPrx::pingBiDirAsync(const ::Ice::Identity& iceP_reply, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_pingBiDir, iceP_reply, context);
}

std::function<void()>
Test::TestIntfPrx::pingBiDirAsync(const ::Ice::Identity& iceP_reply, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestIntfPrx::_iceI_pingBiDir, iceP_reply, context);
}

void
Test::TestIntfPrx::_iceI_pingBiDir(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Identity& iceP_reply, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "pingBiDir";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_reply);
        },
        nullptr);
}

void
Test::TestIntfPrx::shutdown(const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_shutdown, context).get();
}

std::future<void>
Test::TestIntfPrx::shutdownAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_shutdown, context);
}

std::function<void()>
Test::TestIntfPrx::shutdownAsync(std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestIntfPrx::_iceI_shutdown, context);
}

void
Test::TestIntfPrx::_iceI_shutdown(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        nullptr,
        nullptr);
}

Test::TestIntfPrx::~TestIntfPrx() = default;

const char*
Test::TestIntfPrx::ice_staticId() noexcept
{
    return "::Test::TestIntf";
}

std::vector<std::string>
Test::PingReply::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::PingReply"};
    return allTypeIds;
}

std::string
Test::PingReply::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::PingReply::ice_staticId() noexcept
{
    return "::Test::PingReply";
}

/// \cond INTERNAL
void
Test::PingReply::_iceD_reply(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->reply(request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

void
Test::PingReply::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 5> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "reply"};

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
            _iceD_reply(request, std::move(sendResponse));
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
Test::TestIntf::ice_ids(const Ice::Current&) const
{
    static const std::vector<std::string> allTypeIds = {"::Ice::Object", "::Test::TestIntf"};
    return allTypeIds;
}

std::string
Test::TestIntf::ice_id(const Ice::Current&) const
{
    return std::string{ice_staticId()};
}

const char*
Test::TestIntf::ice_staticId() noexcept
{
    return "::Test::TestIntf";
}

/// \cond INTERNAL
void
Test::TestIntf::_iceD_ping(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::optional<PingReplyPrx> iceP_reply;
    istr->readAll(iceP_reply);
    istr->endEncapsulation();
    this->ping(std::move(iceP_reply), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_sendByteSeq(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ByteSeq iceP_seq;
    std::optional<PingReplyPrx> iceP_reply;
    istr->readAll(iceP_seq, iceP_reply);
    istr->endEncapsulation();
    this->sendByteSeq(std::move(iceP_seq), std::move(iceP_reply), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_pingBiDir(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::Ice::Identity iceP_reply;
    istr->readAll(iceP_reply);
    istr->endEncapsulation();
    this->pingBiDir(std::move(iceP_reply), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_shutdown(
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
Test::TestIntf::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 8> allOperations{"ice_id", "ice_ids", "ice_isA", "ice_ping", "ping", "pingBiDir", "sendByteSeq", "shutdown"};

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
            _iceD_ping(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_pingBiDir(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_sendByteSeq(request, std::move(sendResponse));
            break;
        }
        case 7:
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
