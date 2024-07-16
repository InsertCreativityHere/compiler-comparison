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

namespace
{
    const ::IceInternal::FactoryTableInit iceC_factoryTableInit;
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::TestIntfUserException> iceC_Test_TestIntfUserException_init("::Test::TestIntfUserException");
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::TestImpossibleException> iceC_Test_TestImpossibleException_init("::Test::TestImpossibleException");
}

void
Test::TestIntfPrx::requestFailedException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_requestFailedException, context).get();
}

::std::future<void>
Test::TestIntfPrx::requestFailedExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_requestFailedException, context);
}

::std::function<void()>
Test::TestIntfPrx::requestFailedExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_requestFailedException, context);
}

void
Test::TestIntfPrx::_iceI_requestFailedException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "requestFailedException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::unknownUserException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownUserException, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownUserExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownUserException, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownUserExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownUserException, context);
}

void
Test::TestIntfPrx::_iceI_unknownUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownUserException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::unknownLocalException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownLocalException, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownLocalExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownLocalException, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownLocalExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownLocalException, context);
}

void
Test::TestIntfPrx::_iceI_unknownLocalException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownLocalException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::unknownException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownException, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownException, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownException, context);
}

void
Test::TestIntfPrx::_iceI_unknownException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::localException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_localException, context).get();
}

::std::future<void>
Test::TestIntfPrx::localExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_localException, context);
}

::std::function<void()>
Test::TestIntfPrx::localExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_localException, context);
}

void
Test::TestIntfPrx::_iceI_localException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "localException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::userException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_userException, context).get();
}

::std::future<void>
Test::TestIntfPrx::userExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_userException, context);
}

::std::function<void()>
Test::TestIntfPrx::userExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_userException, context);
}

void
Test::TestIntfPrx::_iceI_userException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "userException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::unknownExceptionWithServantException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownExceptionWithServantException, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownExceptionWithServantExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownExceptionWithServantException, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownExceptionWithServantExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownExceptionWithServantException, context);
}

void
Test::TestIntfPrx::_iceI_unknownExceptionWithServantException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownExceptionWithServantException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::string
Test::TestIntfPrx::impossibleException(bool iceP_throw, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(true, this, &TestIntfPrx::_iceI_impossibleException, iceP_throw, context).get();
}

::std::future<::std::string>
Test::TestIntfPrx::impossibleExceptionAsync(bool iceP_throw, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(false, this, &TestIntfPrx::_iceI_impossibleException, iceP_throw, context);
}

::std::function<void()>
Test::TestIntfPrx::impossibleExceptionAsync(bool iceP_throw, ::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::string>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_impossibleException, iceP_throw, context);
}

void
Test::TestIntfPrx::_iceI_impossibleException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, bool iceP_throw, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "impossibleException";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_throw);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestImpossibleException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::string
Test::TestIntfPrx::intfUserException(bool iceP_throw, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(true, this, &TestIntfPrx::_iceI_intfUserException, iceP_throw, context).get();
}

::std::future<::std::string>
Test::TestIntfPrx::intfUserExceptionAsync(bool iceP_throw, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::string>(false, this, &TestIntfPrx::_iceI_intfUserException, iceP_throw, context);
}

::std::function<void()>
Test::TestIntfPrx::intfUserExceptionAsync(bool iceP_throw, ::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::string>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_intfUserException, iceP_throw, context);
}

void
Test::TestIntfPrx::_iceI_intfUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>& outAsync, bool iceP_throw, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "intfUserException";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_throw);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfUserException&)
            {
                throw;
            }
            catch(const TestImpossibleException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::asyncResponse(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_asyncResponse, context).get();
}

::std::future<void>
Test::TestIntfPrx::asyncResponseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_asyncResponse, context);
}

::std::function<void()>
Test::TestIntfPrx::asyncResponseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_asyncResponse, context);
}

void
Test::TestIntfPrx::_iceI_asyncResponse(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "asyncResponse";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfUserException&)
            {
                throw;
            }
            catch(const TestImpossibleException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::asyncException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_asyncException, context).get();
}

::std::future<void>
Test::TestIntfPrx::asyncExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_asyncException, context);
}

::std::function<void()>
Test::TestIntfPrx::asyncExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_asyncException, context);
}

void
Test::TestIntfPrx::_iceI_asyncException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "asyncException";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const TestIntfUserException&)
            {
                throw;
            }
            catch(const TestImpossibleException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::shutdown(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_shutdown, context).get();
}

::std::future<void>
Test::TestIntfPrx::shutdownAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_shutdown, context);
}

::std::function<void()>
Test::TestIntfPrx::shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_shutdown, context);
}

void
Test::TestIntfPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::TestIntfPrx::ice_staticId() noexcept
{
    return "::Test::TestIntf";
}

void
Test::TestActivationPrx::activateServantLocator(bool iceP_activate, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestActivationPrx::_iceI_activateServantLocator, iceP_activate, context).get();
}

::std::future<void>
Test::TestActivationPrx::activateServantLocatorAsync(bool iceP_activate, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestActivationPrx::_iceI_activateServantLocator, iceP_activate, context);
}

