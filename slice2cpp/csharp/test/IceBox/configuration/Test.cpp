//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "Test.h"
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

::std::string
Test::TestIntfPrx::getProperty(::std::string_view iceP_name, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(true, this, &TestIntfPrx::_iceI_getProperty, iceP_name, context).get();
}

::std::future<::std::string>
Test::TestIntfPrx::getPropertyAsync(::std::string_view iceP_name, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(false, this, &TestIntfPrx::_iceI_getProperty, iceP_name, context);
}

::std::function<void()>
Test::TestIntfPrx::getPropertyAsync(::std::string_view iceP_name, ::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::string>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_getProperty, iceP_name, context);
}

void
Test::TestIntfPrx::_iceI_getProperty(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, ::std::string_view iceP_name, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getProperty";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_name);
        },
        nullptr);
}

::Ice::StringSeq
Test::TestIntfPrx::getArgs(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::StringSeq>(true, this, &TestIntfPrx::_iceI_getArgs, context).get();
}

::std::future<::Ice::StringSeq>
Test::TestIntfPrx::getArgsAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Ice::StringSeq>(false, this, &TestIntfPrx::_iceI_getArgs, context);
}

::std::function<void()>
Test::TestIntfPrx::getArgsAsync(::std::function<void(::Ice::StringSeq)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Ice::StringSeq>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_getArgs, context);
}

void
Test::TestIntfPrx::_iceI_getArgs(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::StringSeq>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getArgs";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::TestIntfPrx::ice_staticId() noexcept
{
    return "::Test::TestIntf";
}

::std::vector<::std::string>
Test::TestIntf::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::TestIntf"};
    return allTypeIds;
}

::std::string
Test::TestIntf::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::TestIntf::ice_staticId() noexcept
{
    return "::Test::TestIntf";
}

/// \cond INTERNAL
void
Test::TestIntf::_iceD_getProperty(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::string iceP_name;
    istr->readAll(iceP_name);
    istr->endEncapsulation();
    ::std::string ret = this->getProperty(::std::move(iceP_name), request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_getArgs(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Ice::StringSeq ret = this->getArgs(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"getArgs", "getProperty", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

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
            _iceD_getArgs(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_getProperty(request, ::std::move(sendResponse));
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
