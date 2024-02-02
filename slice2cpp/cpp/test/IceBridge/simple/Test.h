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

class Callback;
class CallbackPrx;
class MyClass;
class MyClassPrx;

}

namespace Test
{

}

namespace Test
{

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

    virtual void ping(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_ping(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int getCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void datagram(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_datagram(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int getDatagramCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getDatagramCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class MyClass : public virtual ::Ice::Object
{
public:

    using ProxyType = MyClassPrx;

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

    virtual void callCallbackAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_callCallback(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void getCallbackCountAsync(::std::function<void(int returnValue)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getCallbackCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void incCounter(int expected, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_incCounter(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void waitCounter(int value, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_waitCounter(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int getConnectionCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getConnectionCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::std::string getConnectionInfo(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getConnectionInfo(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void closeConnection(bool force, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_closeConnection(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void datagram(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_datagram(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int getDatagramCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getDatagramCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void callDatagramCallback(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_callDatagramCallback(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void getCallbackDatagramCountAsync(::std::function<void(int returnValue)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getCallbackDatagramCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual int getHeartbeatCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getHeartbeatCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void enableHeartbeats(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_enableHeartbeats(::IceInternal::Incoming&, const ::Ice::Current&);
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

class CallbackPrx : public virtual ::Ice::Proxy<CallbackPrx, ::Ice::ObjectPrx>
{
public:

    void ping(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_ping, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto pingAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackPrx::_iceI_ping, context);
    }

    ::std::function<void()>
    pingAsync(::std::function<void()> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_ping, context);
    }

    /// \cond INTERNAL
    void _iceI_ping(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    int getCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &CallbackPrx::_iceI_getCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &CallbackPrx::_iceI_getCount, context);
    }

    ::std::function<void()>
    getCountAsync(::std::function<void(int)> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_getCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    void datagram(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &CallbackPrx::_iceI_datagram, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto datagramAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &CallbackPrx::_iceI_datagram, context);
    }

    ::std::function<void()>
    datagramAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_datagram, context);
    }

    /// \cond INTERNAL
    void _iceI_datagram(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    int getDatagramCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &CallbackPrx::_iceI_getDatagramCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getDatagramCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &CallbackPrx::_iceI_getDatagramCount, context);
    }

    ::std::function<void()>
    getDatagramCountAsync(::std::function<void(int)> response,
                          ::std::function<void(::std::exception_ptr)> ex = nullptr,
                          ::std::function<void(bool)> sent = nullptr,
                          const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::CallbackPrx::_iceI_getDatagramCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getDatagramCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
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

class MyClassPrx : public virtual ::Ice::Proxy<MyClassPrx, ::Ice::ObjectPrx>
{
public:

    void callCallback(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_callCallback, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto callCallbackAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_callCallback, context);
    }

    ::std::function<void()>
    callCallbackAsync(::std::function<void()> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_callCallback, context);
    }

    /// \cond INTERNAL
    void _iceI_callCallback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    int getCallbackCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &MyClassPrx::_iceI_getCallbackCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getCallbackCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &MyClassPrx::_iceI_getCallbackCount, context);
    }

    ::std::function<void()>
    getCallbackCountAsync(::std::function<void(int)> response,
                          ::std::function<void(::std::exception_ptr)> ex = nullptr,
                          ::std::function<void(bool)> sent = nullptr,
                          const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getCallbackCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getCallbackCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    void incCounter(int expected, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_incCounter, expected, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto incCounterAsync(int expected, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_incCounter, expected, context);
    }

    ::std::function<void()>
    incCounterAsync(int expected,
                    ::std::function<void()> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_incCounter, expected, context);
    }

    /// \cond INTERNAL
    void _iceI_incCounter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, int, const ::Ice::Context&);
    /// \endcond

    void waitCounter(int value, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_waitCounter, value, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto waitCounterAsync(int value, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_waitCounter, value, context);
    }

    ::std::function<void()>
    waitCounterAsync(int value,
                     ::std::function<void()> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_waitCounter, value, context);
    }

    /// \cond INTERNAL
    void _iceI_waitCounter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, int, const ::Ice::Context&);
    /// \endcond

    int getConnectionCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &MyClassPrx::_iceI_getConnectionCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getConnectionCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &MyClassPrx::_iceI_getConnectionCount, context);
    }

    ::std::function<void()>
    getConnectionCountAsync(::std::function<void(int)> response,
                            ::std::function<void(::std::exception_ptr)> ex = nullptr,
                            ::std::function<void(bool)> sent = nullptr,
                            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getConnectionCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getConnectionCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    ::std::string getConnectionInfo(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::string>(true, this, &MyClassPrx::_iceI_getConnectionInfo, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getConnectionInfoAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::string>>().get_future())
    {
        return _makePromiseOutgoing<::std::string, P>(false, this, &MyClassPrx::_iceI_getConnectionInfo, context);
    }

    ::std::function<void()>
    getConnectionInfoAsync(::std::function<void(::std::string)> response,
                           ::std::function<void(::std::exception_ptr)> ex = nullptr,
                           ::std::function<void(bool)> sent = nullptr,
                           const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::string>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getConnectionInfo, context);
    }

    /// \cond INTERNAL
    void _iceI_getConnectionInfo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, const ::Ice::Context&);
    /// \endcond

    void closeConnection(bool force, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_closeConnection, force, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto closeConnectionAsync(bool force, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_closeConnection, force, context);
    }

    ::std::function<void()>
    closeConnectionAsync(bool force,
                         ::std::function<void()> response,
                         ::std::function<void(::std::exception_ptr)> ex = nullptr,
                         ::std::function<void(bool)> sent = nullptr,
                         const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_closeConnection, force, context);
    }

    /// \cond INTERNAL
    void _iceI_closeConnection(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, bool, const ::Ice::Context&);
    /// \endcond

    void datagram(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_datagram, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto datagramAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_datagram, context);
    }

    ::std::function<void()>
    datagramAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_datagram, context);
    }

    /// \cond INTERNAL
    void _iceI_datagram(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    int getDatagramCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &MyClassPrx::_iceI_getDatagramCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getDatagramCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &MyClassPrx::_iceI_getDatagramCount, context);
    }

    ::std::function<void()>
    getDatagramCountAsync(::std::function<void(int)> response,
                          ::std::function<void(::std::exception_ptr)> ex = nullptr,
                          ::std::function<void(bool)> sent = nullptr,
                          const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getDatagramCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getDatagramCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    void callDatagramCallback(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_callDatagramCallback, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto callDatagramCallbackAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_callDatagramCallback, context);
    }

    ::std::function<void()>
    callDatagramCallbackAsync(::std::function<void()> response,
                              ::std::function<void(::std::exception_ptr)> ex = nullptr,
                              ::std::function<void(bool)> sent = nullptr,
                              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_callDatagramCallback, context);
    }

    /// \cond INTERNAL
    void _iceI_callDatagramCallback(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    int getCallbackDatagramCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &MyClassPrx::_iceI_getCallbackDatagramCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getCallbackDatagramCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &MyClassPrx::_iceI_getCallbackDatagramCount, context);
    }

    ::std::function<void()>
    getCallbackDatagramCountAsync(::std::function<void(int)> response,
                                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                  ::std::function<void(bool)> sent = nullptr,
                                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getCallbackDatagramCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getCallbackDatagramCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    int getHeartbeatCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &MyClassPrx::_iceI_getHeartbeatCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getHeartbeatCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &MyClassPrx::_iceI_getHeartbeatCount, context);
    }

    ::std::function<void()>
    getHeartbeatCountAsync(::std::function<void(int)> response,
                           ::std::function<void(::std::exception_ptr)> ex = nullptr,
                           ::std::function<void(bool)> sent = nullptr,
                           const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getHeartbeatCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getHeartbeatCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    void enableHeartbeats(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_enableHeartbeats, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto enableHeartbeatsAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_enableHeartbeats, context);
    }

    ::std::function<void()>
    enableHeartbeatsAsync(::std::function<void()> response,
                          ::std::function<void(::std::exception_ptr)> ex = nullptr,
                          ::std::function<void(bool)> sent = nullptr,
                          const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_enableHeartbeats, context);
    }

    /// \cond INTERNAL
    void _iceI_enableHeartbeats(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_shutdown, context);
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
    MyClassPrx() = default;
    friend ::std::shared_ptr<MyClassPrx> IceInternal::createProxy<MyClassPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond INTERNAL
namespace Test
{

using CallbackPtr = ::std::shared_ptr<Callback>;
using CallbackPrxPtr = ::std::shared_ptr<CallbackPrx>;

using MyClassPtr = ::std::shared_ptr<MyClass>;
using MyClassPrxPtr = ::std::shared_ptr<MyClassPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
