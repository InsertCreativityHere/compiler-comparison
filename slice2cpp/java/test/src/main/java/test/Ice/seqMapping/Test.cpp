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

namespace
{
    const ::IceInternal::FactoryTableInit iceC_factoryTableInit;
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::Bar> iceC_Test_Bar_init("::Test::Bar");
    const ::IceInternal::DefaultValueFactoryInit<::Test::Baz> iceC_Test_Baz_init("::Test::Baz");
}

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

::Test::SerialSmall
Test::MyClassPrx::opSerialSmallJava(const SerialSmall& iceP_i, SerialSmall& iceP_o, const ::Ice::Context& context) const
{
    auto result = ::IceInternal::makePromiseOutgoing<::std::tuple<SerialSmall, SerialSmall>>(true, this, &MyClassPrx::_iceI_opSerialSmallJava, iceP_i, context).get();
    iceP_o = ::std::move(::std::get<1>(result));
    return ::std::move(::std::get<0>(result));
}

::std::future<::std::tuple<::Test::SerialSmall, ::Test::SerialSmall>>
Test::MyClassPrx::opSerialSmallJavaAsync(const SerialSmall& iceP_i, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::tuple<SerialSmall, SerialSmall>>(false, this, &MyClassPrx::_iceI_opSerialSmallJava, iceP_i, context);
}

::std::function<void()>
Test::MyClassPrx::opSerialSmallJavaAsync(const SerialSmall& iceP_i, ::std::function<void(::Test::SerialSmall, ::Test::SerialSmall)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    auto responseCb = [response = ::std::move(response)](::std::tuple<SerialSmall, SerialSmall>&& result)
    {
        ::std::apply(::std::move(response), ::std::move(result));
    };
    return ::IceInternal::makeLambdaOutgoing<::std::tuple<SerialSmall, SerialSmall>>(::std::move(responseCb), ::std::move(ex), ::std::move(sent), this, &Test::MyClassPrx::_iceI_opSerialSmallJava, iceP_i, context);
}

void
Test::MyClassPrx::_iceI_opSerialSmallJava(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<SerialSmall, SerialSmall>>>& outAsync, const SerialSmall& iceP_i, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "opSerialSmallJava";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::std::tuple<SerialSmall, SerialSmall> v;
            istr->readAll(::std::get<1>(v), ::std::get<0>(v));
            return v;
        });
}

::Test::SerialLarge
Test::MyClassPrx::opSerialLargeJava(const SerialLarge& iceP_i, SerialLarge& iceP_o, const ::Ice::Context& context) const
{
    auto result = ::IceInternal::makePromiseOutgoing<::std::tuple<SerialLarge, SerialLarge>>(true, this, &MyClassPrx::_iceI_opSerialLargeJava, iceP_i, context).get();
    iceP_o = ::std::move(::std::get<1>(result));
    return ::std::move(::std::get<0>(result));
}

::std::future<::std::tuple<::Test::SerialLarge, ::Test::SerialLarge>>
Test::MyClassPrx::opSerialLargeJavaAsync(const SerialLarge& iceP_i, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::tuple<SerialLarge, SerialLarge>>(false, this, &MyClassPrx::_iceI_opSerialLargeJava, iceP_i, context);
}

::std::function<void()>
Test::MyClassPrx::opSerialLargeJavaAsync(const SerialLarge& iceP_i, ::std::function<void(::Test::SerialLarge, ::Test::SerialLarge)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    auto responseCb = [response = ::std::move(response)](::std::tuple<SerialLarge, SerialLarge>&& result)
    {
        ::std::apply(::std::move(response), ::std::move(result));
    };
    return ::IceInternal::makeLambdaOutgoing<::std::tuple<SerialLarge, SerialLarge>>(::std::move(responseCb), ::std::move(ex), ::std::move(sent), this, &Test::MyClassPrx::_iceI_opSerialLargeJava, iceP_i, context);
}

void
Test::MyClassPrx::_iceI_opSerialLargeJava(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<SerialLarge, SerialLarge>>>& outAsync, const SerialLarge& iceP_i, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "opSerialLargeJava";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::std::tuple<SerialLarge, SerialLarge> v;
            istr->readAll(::std::get<1>(v), ::std::get<0>(v));
            return v;
        });
}

