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
    return ::IceInternal::makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_shutdown, context);
}

void
Test::MyClassPrx::_iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "shutdown";

    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::Test::Context
Test::MyClassPrx::getContext(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<Context>(true, this, &MyClassPrx::_iceI_getContext, context).get();
}

::std::future<::Test::Context>
Test::MyClassPrx::getContextAsync(const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<Context>(false, this, &MyClassPrx::_iceI_getContext, context);
}

::std::function<void()>
Test::MyClassPrx::getContextAsync(::std::function<void(::Test::Context)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<Context>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getContext, context);
}

void
Test::MyClassPrx::_iceI_getContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Context>>& outAsync, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "getContext";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}

::std::string_view
Test::MyClassPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyClass";
    return typeId;
}

::std::optional<::Ice::ObjectPrx>
Test::MyDerivedClassPrx::echo(const ::std::optional<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(true, this, &MyDerivedClassPrx::_iceI_echo, iceP_obj, context).get();
}

::std::future<::std::optional<::Ice::ObjectPrx>>
Test::MyDerivedClassPrx::echoAsync(const ::std::optional<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context) const
{
    return ::IceInternal::makePromiseOutgoing<::std::optional<::Ice::ObjectPrx>>(false, this, &MyDerivedClassPrx::_iceI_echo, iceP_obj, context);
}

::std::function<void()>
Test::MyDerivedClassPrx::echoAsync(const ::std::optional<::Ice::ObjectPrx>& iceP_obj, ::std::function<void(::std::optional<::Ice::ObjectPrx>)> response, ::std::function<void(::std::exception_ptr)> ex, ::std::function<void(bool)> sent, const ::Ice::Context& context) const
{
    return ::IceInternal::makeLambdaOutgoing<::std::optional<::Ice::ObjectPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyDerivedClassPrx::_iceI_echo, iceP_obj, context);
}

void
Test::MyDerivedClassPrx::_iceI_echo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<::Ice::ObjectPrx>>>& outAsync, const ::std::optional<::Ice::ObjectPrx>& iceP_obj, const ::Ice::Context& context) const
{
    static constexpr ::std::string_view operationName = "echo";

    _checkTwowayOnly(operationName);
    outAsync->invoke(operationName, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        [&](::Ice::OutputStream* ostr)
        {
            ostr->writeAll(iceP_obj);
        },
        nullptr);
}

::std::string_view
Test::MyDerivedClassPrx::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyDerivedClass";
    return typeId;
}

::std::vector<::std::string>
Test::MyClass::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::MyClass" };
    return allTypeIds;
}

::std::string
Test::MyClass::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::MyClass::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test::MyClass::_iceD_shutdown(::IceInternal::Incoming& incoming)
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
Test::MyClass::_iceD_getContext(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    incoming.readEmptyParams();
    Context ret = this->getContext(incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyClass::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "getContext", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown" };

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
            return _iceD_getContext(incoming);
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
        case 5:
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

::std::vector<::std::string>
Test::MyDerivedClass::ice_ids(const ::Ice::Current&) const
{
    static const ::std::vector<::std::string> allTypeIds = { "::Ice::Object", "::Test::MyClass", "::Test::MyDerivedClass" };
    return allTypeIds;
}

::std::string
Test::MyDerivedClass::ice_id(const ::Ice::Current&) const
{
    return ::std::string{ice_staticId()};
}

::std::string_view
Test::MyDerivedClass::ice_staticId()
{
    static constexpr ::std::string_view typeId = "::Test::MyDerivedClass";
    return typeId;
}

/// \cond INTERNAL
bool
Test::MyDerivedClass::_iceD_echo(::IceInternal::Incoming& incoming)
{
    _iceCheckMode(::Ice::OperationMode::Normal, incoming.current().mode);
    auto istr = incoming.startReadParams();
    ::std::optional<::Ice::ObjectPrx> iceP_obj;
    istr->readAll(iceP_obj);
    incoming.endReadParams();
    ::std::optional<::Ice::ObjectPrx> ret = this->echo(::std::move(iceP_obj), incoming.current());
    auto ostr = incoming.startWriteParams();
    ostr->writeAll(ret);
    incoming.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Test::MyDerivedClass::_iceDispatch(::IceInternal::Incoming& incoming)
{
    static constexpr ::std::string_view allOperations[] = { "echo", "getContext", "ice_id", "ice_ids", "ice_isA", "ice_ping", "shutdown" };

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
            return _iceD_echo(incoming);
        }
        case 1:
        {
            return _iceD_getContext(incoming);
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
