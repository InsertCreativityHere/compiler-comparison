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

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/Locator.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class TestLocatorRegistryPrx;

    class ServerManagerPrx;

    class HelloPrx;

    class TestIntfPrx;

}

namespace Test
{

class TestLocatorRegistryPrx : public ::Ice::Proxy<TestLocatorRegistryPrx, ::Ice::LocatorRegistryPrx>
{
public:

    void addObject(const ::std::optional<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> addObjectAsync(const ::std::optional<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    addObjectAsync(const ::std::optional<::Ice::ObjectPrx>& obj, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_addObject(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::optional<::Ice::ObjectPrx>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif

    explicit TestLocatorRegistryPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestLocatorRegistryPrx(const TestLocatorRegistryPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestLocatorRegistryPrx(TestLocatorRegistryPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestLocatorRegistryPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestLocatorRegistryPrx& operator=(const TestLocatorRegistryPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    TestLocatorRegistryPrx& operator=(TestLocatorRegistryPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static TestLocatorRegistryPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestLocatorRegistryPrx(::std::move(ref)); }

protected:

    TestLocatorRegistryPrx() = default;

    explicit TestLocatorRegistryPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

class ServerManagerPrx : public ::Ice::Proxy<ServerManagerPrx, ::Ice::ObjectPrx>
{
public:

    void startServer(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> startServerAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    startServerAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_startServer(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit ServerManagerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    ServerManagerPrx(const ServerManagerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ServerManagerPrx(ServerManagerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ServerManagerPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ServerManagerPrx& operator=(const ServerManagerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    ServerManagerPrx& operator=(ServerManagerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static ServerManagerPrx _fromReference(::IceInternal::ReferencePtr ref) { return ServerManagerPrx(::std::move(ref)); }

protected:

    ServerManagerPrx() = default;

    explicit ServerManagerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class HelloPrx : public ::Ice::Proxy<HelloPrx, ::Ice::ObjectPrx>
{
public:

    void sayHello(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> sayHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    sayHelloAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_sayHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit HelloPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    HelloPrx(const HelloPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    HelloPrx(HelloPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    HelloPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    HelloPrx& operator=(const HelloPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    HelloPrx& operator=(HelloPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static HelloPrx _fromReference(::IceInternal::ReferencePtr ref) { return HelloPrx(::std::move(ref)); }

protected:

    HelloPrx() = default;

    explicit HelloPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class TestIntfPrx : public ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    ::std::optional<HelloPrx> getHello(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::optional<HelloPrx>> getHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getHelloAsync(::std::function<void(::std::optional<::Test::HelloPrx>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<HelloPrx>>>&, const ::Ice::Context&) const;
    /// \endcond

    void migrateHello(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> migrateHelloAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    migrateHelloAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_migrateHello(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit TestIntfPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(const TestIntfPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    TestIntfPrx(TestIntfPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    TestIntfPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    TestIntfPrx& operator=(const TestIntfPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    TestIntfPrx& operator=(TestIntfPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static TestIntfPrx _fromReference(::IceInternal::ReferencePtr ref) { return TestIntfPrx(::std::move(ref)); }

protected:

    TestIntfPrx() = default;

    explicit TestIntfPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class TestLocatorRegistry : public virtual ::Ice::LocatorRegistry
{
public:

    using ProxyType = TestLocatorRegistryPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    virtual void addObject(::std::optional<::Ice::ObjectPrx> obj, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_addObject(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestLocatorRegistryPtr = ::std::shared_ptr<TestLocatorRegistry>;

class ServerManager : public virtual ::Ice::Object
{
public:

    using ProxyType = ServerManagerPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    virtual void startServer(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_startServer(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using ServerManagerPtr = ::std::shared_ptr<ServerManager>;

class Hello : public virtual ::Ice::Object
{
public:

    using ProxyType = HelloPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    virtual void sayHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_sayHello(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using HelloPtr = ::std::shared_ptr<Hello>;

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ::std::optional<HelloPrx> getHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_getHello(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void migrateHello(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_migrateHello(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using TestIntfPtr = ::std::shared_ptr<TestIntf>;

}

#include <Ice/PopDisableWarnings.h>
#endif
