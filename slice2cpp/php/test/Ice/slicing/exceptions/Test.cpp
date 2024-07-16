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
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::Base> iceC_Test_Base_init("::Test::Base");
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::KnownDerived> iceC_Test_KnownDerived_init("::Test::KnownDerived");
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::KnownIntermediate> iceC_Test_KnownIntermediate_init("::Test::KnownIntermediate");
    const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::KnownMostDerived> iceC_Test_KnownMostDerived_init("::Test::KnownMostDerived");
}

void
Test::TestIntfPrx::baseAsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_baseAsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::baseAsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_baseAsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::baseAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_baseAsBase, context);
}

void
Test::TestIntfPrx::_iceI_baseAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "baseAsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::unknownDerivedAsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownDerivedAsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownDerivedAsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownDerivedAsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownDerivedAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownDerivedAsBase, context);
}

void
Test::TestIntfPrx::_iceI_unknownDerivedAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownDerivedAsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::CompactFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownDerivedAsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownDerivedAsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownDerivedAsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownDerivedAsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::knownDerivedAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownDerivedAsBase, context);
}

void
Test::TestIntfPrx::_iceI_knownDerivedAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownDerivedAsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownDerivedAsKnownDerived(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownDerivedAsKnownDerived, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownDerivedAsKnownDerivedAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownDerivedAsKnownDerived, context);
}

::std::function<void()>
Test::TestIntfPrx::knownDerivedAsKnownDerivedAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownDerivedAsKnownDerived, context);
}

void
Test::TestIntfPrx::_iceI_knownDerivedAsKnownDerived(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownDerivedAsKnownDerived";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const KnownDerived&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::unknownIntermediateAsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownIntermediateAsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownIntermediateAsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownIntermediateAsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownIntermediateAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownIntermediateAsBase, context);
}

void
Test::TestIntfPrx::_iceI_unknownIntermediateAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownIntermediateAsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownIntermediateAsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownIntermediateAsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownIntermediateAsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownIntermediateAsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::knownIntermediateAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownIntermediateAsBase, context);
}

void
Test::TestIntfPrx::_iceI_knownIntermediateAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownIntermediateAsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownMostDerivedAsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownMostDerivedAsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownMostDerivedAsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownMostDerivedAsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::knownMostDerivedAsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownMostDerivedAsBase, context);
}

void
Test::TestIntfPrx::_iceI_knownMostDerivedAsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownMostDerivedAsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownIntermediateAsKnownIntermediate(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownIntermediateAsKnownIntermediate, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownIntermediateAsKnownIntermediateAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownIntermediateAsKnownIntermediate, context);
}

::std::function<void()>
Test::TestIntfPrx::knownIntermediateAsKnownIntermediateAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownIntermediateAsKnownIntermediate, context);
}

void
Test::TestIntfPrx::_iceI_knownIntermediateAsKnownIntermediate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownIntermediateAsKnownIntermediate";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const KnownIntermediate&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownMostDerivedAsKnownIntermediate(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownMostDerivedAsKnownIntermediate, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownMostDerivedAsKnownIntermediateAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownMostDerivedAsKnownIntermediate, context);
}

::std::function<void()>
Test::TestIntfPrx::knownMostDerivedAsKnownIntermediateAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownMostDerivedAsKnownIntermediate, context);
}

void
Test::TestIntfPrx::_iceI_knownMostDerivedAsKnownIntermediate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownMostDerivedAsKnownIntermediate";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const KnownIntermediate&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::knownMostDerivedAsKnownMostDerived(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_knownMostDerivedAsKnownMostDerived, context).get();
}

::std::future<void>
Test::TestIntfPrx::knownMostDerivedAsKnownMostDerivedAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_knownMostDerivedAsKnownMostDerived, context);
}

::std::function<void()>
Test::TestIntfPrx::knownMostDerivedAsKnownMostDerivedAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_knownMostDerivedAsKnownMostDerived, context);
}

