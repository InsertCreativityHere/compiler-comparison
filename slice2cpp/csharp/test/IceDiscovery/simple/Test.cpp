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

std::string
Test::TestIntfPrx::getAdapterId(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::string>(true, this, &TestIntfPrx::_iceI_getAdapterId, context).get();
}

std::future<std::string>
Test::TestIntfPrx::getAdapterIdAsync(const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<std::string>(false, this, &TestIntfPrx::_iceI_getAdapterId, context);
}

std::function<void()>
Test::TestIntfPrx::getAdapterIdAsync(std::function<void(std::string)> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<std::string>(std::move(response), std::move(exception), std::move(sent), this, &Test::TestIntfPrx::_iceI_getAdapterId, context);
}

void
Test::TestIntfPrx::_iceI_getAdapterId(const std::shared_ptr<IceInternal::OutgoingAsyncT<std::string>>& outAsync, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "getAdapterId";

    _checkTwowayOnly(operationName);
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

void
Test::ControllerPrx::activateObjectAdapter(std::string_view iceP_name, std::string_view iceP_adapterId, std::string_view iceP_replicaGroupId, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_activateObjectAdapter, iceP_name, iceP_adapterId, iceP_replicaGroupId, context).get();
}

std::future<void>
Test::ControllerPrx::activateObjectAdapterAsync(std::string_view iceP_name, std::string_view iceP_adapterId, std::string_view iceP_replicaGroupId, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_activateObjectAdapter, iceP_name, iceP_adapterId, iceP_replicaGroupId, context);
}

std::function<void()>
Test::ControllerPrx::activateObjectAdapterAsync(std::string_view iceP_name, std::string_view iceP_adapterId, std::string_view iceP_replicaGroupId, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_activateObjectAdapter, iceP_name, iceP_adapterId, iceP_replicaGroupId, context);
}

void
Test::ControllerPrx::_iceI_activateObjectAdapter(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, std::string_view iceP_name, std::string_view iceP_adapterId, std::string_view iceP_replicaGroupId, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "activateObjectAdapter";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_name, iceP_adapterId, iceP_replicaGroupId);
        },
        nullptr);
}

void
Test::ControllerPrx::deactivateObjectAdapter(std::string_view iceP_name, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_deactivateObjectAdapter, iceP_name, context).get();
}

std::future<void>
Test::ControllerPrx::deactivateObjectAdapterAsync(std::string_view iceP_name, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_deactivateObjectAdapter, iceP_name, context);
}

std::function<void()>
Test::ControllerPrx::deactivateObjectAdapterAsync(std::string_view iceP_name, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_deactivateObjectAdapter, iceP_name, context);
}

void
Test::ControllerPrx::_iceI_deactivateObjectAdapter(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, std::string_view iceP_name, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "deactivateObjectAdapter";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_name);
        },
        nullptr);
}

void
Test::ControllerPrx::addObject(std::string_view iceP_oaName, std::string_view iceP_id, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_addObject, iceP_oaName, iceP_id, context).get();
}

std::future<void>
Test::ControllerPrx::addObjectAsync(std::string_view iceP_oaName, std::string_view iceP_id, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_addObject, iceP_oaName, iceP_id, context);
}

std::function<void()>
Test::ControllerPrx::addObjectAsync(std::string_view iceP_oaName, std::string_view iceP_id, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_addObject, iceP_oaName, iceP_id, context);
}

void
Test::ControllerPrx::_iceI_addObject(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, std::string_view iceP_oaName, std::string_view iceP_id, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "addObject";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_oaName, iceP_id);
        },
        nullptr);
}

void
Test::ControllerPrx::removeObject(std::string_view iceP_oaName, std::string_view iceP_id, const Ice::Context& context) const
{
    IceInternal::makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_removeObject, iceP_oaName, iceP_id, context).get();
}

std::future<void>
Test::ControllerPrx::removeObjectAsync(std::string_view iceP_oaName, std::string_view iceP_id, const Ice::Context& context) const
{
    return IceInternal::makePromiseOutgoing<void>(false, this, &ControllerPrx::_iceI_removeObject, iceP_oaName, iceP_id, context);
}

std::function<void()>
Test::ControllerPrx::removeObjectAsync(std::string_view iceP_oaName, std::string_view iceP_id, std::function<void()> response, std::function<void(std::exception_ptr)> exception, std::function<void(bool)> sent, const Ice::Context& context) const
{
    return IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(exception), std::move(sent), this, &Test::ControllerPrx::_iceI_removeObject, iceP_oaName, iceP_id, context);
}

void
Test::ControllerPrx::_iceI_removeObject(const std::shared_ptr<IceInternal::OutgoingAsyncT<void>>& outAsync, std::string_view iceP_oaName, std::string_view iceP_id, const Ice::Context& context) const
{
    static constexpr std::string_view operationName = "removeObject";

    outAsync->invoke(operationName, Ice::OperationMode::Normal, std::nullopt, context,
        [&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_oaName, iceP_id);
        },
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
Test::TestIntf::_iceD_getAdapterId(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    const std::string ret = this->getAdapterId(request.current());
    sendResponse(Ice::makeOutgoingResponse([&](Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
        },
        request.current()));
}
/// \endcond

void
Test::TestIntf::dispatch(Ice::IncomingRequest& request, std::function<void(Ice::OutgoingResponse)> sendResponse)
{
    static constexpr std::array<std::string_view, 5> allOperations{"getAdapterId", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

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
            _iceD_getAdapterId(request, std::move(sendResponse));
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
Test::Controller::_iceD_activateObjectAdapter(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::string iceP_name;
    std::string iceP_adapterId;
    std::string iceP_replicaGroupId;
    istr->readAll(iceP_name, iceP_adapterId, iceP_replicaGroupId);
    istr->endEncapsulation();
    this->activateObjectAdapter(std::move(iceP_name), std::move(iceP_adapterId), std::move(iceP_replicaGroupId), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Controller::_iceD_deactivateObjectAdapter(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::string iceP_name;
    istr->readAll(iceP_name);
    istr->endEncapsulation();
    this->deactivateObjectAdapter(std::move(iceP_name), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Controller::_iceD_addObject(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::string iceP_oaName;
    std::string iceP_id;
    istr->readAll(iceP_oaName, iceP_id);
    istr->endEncapsulation();
    this->addObject(std::move(iceP_oaName), std::move(iceP_id), request.current());
    sendResponse(Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Controller::_iceD_removeObject(
    Ice::IncomingRequest& request,
    std::function<void(Ice::OutgoingResponse)> sendResponse) // NOLINT(performance-unnecessary-value-param)
{
    _iceCheckMode(Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    std::string iceP_oaName;
    std::string iceP_id;
    istr->readAll(iceP_oaName, iceP_id);
    istr->endEncapsulation();
    this->removeObject(std::move(iceP_oaName), std::move(iceP_id), request.current());
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
    static constexpr std::array<std::string_view, 9> allOperations{"activateObjectAdapter", "addObject", "deactivateObjectAdapter", "ice_id", "ice_ids", "ice_isA", "ice_ping", "removeObject", "shutdown"};

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
            _iceD_activateObjectAdapter(request, std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_addObject(request, std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_deactivateObjectAdapter(request, std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_id(request, std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ids(request, std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_ice_isA(request, std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_ice_ping(request, std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_removeObject(request, std::move(sendResponse));
            break;
        }
        case 8:
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
