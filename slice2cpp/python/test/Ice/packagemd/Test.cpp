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
}

::Test1::C1Ptr
Test::InitialPrx::getTest1C2AsC1(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test1::C1Ptr>(true, this, &InitialPrx::_iceI_getTest1C2AsC1, context).get();
}

::std::future<::Test1::C1Ptr>
Test::InitialPrx::getTest1C2AsC1Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test1::C1Ptr>(false, this, &InitialPrx::_iceI_getTest1C2AsC1, context);
}

::std::function<void()>
Test::InitialPrx::getTest1C2AsC1Async(::std::function<void(::Test1::C1Ptr)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Test1::C1Ptr>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_getTest1C2AsC1, context);
}

void
Test::InitialPrx::_iceI_getTest1C2AsC1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test1::C1Ptr>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getTest1C2AsC1";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::Test1::C1Ptr ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

::Test1::C2Ptr
Test::InitialPrx::getTest1C2AsC2(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test1::C2Ptr>(true, this, &InitialPrx::_iceI_getTest1C2AsC2, context).get();
}

::std::future<::Test1::C2Ptr>
Test::InitialPrx::getTest1C2AsC2Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test1::C2Ptr>(false, this, &InitialPrx::_iceI_getTest1C2AsC2, context);
}

::std::function<void()>
Test::InitialPrx::getTest1C2AsC2Async(::std::function<void(::Test1::C2Ptr)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Test1::C2Ptr>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_getTest1C2AsC2, context);
}

void
Test::InitialPrx::_iceI_getTest1C2AsC2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test1::C2Ptr>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getTest1C2AsC2";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::Test1::C2Ptr ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

void
Test::InitialPrx::throwTest1E2AsE1(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest1E2AsE1, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest1E2AsE1Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest1E2AsE1, context);
}

::std::function<void()>
Test::InitialPrx::throwTest1E2AsE1Async(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest1E2AsE1, context);
}

void
Test::InitialPrx::_iceI_throwTest1E2AsE1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest1E2AsE1";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test1::E1&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::InitialPrx::throwTest1E2AsE2(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest1E2AsE2, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest1E2AsE2Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest1E2AsE2, context);
}

::std::function<void()>
Test::InitialPrx::throwTest1E2AsE2Async(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest1E2AsE2, context);
}

void
Test::InitialPrx::_iceI_throwTest1E2AsE2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest1E2AsE2";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test1::E2&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::InitialPrx::throwTest1Def(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest1Def, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest1DefAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest1Def, context);
}

::std::function<void()>
Test::InitialPrx::throwTest1DefAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest1Def, context);
}

void
Test::InitialPrx::_iceI_throwTest1Def(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest1Def";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test1::def&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::Test2::C1Ptr
Test::InitialPrx::getTest2C2AsC1(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test2::C1Ptr>(true, this, &InitialPrx::_iceI_getTest2C2AsC1, context).get();
}

::std::future<::Test2::C1Ptr>
Test::InitialPrx::getTest2C2AsC1Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test2::C1Ptr>(false, this, &InitialPrx::_iceI_getTest2C2AsC1, context);
}

::std::function<void()>
Test::InitialPrx::getTest2C2AsC1Async(::std::function<void(::Test2::C1Ptr)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Test2::C1Ptr>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_getTest2C2AsC1, context);
}

void
Test::InitialPrx::_iceI_getTest2C2AsC1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test2::C1Ptr>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getTest2C2AsC1";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::Test2::C1Ptr ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

::Test2::C2Ptr
Test::InitialPrx::getTest2C2AsC2(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test2::C2Ptr>(true, this, &InitialPrx::_iceI_getTest2C2AsC2, context).get();
}

::std::future<::Test2::C2Ptr>
Test::InitialPrx::getTest2C2AsC2Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test2::C2Ptr>(false, this, &InitialPrx::_iceI_getTest2C2AsC2, context);
}