void
Test::TestIntfPrx::_iceI_knownMostDerivedAsKnownMostDerived(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "knownMostDerivedAsKnownMostDerived";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const KnownMostDerived&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::unknownMostDerived1AsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownMostDerived1AsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownMostDerived1AsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownMostDerived1AsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownMostDerived1AsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownMostDerived1AsBase, context);
}

void
Test::TestIntfPrx::_iceI_unknownMostDerived1AsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownMostDerived1AsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::unknownMostDerived1AsKnownIntermediate(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownMostDerived1AsKnownIntermediate, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownMostDerived1AsKnownIntermediateAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownMostDerived1AsKnownIntermediate, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownMostDerived1AsKnownIntermediateAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownMostDerived1AsKnownIntermediate, context);
}

void
Test::TestIntfPrx::_iceI_unknownMostDerived1AsKnownIntermediate(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownMostDerived1AsKnownIntermediate";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const KnownIntermediate&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::TestIntfPrx::unknownMostDerived2AsBase(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_unknownMostDerived2AsBase, context).get();
}

::std::future<void>
Test::TestIntfPrx::unknownMostDerived2AsBaseAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &TestIntfPrx::_iceI_unknownMostDerived2AsBase, context);
}

::std::function<void()>
Test::TestIntfPrx::unknownMostDerived2AsBaseAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(::std::move(response), ::std::move(ex), ::std::move(sent), this, &Test::TestIntfPrx::_iceI_unknownMostDerived2AsBase, context);
}

void
Test::TestIntfPrx::_iceI_unknownMostDerived2AsBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "unknownMostDerived2AsBase";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const Base&)
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

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::SlicedFormat, context,
        nullptr,
        nullptr);
}

const char*
Test::TestIntfPrx::ice_staticId() noexcept
{
    return "::Test::TestIntf";
}

const char*
Test::Base::ice_staticId() noexcept
{
    return "::Test::Base";
}

const char*
Test::Base::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::Base::ice_throw() const
{
    throw *this;
}

void
Test::Base::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ::Ice::StreamWriter<Base>::write(ostr, *this);
    ostr->endSlice();
}

void
Test::Base::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<Base>::read(istr, *this);
    istr->endSlice();
}

const char*
Test::KnownDerived::ice_staticId() noexcept
{
    return "::Test::KnownDerived";
}

const char*
Test::KnownDerived::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::KnownDerived::ice_throw() const
{
    throw *this;
}

void
Test::KnownDerived::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter<KnownDerived>::write(ostr, *this);
    ostr->endSlice();
    Base::_writeImpl(ostr);
}

void
Test::KnownDerived::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<KnownDerived>::read(istr, *this);
    istr->endSlice();
    Base::_readImpl(istr);
}

const char*
Test::KnownIntermediate::ice_staticId() noexcept
{
    return "::Test::KnownIntermediate";
}

const char*
Test::KnownIntermediate::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::KnownIntermediate::ice_throw() const
{
    throw *this;
}

void
Test::KnownIntermediate::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter<KnownIntermediate>::write(ostr, *this);
    ostr->endSlice();
    Base::_writeImpl(ostr);
}

void
Test::KnownIntermediate::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<KnownIntermediate>::read(istr, *this);
    istr->endSlice();
    Base::_readImpl(istr);
}

const char*
Test::KnownMostDerived::ice_staticId() noexcept
{
    return "::Test::KnownMostDerived";
}

const char*
Test::KnownMostDerived::ice_id() const noexcept
{
    return ice_staticId();
}

void
Test::KnownMostDerived::ice_throw() const
{
    throw *this;
}

void
Test::KnownMostDerived::_writeImpl(::Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, false);
    ::Ice::StreamWriter<KnownMostDerived>::write(ostr, *this);
    ostr->endSlice();
    KnownIntermediate::_writeImpl(ostr);
}

