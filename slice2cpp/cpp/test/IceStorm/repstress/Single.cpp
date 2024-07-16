//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Single.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "Single.h"
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
Test::SinglePrx::event(::std::int32_t iceP_i, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &SinglePrx::_iceI_event, iceP_i, context).get();
}

::std::future<void>
Test::SinglePrx::eventAsync(::std::int32_t iceP_i, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &SinglePrx::_iceI_event, iceP_i, context);
}

::std::function<void()>
Test::SinglePrx::eventAsync(::std::int32_t iceP_i, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::SinglePrx::_iceI_event, iceP_i, context);
}

void
Test::SinglePrx::_iceI_event(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, ::std::int32_t iceP_i, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "event";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr);
}

const char*
Test::SinglePrx::ice_staticId() noexcept
{
    return "::Test::Single";
}

::std::vector<::std::string>
Test::Single::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::Single"};
    return allTypeIds;
}

::std::string
Test::Single::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::Single::ice_staticId() noexcept
{
    return "::Test::Single";
}

/// \cond INTERNAL
void
Test::Single::_iceD_event(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    ::std::int32_t iceP_i;
    istr->readAll(iceP_i);
    istr->endEncapsulation();
    this->event(iceP_i, request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Single::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"event", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

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
            _iceD_event(request, ::std::move(sendResponse));
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
        default:
        {
            assert(false);
            sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        }
    }
}
/// \endcond
