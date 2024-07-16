//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Forward.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include "Forward.h"
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

namespace
{
    const ::IceInternal::FactoryTableInit iceC_factoryTableInit;
    const ::IceInternal::DefaultValueFactoryInit<::Test::F1> iceC_Test_F1_init("::Test::F1");
}

void
Test::F2Prx::op(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &F2Prx::_iceI_op, context).get();
}

::std::future<void>
Test::F2Prx::opAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &F2Prx::_iceI_op, context);
}

::std::function<void()>
Test::F2Prx::opAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::F2Prx::_iceI_op, context);
}

void
Test::F2Prx::_iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "op";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::F2Prx::ice_staticId() noexcept
{
    return "::Test::F2";
}

const char*
Test::F1::ice_staticId() noexcept
{
    return "::Test::F1";
}

const char*
Test::F1::ice_id() const noexcept
{
    return ice_staticId();
}

::Ice::ValuePtr
Test::F1::_iceCloneImpl() const
{
    return CloneEnabler<F1>::clone(*this);
}

void
Test::F1::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<F1>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::F1::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<F1>::read(istr, *this);
    istr->endSlice();
}

::std::vector<::std::string>
Test::F2::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::F2"};
    return allTypeIds;
}

::std::string
Test::F2::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::F2::ice_staticId() noexcept
{
    return "::Test::F2";
}

/// \cond INTERNAL
void
Test::F2::_iceD_op(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->op(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::F2::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"ice_id", "ice_ids", "ice_isA", "ice_ping", "op"};

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
            _iceD_op(request, ::std::move(sendResponse));
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
