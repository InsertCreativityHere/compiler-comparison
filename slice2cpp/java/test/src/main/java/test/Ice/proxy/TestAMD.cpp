//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "TestAMD.h"
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
Test::MyClassPrx::shutdown(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_shutdown, context).get();
}

::std::future<void>
Test::MyClassPrx::shutdownAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &MyClassPrx::_iceI_shutdown, context);
}

::std::function<void()>
Test::MyClassPrx::shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::MyClassPrx::_iceI_shutdown, context);
}

void
Test::MyClassPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::Ice::Context
Test::MyClassPrx::getContext(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::Context>(true, this, &MyClassPrx::_iceI_getContext, context).get();
}

::std::future<::Ice::Context>
Test::MyClassPrx::getContextAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::Context>(false, this, &MyClassPrx::_iceI_getContext, context);
}

::std::function<void()>
Test::MyClassPrx::getContextAsync(::std::function<void(::Ice::Context)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Ice::Context>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::MyClassPrx::_iceI_getContext, context);
}

void
Test::MyClassPrx::_iceI_getContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::Context>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getContext";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::MyClassPrx::ice_staticId() noexcept
{
    return "::Test::MyClass";
}

::std::optional<::Ice::ObjectPrx>
Test::MyDerivedClassPrx::echo(const ::std::optional<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(true, this, &MyDerivedClassPrx::_iceI_echo, iceP_obj, context).get();
}

::std::future<::std::optional<::Ice::ObjectPrx>>
Test::MyDerivedClassPrx::echoAsync(const ::std::optional<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(false, this, &MyDerivedClassPrx::_iceI_echo, iceP_obj, context);
}

::std::function<void()>
Test::MyDerivedClassPrx::echoAsync(const ::std::optional<::Ice::ObjectPrx>& iceP_obj, ::std::function<void(::std::optional<::Ice::ObjectPrx>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::optional<::Ice::ObjectPrx>>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::MyDerivedClassPrx::_iceI_echo, iceP_obj, context);
}

void
Test::MyDerivedClassPrx::_iceI_echo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>& outAsync, const ::std::optional<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "echo";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_obj);
        },
        nullptr);
}

const char*
Test::MyDerivedClassPrx::ice_staticId() noexcept
{
    return "::Test::MyDerivedClass";
}

const char*
Test::MyOtherDerivedClassPrx::ice_staticId() noexcept
{
    return "::Test::MyOtherDerivedClass";
}

const char*
Test::DiamondClassPrx::ice_staticId() noexcept
{
    return "::Test::DiamondClass";
}

::std::vector<::std::string>
Test::MyClass::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::MyClass"};
    return allTypeIds;
}

::std::string
Test::MyClass::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::MyClass::ice_staticId() noexcept
{
    return "::Test::MyClass";
}

/// \cond INTERNAL
void
Test::MyClass::_iceD_shutdown(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->shutdownAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClass::_iceD_getContext(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](const ::Ice::Context& ret)
    {
        responseHandler->sendResponse(
            [&](::Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->getContextAsync(::std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClass::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"getContext", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

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
            _iceD_getContext(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 5:
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

::std::vector<::std::string>
Test::MyDerivedClass::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::MyClass", "::Test::MyDerivedClass"};
    return allTypeIds;
}

::std::string
Test::MyDerivedClass::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::MyDerivedClass::ice_staticId() noexcept
{
    return "::Test::MyDerivedClass";
}

/// \cond INTERNAL
void
Test::MyDerivedClass::_iceD_echo(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::optional<::Ice::ObjectPrx> iceP_obj;
    istr->readAll(iceP_obj);
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
        this->echoAsync(::std::move(iceP_obj), ::std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::MyDerivedClass::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"echo", "getContext", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

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
            _iceD_echo(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_getContext(request, ::std::move(sendResponse));
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

::std::vector<::std::string>
Test::MyOtherDerivedClass::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::MyClass", "::Test::MyOtherDerivedClass"};
    return allTypeIds;
}

::std::string
Test::MyOtherDerivedClass::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::MyOtherDerivedClass::ice_staticId() noexcept
{
    return "::Test::MyOtherDerivedClass";
}

/// \cond INTERNAL
void
Test::MyOtherDerivedClass::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"getContext", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

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
            _iceD_getContext(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 5:
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

::std::vector<::std::string>
Test::DiamondClass::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::DiamondClass", "::Test::MyClass", "::Test::MyDerivedClass", "::Test::MyOtherDerivedClass"};
    return allTypeIds;
}

::std::string
Test::DiamondClass::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::DiamondClass::ice_staticId() noexcept
{
    return "::Test::DiamondClass";
}

/// \cond INTERNAL
void
Test::DiamondClass::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"echo", "getContext", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown"};

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
            _iceD_echo(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_getContext(request, ::std::move(sendResponse));
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