::std::function<void()>
Test::InitialPrx::getTest2C2AsC2Async(::std::function<void(::Test2::C2Ptr)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Test2::C2Ptr>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_getTest2C2AsC2, context);
}

void
Test::InitialPrx::_iceI_getTest2C2AsC2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test2::C2Ptr>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getTest2C2AsC2";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::Test2::C2Ptr ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

void
Test::InitialPrx::throwTest2E2AsE1(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest2E2AsE1, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest2E2AsE1Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest2E2AsE1, context);
}

::std::function<void()>
Test::InitialPrx::throwTest2E2AsE1Async(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest2E2AsE1, context);
}

void
Test::InitialPrx::_iceI_throwTest2E2AsE1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest2E2AsE1";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test2::E1&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::InitialPrx::throwTest2E2AsE2(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest2E2AsE2, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest2E2AsE2Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest2E2AsE2, context);
}

::std::function<void()>
Test::InitialPrx::throwTest2E2AsE2Async(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest2E2AsE2, context);
}

void
Test::InitialPrx::_iceI_throwTest2E2AsE2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest2E2AsE2";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test2::E2&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::Test3::C1Ptr
Test::InitialPrx::getTest3C2AsC1(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test3::C1Ptr>(true, this, &InitialPrx::_iceI_getTest3C2AsC1, context).get();
}

::std::future<::Test3::C1Ptr>
Test::InitialPrx::getTest3C2AsC1Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test3::C1Ptr>(false, this, &InitialPrx::_iceI_getTest3C2AsC1, context);
}

::std::function<void()>
Test::InitialPrx::getTest3C2AsC1Async(::std::function<void(::Test3::C1Ptr)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Test3::C1Ptr>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_getTest3C2AsC1, context);
}

void
Test::InitialPrx::_iceI_getTest3C2AsC1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test3::C1Ptr>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getTest3C2AsC1";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::Test3::C1Ptr ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

::Test3::C2Ptr
Test::InitialPrx::getTest3C2AsC2(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test3::C2Ptr>(true, this, &InitialPrx::_iceI_getTest3C2AsC2, context).get();
}

::std::future<::Test3::C2Ptr>
Test::InitialPrx::getTest3C2AsC2Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::Test3::C2Ptr>(false, this, &InitialPrx::_iceI_getTest3C2AsC2, context);
}

::std::function<void()>
Test::InitialPrx::getTest3C2AsC2Async(::std::function<void(::Test3::C2Ptr)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::Test3::C2Ptr>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_getTest3C2AsC2, context);
}

void
Test::InitialPrx::_iceI_getTest3C2AsC2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Test3::C2Ptr>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getTest3C2AsC2";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](::Ice::InputStream* istr)
        {
            ::Test3::C2Ptr ret;
            istr->readAll(ret);
            istr->readPendingValues();
            return ret;
        });
}

void
Test::InitialPrx::throwTest3E2AsE1(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest3E2AsE1, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest3E2AsE1Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest3E2AsE1, context);
}

::std::function<void()>
Test::InitialPrx::throwTest3E2AsE1Async(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest3E2AsE1, context);
}

void
Test::InitialPrx::_iceI_throwTest3E2AsE1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest3E2AsE1";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test3::E1&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::InitialPrx::throwTest3E2AsE2(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_throwTest3E2AsE2, context).get();
}

::std::future<void>
Test::InitialPrx::throwTest3E2AsE2Async(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_throwTest3E2AsE2, context);
}

::std::function<void()>
Test::InitialPrx::throwTest3E2AsE2Async(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_throwTest3E2AsE2, context);
}

void
Test::InitialPrx::_iceI_throwTest3E2AsE2(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "throwTest3E2AsE2";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const ::Test3::E2&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::InitialPrx::shutdown(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &InitialPrx::_iceI_shutdown, context).get();
}

::std::future<void>
Test::InitialPrx::shutdownAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &InitialPrx::_iceI_shutdown, context);
}

