//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#define ICE_BUILDING_GENERATED_CODE
#include <Callback.h>
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

const ::IceInternal::DefaultUserExceptionFactoryInit<::Test::CallbackException> iceC_Test_CallbackException_init("::Test::CallbackException");

}

void
Test::CallbackReceiverPrx::callback(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callback, context).get();
}

::std::future<void>
Test::CallbackReceiverPrx::callbackAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callback, context);
}

::std::function<void()>
Test::CallbackReceiverPrx::callbackAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callback, context);
}

void
Test::CallbackReceiverPrx::_iceI_callback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "callback";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

void
Test::CallbackReceiverPrx::callbackEx(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callbackEx, context).get();
}

::std::future<void>
Test::CallbackReceiverPrx::callbackExAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackReceiverPrx::_iceI_callbackEx, context);
}

::std::function<void()>
Test::CallbackReceiverPrx::callbackExAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callbackEx, context);
}

void
Test::CallbackReceiverPrx::_iceI_callbackEx(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "callbackEx";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const CallbackException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

::std::string_view
Test::CallbackReceiverPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::CallbackReceiver";
    return typeId;
}

void
Test::CallbackPrx::initiateCallback(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallback, iceP_proxy, context).get();
}

::std::future<void>
Test::CallbackPrx::initiateCallbackAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallback, iceP_proxy, context);
}

::std::function<void()>
Test::CallbackPrx::initiateCallbackAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallback, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateCallback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "initiateCallback";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        nullptr);
}

void
Test::CallbackPrx::initiateCallbackEx(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallbackEx, iceP_proxy, context).get();
}

::std::future<void>
Test::CallbackPrx::initiateCallbackExAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_initiateCallbackEx, iceP_proxy, context);
}

::std::function<void()>
Test::CallbackPrx::initiateCallbackExAsync(const ::std::optional<CallbackReceiverPrx>& iceP_proxy, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallbackEx, iceP_proxy, context);
}

void
Test::CallbackPrx::_iceI_initiateCallbackEx(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::std::optional<CallbackReceiverPrx>& iceP_proxy, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "initiateCallbackEx";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxy);
        },
        [](const ::Ice::UserException& ex)
        {
            try
            {
                ex.ice_throw();
            }
            catch(const CallbackException&)
            {
                throw;
            }
            catch(const ::Ice::UserException&)
            {
            }
        });
}

void
Test::CallbackPrx::shutdown(const ::Ice::Context& context) const
{
    ::IceInternal::makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_shutdown, context).get();
}

::std::future<void>
Test::CallbackPrx::shutdownAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<void>(false, this, &CallbackPrx::_iceI_shutdown, context);
}

::std::function<void()>
Test::CallbackPrx::shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_shutdown, context);
}

void
Test::CallbackPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::string_view
Test::CallbackPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::Callback";
    return typeId;
}

Test::CallbackException::~CallbackException()
{
}

::std::string_view
Test::CallbackException::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::CallbackException";
    return typeId;
}

::std::vector<::std::string>
Test::CallbackReceiver::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::CallbackReceiver" };
    return allTypeIds;
}

::std::string
Test::CallbackReceiver::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::CallbackReceiver::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::CallbackReceiver";
    return typeId;
}

/// \cond INTERNAL
bool
Test::CallbackReceiver::_iceD_callback(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->callback(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::CallbackReceiver::_iceD_callbackEx(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    this->callbackEx(incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::CallbackReceiver::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "callback", "callbackEx", "ice_id", "ice_ids", "ice_isA", "ice_ping" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 6, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_callback(incoming);
        }
        case 1:
        {
            return _iceD_callbackEx(incoming);
        }
        case 2:
        {
            return _iceD_ice_id(incoming);
        }
        case 3:
        {
            return _iceD_ice_ids(incoming);
        }
        case 4:
        {
            return _iceD_ice_isA(incoming);
        }
        case 5:
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

::std::vector<::std::string>
Test::Callback::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::Callback" };
    return allTypeIds;
}

::std::string
Test::Callback::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::Callback::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::Callback";
    return typeId;
}

/// \cond INTERNAL
bool
Test::Callback::_iceD_initiateCallback(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    incoming.endReadParams();
    this->initiateCallback(::std::move(iceP_proxy), incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Callback::_iceD_initiateCallbackEx(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::optional<CallbackReceiverPrx> iceP_proxy;
    istr->readAll(iceP_proxy);
    incoming.endReadParams();
    this->initiateCallbackEx(::std::move(iceP_proxy), incoming.current());
    incoming.writeEmptyParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::Callback::_iceD_shutdown(::IceInternal::Incoming& incoming)
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
Test::Callback::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "ice_id", "ice_ids", "ice_isA", "ice_ping", "initiateCallback", "initiateCallbackEx", "shutdown" };

    const ::Ice::Current& current = incoming.current();
    ::std::pair<const ::std::string_view*, const ::std::string_view*> r = ::std::equal_range(allOperations, allOperations + 7, current.operation);
    if(r.first == r.second)
    {
        throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - allOperations)
    {
        case 0:
        {
            return _iceD_ice_id(incoming);
        }
        case 1:
        {
            return _iceD_ice_ids(incoming);
        }
        case 2:
        {
            return _iceD_ice_isA(incoming);
        }
        case 3:
        {
            return _iceD_ice_ping(incoming);
        }
        case 4:
        {
            return _iceD_initiateCallback(incoming);
        }
        case 5:
        {
            return _iceD_initiateCallbackEx(incoming);
        }
        case 6:
        {
            return _iceD_shutdown(incoming);
        }
        default:
        {
            assert(false);
            throw ::Ice::OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond
