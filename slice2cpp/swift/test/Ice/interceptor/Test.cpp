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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::InvalidInputException> iceC_Test_InvalidInputException_init("::Test::InvalidInputException");

}

::std::int32_t
Test::MyObjectPrx::add(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_add, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::addAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_add, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::addAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_add, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_add(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "add";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        nullptr);
}

::std::int32_t
Test::MyObjectPrx::addWithRetry(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_addWithRetry, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::addWithRetryAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_addWithRetry, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::addWithRetryAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_addWithRetry, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_addWithRetry(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "addWithRetry";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        nullptr);
}

::std::int32_t
Test::MyObjectPrx::badAdd(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_badAdd, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::badAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_badAdd, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::badAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_badAdd, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_badAdd(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "badAdd";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const InvalidInputException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::int32_t
Test::MyObjectPrx::notExistAdd(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_notExistAdd, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::notExistAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_notExistAdd, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::notExistAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_notExistAdd, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_notExistAdd(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "notExistAdd";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        nullptr);
}

::std::int32_t
Test::MyObjectPrx::amdAdd(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_amdAdd, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::amdAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_amdAdd, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::amdAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_amdAdd, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_amdAdd(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "amdAdd";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        nullptr);
}

::std::int32_t
Test::MyObjectPrx::amdAddWithRetry(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_amdAddWithRetry, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::amdAddWithRetryAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_amdAddWithRetry, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::amdAddWithRetryAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_amdAddWithRetry, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_amdAddWithRetry(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "amdAddWithRetry";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        nullptr);
}

::std::int32_t
Test::MyObjectPrx::amdBadAdd(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_amdBadAdd, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::amdBadAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_amdBadAdd, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::amdBadAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_amdBadAdd, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_amdBadAdd(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "amdBadAdd";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const InvalidInputException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::int32_t
Test::MyObjectPrx::amdNotExistAdd(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(true, this, &MyObjectPrx::_iceI_amdNotExistAdd, iceP_x, iceP_y, context).get();
}

::std::future<::std::int32_t>
Test::MyObjectPrx::amdNotExistAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::int32_t>(false, this, &MyObjectPrx::_iceI_amdNotExistAdd, iceP_x, iceP_y, context);
}

::std::function<void()>
Test::MyObjectPrx::amdNotExistAddAsync(::std::int32_t iceP_x, ::std::int32_t iceP_y, ::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::int32_t>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_amdNotExistAdd, iceP_x, iceP_y, context);
}

void
Test::MyObjectPrx::_iceI_amdNotExistAdd(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>& outAsync, ::std::int32_t iceP_x, ::std::int32_t iceP_y, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "amdNotExistAdd";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_x, iceP_y);
        },
        nullptr);
}

::std::string_view
Test::MyObjectPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyObject";
    return typeId;
}

Test::InvalidInputException::~InvalidInputException()
{
}

::std::string_view
Test::InvalidInputException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::InvalidInputException";
    return typeId;
}

::std::vector<::std::string>
Test::MyObject::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::MyObject" };
    return allTypeIds;
}

::std::string
Test::MyObject::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::MyObject::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyObject";
    return typeId;
}

/// \cond INTERNAL
bool
Test::MyObject::_iceD_add(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    ::std::int32_t ret = this->add(iceP_x, iceP_y, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_addWithRetry(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    ::std::int32_t ret = this->addWithRetry(iceP_x, iceP_y, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_badAdd(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    ::std::int32_t ret = this->badAdd(iceP_x, iceP_y, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_notExistAdd(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    ::std::int32_t ret = this->notExistAdd(iceP_x, iceP_y, incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_amdAdd(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](::std::int32_t ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->amdAddAsync(iceP_x, iceP_y, responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_amdAddWithRetry(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](::std::int32_t ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->amdAddWithRetryAsync(iceP_x, iceP_y, responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_amdBadAdd(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](::std::int32_t ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->amdBadAddAsync(iceP_x, iceP_y, responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceD_amdNotExistAdd(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::int32_t iceP_x;
    ::std::int32_t iceP_y;
    istr->readAll(iceP_x, iceP_y);
    incoming.endReadParams();
    auto incomingPtr = ::std::make_shared<::IceInternal::Incoming>(::std::move(incoming));
    auto responseCB = [incomingPtr](::std::int32_t ret)
    {
        auto ostr = incomingPtr->startWriteParams();
        ostr->writeAll(ret);
        incomingPtr->endWriteParams();
        incomingPtr->completed();
    };
    try
    {
        this->amdNotExistAddAsync(iceP_x, iceP_y, responseCB, [incomingPtr](std::exception_ptr ex) { incomingPtr->completed(ex); }, incomingPtr->current());
    }
    catch (...)
    {
        incomingPtr->failed(::std::current_exception());
    }
    return false;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyObject::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "add", "addWithRetry", "amdAdd", "amdAddWithRetry", "amdBadAdd", "amdNotExistAdd", "badAdd", "ice_id", "ice_ids", "ice_isA", "ice_ping", "notExistAdd" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 12, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_add(incoming);
        }
        case 1:
        {
            return _iceD_addWithRetry(incoming);
        }
        case 2:
        {
            return _iceD_amdAdd(incoming);
        }
        case 3:
        {
            return _iceD_amdAddWithRetry(incoming);
        }
        case 4:
        {
            return _iceD_amdBadAdd(incoming);
        }
        case 5:
        {
            return _iceD_amdNotExistAdd(incoming);
        }
        case 6:
        {
            return _iceD_badAdd(incoming);
        }
        case 7:
        {
            return _iceD_ice_id(incoming);
        }
        case 8:
        {
            return _iceD_ice_ids(incoming);
        }
        case 9:
        {
            return _iceD_ice_isA(incoming);
        }
        case 10:
        {
            return _iceD_ice_ping(incoming);
        }
        case 11:
        {
            return _iceD_notExistAdd(incoming);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
