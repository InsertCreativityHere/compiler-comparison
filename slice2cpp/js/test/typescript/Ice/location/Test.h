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
#include <Ice/Locator.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{

class TestLocatorRegistry;
class TestLocatorRegistryPrx;
class TestLocator;
class TestLocatorPrx;
class ServerManager;
class ServerManagerPrx;
class Hello;
class HelloPrx;
class TestIntf;
class TestIntfPrx;

}

namespace Test
{

}

namespace Test
{

class TestLocatorRegistry : public virtual ::Ice::LocatorRegistry
{
public:

    using ProxyType = TestLocatorRegistryPrx;

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

    virtual void addObject(::std::shared_ptr<::Ice::ObjectPrx> obj, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_addObject(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class TestLocator : public virtual ::Ice::Locator
{
public:

    using ProxyType = TestLocatorPrx;

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

    virtual int getRequestCount(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getRequestCount(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class ServerManager : public virtual ::Ice::Object
{
public:

    using ProxyType = ServerManagerPrx;

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

    virtual void startServer(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_startServer(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

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

    virtual void sayHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_sayHello(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

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

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::std::shared_ptr<HelloPrx> getHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getHello(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::std::shared_ptr<HelloPrx> getReplicatedHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getReplicatedHello(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void migrateHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_migrateHello(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class TestLocatorRegistryPrx : public virtual ::Ice::Proxy<TestLocatorRegistryPrx, ::Ice::LocatorRegistryPrx>
{
public:

    void addObject(const ::std::shared_ptr<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestLocatorRegistryPrx::_iceI_addObject, obj, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto addObjectAsync(const ::std::shared_ptr<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestLocatorRegistryPrx::_iceI_addObject, obj, context);
    }

    ::std::function<void()>
    addObjectAsync(const ::std::shared_ptr<::Ice::ObjectPrx>& obj,
                   ::std::function<void()> response,
                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                   ::std::function<void(bool)> sent = nullptr,
                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestLocatorRegistryPrx::_iceI_addObject, obj, context);
    }

    /// \cond INTERNAL
    void _iceI_addObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::shared_ptr<::Ice::ObjectPrx>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TestLocatorRegistryPrx() = default;
    friend ::std::shared_ptr<TestLocatorRegistryPrx> IceInternal::createProxy<TestLocatorRegistryPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class TestLocatorPrx : public virtual ::Ice::Proxy<TestLocatorPrx, ::Ice::LocatorPrx>
{
public:

    int getRequestCount(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<int>(true, this, &TestLocatorPrx::_iceI_getRequestCount, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getRequestCountAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<int>>().get_future())
    {
        return _makePromiseOutgoing<int, P>(false, this, &TestLocatorPrx::_iceI_getRequestCount, context);
    }

    ::std::function<void()>
    getRequestCountAsync(::std::function<void(int)> response,
                         ::std::function<void(::std::exception_ptr)> ex = nullptr,
                         ::std::function<void(bool)> sent = nullptr,
                         const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<int>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestLocatorPrx::_iceI_getRequestCount, context);
    }

    /// \cond INTERNAL
    void _iceI_getRequestCount(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<int>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TestLocatorPrx() = default;
    friend ::std::shared_ptr<TestLocatorPrx> IceInternal::createProxy<TestLocatorPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class ServerManagerPrx : public virtual ::Ice::Proxy<ServerManagerPrx, ::Ice::ObjectPrx>
{
public:

    void startServer(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerManagerPrx::_iceI_startServer, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto startServerAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerManagerPrx::_iceI_startServer, context);
    }

    ::std::function<void()>
    startServerAsync(::std::function<void()> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerManagerPrx::_iceI_startServer, context);
    }

    /// \cond INTERNAL
    void _iceI_startServer(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerManagerPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerManagerPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerManagerPrx::_iceI_shutdown, context);
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
    ServerManagerPrx() = default;
    friend ::std::shared_ptr<ServerManagerPrx> IceInternal::createProxy<ServerManagerPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class HelloPrx : public virtual ::Ice::Proxy<HelloPrx, ::Ice::ObjectPrx>
{
public:

    void sayHello(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &HelloPrx::_iceI_sayHello, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto sayHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &HelloPrx::_iceI_sayHello, context);
    }

    ::std::function<void()>
    sayHelloAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::HelloPrx::_iceI_sayHello, context);
    }

    /// \cond INTERNAL
    void _iceI_sayHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
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

class TestIntfPrx : public virtual ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_shutdown, context);
    }

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    ::std::shared_ptr<HelloPrx> getHello(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::HelloPrx>>(true, this, &TestIntfPrx::_iceI_getHello, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Test::HelloPrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::HelloPrx>, P>(false, this, &TestIntfPrx::_iceI_getHello, context);
    }

    ::std::function<void()>
    getHelloAsync(::std::function<void(::std::shared_ptr<::Test::HelloPrx>)> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Test::HelloPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_getHello, context);
    }

    /// \cond INTERNAL
    void _iceI_getHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::HelloPrx>>>&, const ::Ice::Context&);
    /// \endcond

    ::std::shared_ptr<HelloPrx> getReplicatedHello(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::HelloPrx>>(true, this, &TestIntfPrx::_iceI_getReplicatedHello, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getReplicatedHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Test::HelloPrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::HelloPrx>, P>(false, this, &TestIntfPrx::_iceI_getReplicatedHello, context);
    }

    ::std::function<void()>
    getReplicatedHelloAsync(::std::function<void(::std::shared_ptr<::Test::HelloPrx>)> response,
                            ::std::function<void(::std::exception_ptr)> ex = nullptr,
                            ::std::function<void(bool)> sent = nullptr,
                            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Test::HelloPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_getReplicatedHello, context);
    }

    /// \cond INTERNAL
    void _iceI_getReplicatedHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::HelloPrx>>>&, const ::Ice::Context&);
    /// \endcond

    void migrateHello(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_migrateHello, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto migrateHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_migrateHello, context);
    }

    ::std::function<void()>
    migrateHelloAsync(::std::function<void()> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_migrateHello, context);
    }

    /// \cond INTERNAL
    void _iceI_migrateHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TestIntfPrx() = default;
    friend ::std::shared_ptr<TestIntfPrx> IceInternal::createProxy<TestIntfPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond INTERNAL
namespace Test
{

using TestLocatorRegistryPtr = ::std::shared_ptr<TestLocatorRegistry>;
using TestLocatorRegistryPrxPtr = ::std::shared_ptr<TestLocatorRegistryPrx>;

using TestLocatorPtr = ::std::shared_ptr<TestLocator>;
using TestLocatorPrxPtr = ::std::shared_ptr<TestLocatorPrx>;

using ServerManagerPtr = ::std::shared_ptr<ServerManager>;
using ServerManagerPrxPtr = ::std::shared_ptr<ServerManagerPrx>;

using HelloPtr = ::std::shared_ptr<Hello>;
using HelloPrxPtr = ::std::shared_ptr<HelloPrx>;

using TestIntfPtr = ::std::shared_ptr<TestIntf>;
using TestIntfPrxPtr = ::std::shared_ptr<TestIntfPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
