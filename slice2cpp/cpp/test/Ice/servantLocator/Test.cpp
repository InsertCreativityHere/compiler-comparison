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
#include <Test.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/Incoming.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{

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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_requestFailedException, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownUserException, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownLocalException, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownException, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_localException, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_userException, context);
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
Test::TestIntfPrx::stdException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_stdException, context).get();
}

::std::future<void>
Test::TestIntfPrx::stdExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_stdException, context);
}

::std::function<void()>
Test::TestIntfPrx::stdExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_stdException, context);
}

void
Test::TestIntfPrx::_iceI_stdException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "stdException";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::TestIntfPrx::cppException(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_cppException, context).get();
}

::std::future<void>
Test::TestIntfPrx::cppExceptionAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_cppException, context);
}

::std::function<void()>
Test::TestIntfPrx::cppExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_cppException, context);
}

void
Test::TestIntfPrx::_iceI_cppException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "cppException";

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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownExceptionWithServantException, context);
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
    return ::IceInternal::makeLambdaOutgoing<::std::string>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_impossibleException, iceP_throw, context);
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
    return ::IceInternal::makeLambdaOutgoing<::std::string>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_intfUserException, iceP_throw, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_asyncResponse, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_asyncException, context);
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_shutdown, context);
}

void
Test::TestIntfPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::string_view
Test::TestIntfPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::TestIntf";
    return typeId;
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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestActivationPrx::_iceI_activateServantLocator, iceP_activate, context);
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

::std::string_view
Test::TestActivationPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::TestActivation";
    return typeId;
}

Test::TestIntfUserException::~TestIntfUserException()
{
}

::std::string_view
Test::TestIntfUserException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::TestIntfUserException";
    return typeId;
}

Test::TestImpossibleException::~TestImpossibleException()
{
}

::std::string_view
Test::TestImpossibleException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::TestImpossibleException";
    return typeId;
}

::std::vector<::std::string>
Test::TestIntf::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::TestIntf" };
    return allTypeIds;
}

::std::string
Test::TestIntf::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::TestIntf::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::TestIntf";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_requestFailedException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->requestFailedException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownUserException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->unknownUserException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownLocalException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->unknownLocalException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->unknownException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_localException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->localException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_userException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->userException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_stdException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->stdException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_cppException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->cppException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_unknownExceptionWithServantException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->unknownExceptionWithServantException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_impossibleException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    bool iceP_throw;
    istr->readAll(iceP_throw);
    incoming.endReadParams();
    ::std::string ret = this->impossibleException(iceP_throw, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_intfUserException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    bool iceP_throw;
    istr->readAll(iceP_throw);
    incoming.endReadParams();
    ::std::string ret = this->intfUserException(iceP_throw, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_asyncResponse(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->asyncResponse(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_asyncException(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->asyncException(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceD_shutdown(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->shutdown(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestIntf::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "asyncException", "asyncResponse", "cppException", "ice_id", "ice_ids", "ice_isA", "ice_ping", "impossibleException", "intfUserException", "localException", "requestFailedException", "shutdown", "stdException", "unknownException", "unknownExceptionWithServantException", "unknownLocalException", "unknownUserException", "userException" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 18, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_asyncException(incoming);
        }
        case 1:
        {
            return _iceD_asyncResponse(incoming);
        }
        case 2:
        {
            return _iceD_cppException(incoming);
        }
        case 3:
        {
            return _iceD_ice_id(incoming);
        }
        case 4:
        {
            return _iceD_ice_ids(incoming);
        }
        case 5:
        {
            return _iceD_ice_isA(incoming);
        }
        case 6:
        {
            return _iceD_ice_ping(incoming);
        }
        case 7:
        {
            return _iceD_impossibleException(incoming);
        }
        case 8:
        {
            return _iceD_intfUserException(incoming);
        }
        case 9:
        {
            return _iceD_localException(incoming);
        }
        case 10:
        {
            return _iceD_requestFailedException(incoming);
        }
        case 11:
        {
            return _iceD_shutdown(incoming);
        }
        case 12:
        {
            return _iceD_stdException(incoming);
        }
        case 13:
        {
            return _iceD_unknownException(incoming);
        }
        case 14:
        {
            return _iceD_unknownExceptionWithServantException(incoming);
        }
        case 15:
        {
            return _iceD_unknownLocalException(incoming);
        }
        case 16:
        {
            return _iceD_unknownUserException(incoming);
        }
        case 17:
        {
            return _iceD_userException(incoming);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

::std::vector<::std::string>
Test::TestActivation::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::TestActivation" };
    return allTypeIds;
}

::std::string
Test::TestActivation::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::TestActivation::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::TestActivation";
    return typeId;
}

/// \cond INTERNAL
bool
Test::TestActivation::_iceD_activateServantLocator(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    bool iceP_activate;
    istr->readAll(iceP_activate);
    incoming.endReadParams();
    this->activateServantLocator(iceP_activate, incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::TestActivation::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "activateServantLocator", "ice_id", "ice_ids", "ice_isA", "ice_ping" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 5, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_activateServantLocator(incoming);
        }
        case 1:
        {
            return _iceD_ice_id(incoming);
        }
        case 2:
        {
            return _iceD_ice_ids(incoming);
        }
        case 3:
        {
            return _iceD_ice_isA(incoming);
        }
        case 4:
        {
            return _iceD_ice_ping(incoming);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
