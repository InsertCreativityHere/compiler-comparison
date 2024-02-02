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

#ifndef __Test_h__
#define __Test_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{

class Hello;
class HelloPrx;

}

namespace Test
{

class UE : public ::Ice::UserExceptionHelper<UE, ::Ice::UserException>
{
public:

    virtual ~UE();

    UE(const UE&) = default;

    UE() = default;

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static UE _iceS_UE_init;
/// \endcond

}

namespace Test
{

class Hello : public virtual ::Ice::Object
{
public:

    using ProxyType = HelloPrx;

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(::std::string id, const ::Ice::Current& current) const override;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    virtual void sayHello(int delay, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_sayHello(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int add(int s1, int s2, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_add(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void raiseUE(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_raiseUE(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class HelloPrx : public virtual ::Ice::Proxy<HelloPrx, ::Ice::ObjectPrx>
{
public:

    void sayHello(int delay, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &HelloPrx::_iceI_sayHello, delay, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto sayHelloAsync(int delay, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &HelloPrx::_iceI_sayHello, delay, context);
    }

    ::std::function<void()>
    sayHelloAsync(int delay,
                  ::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::HelloPrx::_iceI_sayHello, delay, context);
    }

    /// \cond INTERNAL
    void _iceI_sayHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, int, const ::Ice::Context&);
    /// \endcond

    int add(int s1, int s2, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &HelloPrx::_iceI_add, s1, s2, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto addAsync(int s1, int s2, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &HelloPrx::_iceI_add, s1, s2, context);
    }

    ::std::function<void()>
    addAsync(int s1, int s2,
             ::std::function<void(int)> response,
             ::std::function<void(::std::exception_ptr)> ex = nullptr,
             ::std::function<void(bool)> sent = nullptr,
             const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::HelloPrx::_iceI_add, s1, s2, context);
    }

    /// \cond INTERNAL
    void _iceI_add(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, int, int, const ::Ice::Context&);
    /// \endcond

    void raiseUE(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &HelloPrx::_iceI_raiseUE, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto raiseUEAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &HelloPrx::_iceI_raiseUE, context);
    }

    ::std::function<void()>
    raiseUEAsync(::std::function<void()> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::HelloPrx::_iceI_raiseUE, context);
    }

    /// \cond INTERNAL
    void _iceI_raiseUE(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &HelloPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &HelloPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::HelloPrx::_iceI_shutdown, context);
    }

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    HelloPrx() = default;
    friend ::std::shared_ptr<HelloPrx> IceInternal::createProxy<HelloPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using HelloPtr = ::std::shared_ptr<Hello>;
using HelloPrxPtr = ::std::shared_ptr<HelloPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
