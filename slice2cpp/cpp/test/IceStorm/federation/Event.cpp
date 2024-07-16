//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Event.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "Event.h"
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
Test::EventPrx::pub(::std::string_view iceP_data, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &EventPrx::_iceI_pub, iceP_data, context).get();
}

::std::future<void>
Test::EventPrx::pubAsync(::std::string_view iceP_data, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &EventPrx::_iceI_pub, iceP_data, context);
}

::std::function<void()>
Test::EventPrx::pubAsync(::std::string_view iceP_data, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::EventPrx::_iceI_pub, iceP_data, context);
}

void
Test::EventPrx::_iceI_pub(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::string_view iceP_data, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "pub";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_data);
        },
        nullptr);
}

const char*
Test::EventPrx::ice_staticId() noexcept
{
    return "::Test::Event";
}

::std::vector<::std::string>
Test::Event::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::Event"};
    return allTypeIds;
}

::std::string
Test::Event::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::Event::ice_staticId() noexcept
{
    return "::Test::Event";
}

/// \cond INTERNAL
void
Test::Event::_iceD_pub(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::string iceP_data;
    istr->readAll(iceP_data);
    istr->endEncapsulation();
    this->pub(::std::move(iceP_data), request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Event::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"ice_id", "ice_ids", "ice_isA", "ice_ping", "pub"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 5, current.operation);
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
            _iceD_pub(request, ::std::move(sendResponse));
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