void
Test::KnownMostDerived::_readImpl(::Ice::InputStream* istr)
{
    istr->startSlice();
    ::Ice::StreamReader<KnownMostDerived>::read(istr, *this);
    istr->endSlice();
    KnownIntermediate::_readImpl(istr);
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
Test::TestIntf::_iceD_baseAsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->baseAsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownDerivedAsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->unknownDerivedAsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownDerivedAsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownDerivedAsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownDerivedAsKnownDerived(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownDerivedAsKnownDerived(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownIntermediateAsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->unknownIntermediateAsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownIntermediateAsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownIntermediateAsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownMostDerivedAsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownMostDerivedAsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownIntermediateAsKnownIntermediate(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownIntermediateAsKnownIntermediate(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownMostDerivedAsKnownIntermediate(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownMostDerivedAsKnownIntermediate(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_knownMostDerivedAsKnownMostDerived(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->knownMostDerivedAsKnownMostDerived(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownMostDerived1AsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->unknownMostDerived1AsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownMostDerived1AsKnownIntermediate(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->unknownMostDerived1AsKnownIntermediate(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_unknownMostDerived2AsBase(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->unknownMostDerived2AsBase(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::_iceD_shutdown(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    _iceCheckMode(::Ice::OperationMode::Normal, request.current().mode);
    request.inputStream().skipEmptyEncapsulation();
    this->shutdown(request.current());
    sendResponse(::Ice::makeEmptyOutgoingResponse(request.current()));
}
/// \endcond

/// \cond INTERNAL
void
Test::TestIntf::dispatch(::Ice::IncomingRequest& request, ::std::function<void(::Ice::OutgoingResponse)> sendResponse)
{
    static constexpr ::std::string_view allOperations[] = {"baseAsBase", "ice_id", "ice_ids", "ice_isA", "ice_ping", "knownDerivedAsBase", "knownDerivedAsKnownDerived", "knownIntermediateAsBase", "knownIntermediateAsKnownIntermediate", "knownMostDerivedAsBase", "knownMostDerivedAsKnownIntermediate", "knownMostDerivedAsKnownMostDerived", "shutdown", "unknownDerivedAsBase", "unknownIntermediateAsBase", "unknownMostDerived1AsBase", "unknownMostDerived1AsKnownIntermediate", "unknownMostDerived2AsBase"};

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
            _iceD_baseAsBase(request, ::std::move(sendResponse));
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
            _iceD_knownDerivedAsBase(request, ::std::move(sendResponse));
            break;
        }
        case 6:
        {
            _iceD_knownDerivedAsKnownDerived(request, ::std::move(sendResponse));
            break;
        }
        case 7:
        {
            _iceD_knownIntermediateAsBase(request, ::std::move(sendResponse));
            break;
        }
        case 8:
        {
            _iceD_knownIntermediateAsKnownIntermediate(request, ::std::move(sendResponse));
            break;
        }
        case 9:
        {
            _iceD_knownMostDerivedAsBase(request, ::std::move(sendResponse));
            break;
        }
        case 10:
        {
            _iceD_knownMostDerivedAsKnownIntermediate(request, ::std::move(sendResponse));
            break;
        }
        case 11:
        {
            _iceD_knownMostDerivedAsKnownMostDerived(request, ::std::move(sendResponse));
            break;
        }
        case 12:
        {
            _iceD_shutdown(request, ::std::move(sendResponse));
            break;
        }
        case 13:
        {
            _iceD_unknownDerivedAsBase(request, ::std::move(sendResponse));
            break;
        }
        case 14:
        {
            _iceD_unknownIntermediateAsBase(request, ::std::move(sendResponse));
            break;
        }
        case 15:
        {
            _iceD_unknownMostDerived1AsBase(request, ::std::move(sendResponse));
            break;
        }
        case 16:
        {
            _iceD_unknownMostDerived1AsKnownIntermediate(request, ::std::move(sendResponse));
            break;
        }
        case 17:
        {
            _iceD_unknownMostDerived2AsBase(request, ::std::move(sendResponse));
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