::std::function<void()>
Test::TestActivationPrx::activateServantLocatorAsync(bool iceP_activate, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestActivationPrx::_iceI_activateServantLocator, iceP_activate, context);
}

void
Test::TestActivationPrx::_iceI_activateServantLocator(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, bool iceP_activate, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "activateServantLocator";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_activate);
        },
        nullptr);
}

const char*
Test::TestActivationPrx::ice_staticId() noexcept
{
    return "::Test::TestActivation";
}

const char*
Test::TestIntfUserException::ice_staticId() noexcept
{
    return "::Test::TestIntfUserException";
}

const char*
Test::TestIntfUserException::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::TestIntfUserException::ice_throw() const
{
    throw *this;
}

void
Test::TestIntfUserException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->endSlice();
}

void
Test::TestIntfUserException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    istr->endSlice();
}

const char*
Test::TestImpossibleException::ice_staticId() noexcept
{
    return "::Test::TestImpossibleException";
}

const char*
Test::TestImpossibleException::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::TestImpossibleException::ice_throw() const
{
    throw *this;
}

void
Test::TestImpossibleException::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->endSlice();
}

void
Test::TestImpossibleException::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    istr->endSlice();
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
Test::TestIntf::_iceD_requestFailedException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->requestFailedExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownUserException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->unknownUserExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownLocalException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->unknownLocalExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->unknownExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_localException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->localExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_userException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->userExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownExceptionWithServantException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->unknownExceptionWithServantExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_impossibleException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    bool iceP_throw;
    istr->readAll(iceP_throw);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](::std::string_view ret)
    {
        responseHandler->sendResponse(
            [&](::Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->impossibleExceptionAsync(iceP_throw, ::std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_intfUserException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    bool iceP_throw;
    istr->readAll(iceP_throw);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    auto responseCb = [responseHandler](::std::string_view ret)
    {
        responseHandler->sendResponse(
            [&](::Ice::OutputStream* ostr)
            {
                ostr->writeAll(ret);
            });
    };
    try
    {
        this->intfUserExceptionAsync(iceP_throw, ::std::move(responseCb), [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_asyncResponse(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->asyncResponseAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_asyncException(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->asyncExceptionAsync([responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_shutdown(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
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
Test::TestIntf::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"asyncException", "asyncResponse", "ice_id", "ice_ids", "ice_isA", "ice_ping", "impossibleException", "intfUserException", "localException", "requestFailedException", "shutdown", "unknownException", "unknownExceptionWithServantException", "unknownLocalException", "unknownUserException", "userException"};

    const ::Ice::Current& current = request.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 16, current.operation);
    if(r.first == r.second)
    {
        sendResponse(::Ice::makeOutgoingResponse(::std::make_exception_ptr(::Ice::OperationNotExistException(__FILE__, __LINE__)), current));
        return;
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            _iceD_asyncException(request, ::std::move(sendResponse));
            break;
        }
        case 1:
        {
            _iceD_asyncResponse(request, ::std::move(sendResponse));
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
            _iceD_impossibleException(request, ::std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_intfUserException(request, ::std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_localException(request, ::std::move(sendResponse));
            break;
        }
        case 9:
        {
            _iceD_requestFailedException(request, ::std::move(sendResponse));
            break;
        }
        case 10:
        {
            _iceD_shutdown(request, ::std::move(sendResponse));
            break;
        }
        case 11:
        {
            _iceD_unknownException(request, ::std::move(sendResponse));
            break;
        }
        case 12:
        {
            _iceD_unknownExceptionWithServantException(request, ::std::move(sendResponse));
            break;
        }
        case 13:
        {
            _iceD_unknownLocalException(request, ::std::move(sendResponse));
            break;
        }
        case 14:
        {
            _iceD_unknownUserException(request, ::std::move(sendResponse));
            break;
        }
        case 15:
        {
            _iceD_userException(request, ::std::move(sendResponse));
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
Test::TestActivation::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = {"::Ice::Object", "::Test::TestActivation"};
    return allTypeIds;
}

::std::string
Test::TestActivation::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

const char*
Test::TestActivation::ice_staticId() noexcept
{
    return "::Test::TestActivation";
}

/// \cond INTERNAL
void
Test::TestActivation::_iceD_activateServantLocator(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    auto istr = &request.inputStream();
    istr->startEncapsulation();
    bool iceP_activate;
    istr->readAll(iceP_activate);
    istr->endEncapsulation();
    auto responseHandler = ::std::make_shared<::IceInternal::AsyncResponseHandler>(::std::move(sendResponse), request.current());
    try
    {
        this->activateServantLocatorAsync(iceP_activate, [responseHandler] { responseHandler->sendEmptyResponse(); }, [responseHandler](std::exception_ptr ex) { responseHandler->sendException(ex); }, responseHandler->current());
    }
    catch (...)
    {
        responseHandler->sendException(::std::current_exception());
    }
}
/// \endcond

/// \cond INTERNAL
void
Test::TestActivation::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"activateServantLocator", "ice_id", "ice_ids", "ice_isA", "ice_ping"};

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
            _iceD_activateServantLocator(request, ::std::move(sendResponse));
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