::std::function<void()>
Test::InitialPrx::shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::InitialPrx::_iceI_shutdown, context);
}

void
Test::InitialPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::InitialPrx::ice_staticId() noexcept
{
    return "::Test::Initial";
}

::std::vector<::std::string>
Test::Initial::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::Initial"};
    return allTypeIds;
}

::std::string
Test::Initial::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::Initial::ice_staticId() noexcept
{
    return "::Test::Initial";
}

/// \cond INTERNAL
void
Test::Initial::_iceD_getTest1C2AsC1(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Test1::C1Ptr ret = this->getTest1C2AsC1(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_getTest1C2AsC2(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Test1::C2Ptr ret = this->getTest1C2AsC2(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest1E2AsE1(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest1E2AsE1(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest1E2AsE2(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest1E2AsE2(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest1Def(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest1Def(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_getTest2C2AsC1(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Test2::C1Ptr ret = this->getTest2C2AsC1(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_getTest2C2AsC2(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Test2::C2Ptr ret = this->getTest2C2AsC2(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest2E2AsE1(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest2E2AsE1(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest2E2AsE2(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest2E2AsE2(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_getTest3C2AsC1(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Test3::C1Ptr ret = this->getTest3C2AsC1(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_getTest3C2AsC2(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    ::Test3::C2Ptr ret = this->getTest3C2AsC2(request.current());
    sendResponse(::Ice::makeOutgoingResponse([&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(ret);
            ostr->writePendingValues();
        },
        request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest3E2AsE1(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest3E2AsE1(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_throwTest3E2AsE2(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->throwTest3E2AsE2(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::_iceD_shutdown(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->shutdown(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::Initial::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"getTest1C2AsC1", "getTest1C2AsC2", "getTest2C2AsC1", "getTest2C2AsC2", "getTest3C2AsC1", "getTest3C2AsC2", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown", "throwTest1Def", "throwTest1E2AsE1", "throwTest1E2AsE2", "throwTest2E2AsE1", "throwTest2E2AsE2", "throwTest3E2AsE1", "throwTest3E2AsE2"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 18, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_getTest1C2AsC1(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_getTest1C2AsC2(request, ::std::move(sendResponse));
            break;
        }
        case 2:
        {
            _iceD_getTest2C2AsC1(request, ::std::move(sendResponse));
            break;
        }
        case 3:
        {
            _iceD_getTest2C2AsC2(request, ::std::move(sendResponse));
            break;
        }
        case 4:
        {
            _iceD_getTest3C2AsC1(request, ::std::move(sendResponse));
            break;
        }
        case 5:
        {
            _iceD_getTest3C2AsC2(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_ice_id(request, ::std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_ice_ids(request, ::std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_ice_isA(request, ::std::move(sendResponse));
            break;
        }
        case 9:
        {
            _iceD_ice_ping(request, ::std::move(sendResponse));
            break;
        }
        case 10:
        {
            _iceD_shutdown(request, ::std::move(sendResponse));
            break;
        }
        case 11:
        {
            _iceD_throwTest1Def(request, ::std::move(sendResponse));
            break;
        }
        case 12:
        {
            _iceD_throwTest1E2AsE1(request, ::std::move(sendResponse));
            break;
        }
        case 13:
        {
            _iceD_throwTest1E2AsE2(request, ::std::move(sendResponse));
            break;
        }
        case 14:
        {
            _iceD_throwTest2E2AsE1(request, ::std::move(sendResponse));
            break;
        }
        case 15:
        {
            _iceD_throwTest2E2AsE2(request, ::std::move(sendResponse));
            break;
        }
        case 16:
        {
            _iceD_throwTest3E2AsE1(request, ::std::move(sendResponse));
            break;
        }
        case 17:
        {
            _iceD_throwTest3E2AsE2(request, ::std::move(sendResponse));
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
