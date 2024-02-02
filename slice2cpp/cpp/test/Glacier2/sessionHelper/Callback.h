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

#ifndef __Callback_h__
#define __Callback_h__

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

class CallbackReceiver;
class CallbackReceiverPrx;
class Callback;
class CallbackPrx;

}

namespace Test
{

class CallbackException : public ::Ice::UserExceptionHelper<CallbackException, ::Ice::UserException>
{
public:

    virtual ~CallbackException();

    CallbackException(const CallbackException&) = default;

    CallbackException() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    CallbackException(double someValue, const ::std::string& someString) :
        someValue(someValue),
        someString(someString)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const double&, const ::std::string&> ice_tuple() const
    {
        return std::tie(someValue, someString);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    double someValue;
    ::std::string someString;
};

/// \cond INTERNAL
static CallbackException _iceS_CallbackException_init;
/// \endcond

}

namespace Test
{

class CallbackReceiver : public virtual ::Ice::Object
{
public:

    using ProxyType = CallbackReceiverPrx;

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

    virtual void callback(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_callback(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void callbackEx(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_callbackEx(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class Callback : public virtual ::Ice::Object
{
public:

    using ProxyType = CallbackPrx;

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

    virtual void initiateCallback(::std::shared_ptr<CallbackReceiverPrx> proxy, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_initiateCallback(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void initiateCallbackEx(::std::shared_ptr<CallbackReceiverPrx> proxy, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_initiateCallbackEx(::IceInternal::Incoming&, const ::Ice::Current&);
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

class CallbackReceiverPrx : public virtual ::Ice::Proxy<CallbackReceiverPrx, ::Ice::ObjectPrx>
{
public:

    void callback(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callback, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto callbackAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackReceiverPrx::_iceI_callback, context);
    }

    ::std::function<void()>
    callbackAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callback, context);
    }

    /// \cond INTERNAL
    void _iceI_callback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void callbackEx(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackReceiverPrx::_iceI_callbackEx, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto callbackExAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackReceiverPrx::_iceI_callbackEx, context);
    }

    ::std::function<void()>
    callbackExAsync(::std::function<void()> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackReceiverPrx::_iceI_callbackEx, context);
    }

    /// \cond INTERNAL
    void _iceI_callbackEx(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    CallbackReceiverPrx() = default;
    friend ::std::shared_ptr<CallbackReceiverPrx> IceInternal::createProxy<CallbackReceiverPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class CallbackPrx : public virtual ::Ice::Proxy<CallbackPrx, ::Ice::ObjectPrx>
{
public:

    void initiateCallback(const ::std::shared_ptr<CallbackReceiverPrx>& proxy, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallback, proxy, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto initiateCallbackAsync(const ::std::shared_ptr<CallbackReceiverPrx>& proxy, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackPrx::_iceI_initiateCallback, proxy, context);
    }

    ::std::function<void()>
    initiateCallbackAsync(const ::std::shared_ptr<CallbackReceiverPrx>& proxy,
                          ::std::function<void()> response,
                          ::std::function<void(::std::exception_ptr)> ex = nullptr,
                          ::std::function<void(bool)> sent = nullptr,
                          const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallback, proxy, context);
    }

    /// \cond INTERNAL
    void _iceI_initiateCallback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::shared_ptr<CallbackReceiverPrx>&, const ::Ice::Context&);
    /// \endcond

    void initiateCallbackEx(const ::std::shared_ptr<CallbackReceiverPrx>& proxy, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_initiateCallbackEx, proxy, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto initiateCallbackExAsync(const ::std::shared_ptr<CallbackReceiverPrx>& proxy, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackPrx::_iceI_initiateCallbackEx, proxy, context);
    }

    ::std::function<void()>
    initiateCallbackExAsync(const ::std::shared_ptr<CallbackReceiverPrx>& proxy,
                            ::std::function<void()> response,
                            ::std::function<void(::std::exception_ptr)> ex = nullptr,
                            ::std::function<void(bool)> sent = nullptr,
                            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_initiateCallbackEx, proxy, context);
    }

    /// \cond INTERNAL
    void _iceI_initiateCallbackEx(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::shared_ptr<CallbackReceiverPrx>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_shutdown, context);
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
    CallbackPrx() = default;
    friend ::std::shared_ptr<CallbackPrx> IceInternal::createProxy<CallbackPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamReader<::Test::CallbackException, S>
{
    static void read(S* istr, ::Test::CallbackException& v)
    {
        istr->readAll(v.someValue, v.someString);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using CallbackReceiverPtr = ::std::shared_ptr<CallbackReceiver>;
using CallbackReceiverPrxPtr = ::std::shared_ptr<CallbackReceiverPrx>;

using CallbackPtr = ::std::shared_ptr<Callback>;
using CallbackPrxPtr = ::std::shared_ptr<CallbackPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