::Test::SerialStruct
Test::MyClassPrx::opSerialStructJava(const SerialStruct& iceP_i, SerialStruct& iceP_o, const ::Ice::Context& context) const
{
    auto result = ::IceInternal::makePromiseOutgoing<::std::tuple<SerialStruct, SerialStruct>>(true, this, &MyClassPrx::_iceI_opSerialStructJava, iceP_i, context).get();
    iceP_o = ::std::move(::std::get<1>(result));
    return ::std::move(::std::get<0>(result));
}

::std::future<::std::tuple<::Test::SerialStruct, ::Test::SerialStruct>>
Test::MyClassPrx::opSerialStructJavaAsync(const SerialStruct& iceP_i, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::tuple<SerialStruct, SerialStruct>>(false, this, &MyClassPrx::_iceI_opSerialStructJava, iceP_i, context);
}

::std::function<void()>
Test::MyClassPrx::opSerialStructJavaAsync(const SerialStruct& iceP_i, ::std::function<void(::Test::SerialStruct, ::Test::SerialStruct)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    auto responseCb = [response = ::std::move(response)](::std::tuple<SerialStruct, SerialStruct>&& result)
    {
        ::std::apply(::std::move(response), ::std::move(result));
    };
    return ::IceInternal::makeLambdaOutgoing<::std::tuple<SerialStruct, SerialStruct>>(::std::move(responseCb), ::std::move(ex), ::std::move(sent), this, &Test::MyClassPrx::_iceI_opSerialStructJava, iceP_i, context);
}

void
Test::MyClassPrx::_iceI_opSerialStructJava(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<SerialStruct, SerialStruct>>>& outAsync, const SerialStruct& iceP_i, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "opSerialStructJava";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_i);
        },
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::std::tuple<SerialStruct, SerialStruct> v;
            istr->readAll(::std::get<1>(v), ::std::get<0>(v));
            return v;
        });
}

const char*
Test::MyClassPrx::ice_staticId() noexcept
{
    return "::Test::MyClass";
}

const char*
Test::Bar::ice_staticId() noexcept
{
    return "::Test::Bar";
}

const char*
Test::Bar::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::Bar::ice_throw() const
{
    throw *this;
}

void
Test::Bar::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<Bar>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Bar::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<Bar>::read(istr, *this);
    istr->endSlice();
}

const char*
Test::Baz::ice_staticId() noexcept
{
    return "::Test::Baz";
}

const char*
Test::Baz::ice_id() const noexcept
{
    return ice_staticId();
}

::Ice::ValuePtr
Test::Baz::_iceCloneImpl() const
{
    return CloneEnabler<Baz>::clone(*this);
}

void
Test::Baz::_iceWriteImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<Baz>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Baz::_iceReadImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<Baz>::read(istr, *this);
    istr->endSlice();
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
    this->shutdown(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClass::_iceD_opSerialSmallJava(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    SerialSmall iceP_i;
    istr->readAll(iceP_i);
    istr->endEncapsulation();
    SerialSmall iceP_o;
    SerialSmall ret = this->opSerialSmallJava(::std::move(iceP_i), iceP_o, request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_o, ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClass::_iceD_opSerialLargeJava(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    SerialLarge iceP_i;
    istr->readAll(iceP_i);
    istr->endEncapsulation();
    SerialLarge iceP_o;
    SerialLarge ret = this->opSerialLargeJava(::std::move(iceP_i), iceP_o, request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_o, ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClass::_iceD_opSerialStructJava(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    SerialStruct iceP_i;
    istr->readAll(iceP_i);
    istr->endEncapsulation();
    SerialStruct iceP_o;
    SerialStruct ret = this->opSerialStructJava(::std::move(iceP_i), iceP_o, request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_o, ret);
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::MyClass::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"ice_id", "ice_ids", "ice_isA", "ice_ping", "opSerialLargeJava", "opSerialSmallJava", "opSerialStructJava", "shutdown"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 8, current.operation);
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
            _iceD_opSerialLargeJava(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_opSerialSmallJava(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_opSerialStructJava(request, ::std::move(sendResponse));
            break;
        }
        case 7:
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
