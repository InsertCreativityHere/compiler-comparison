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

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class ServerPrx;

    using Properties = ::std::map<::std::string, ::std::string>;

    class ServerFactoryPrx;

}

namespace Test
{

class ServerPrx : public ::Ice::Proxy<ServerPrx, ::Ice::ObjectPrx>
{
public:

    void noCert(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> noCertAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    noCertAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_noCert(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    void checkCert(::std::string_view subjectDN, ::std::string_view issuerDN, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> checkCertAsync(::std::string_view subjectDN, ::std::string_view issuerDN, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    checkCertAsync(::std::string_view subjectDN, ::std::string_view issuerDN, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_checkCert(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    void checkCipher(::std::string_view cipher, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> checkCipherAsync(::std::string_view cipher, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    checkCipherAsync(::std::string_view cipher, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_checkCipher(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const char* ice_staticId() noexcept;

    explicit ServerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    ServerPrx(const ServerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ServerPrx(ServerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ServerPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ServerPrx& operator=(const ServerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    ServerPrx& operator=(ServerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static ServerPrx _fromReference(::IceInternal::ReferencePtr ref) { return ServerPrx(::std::move(ref)); }

protected:

    ServerPrx() = default;

    explicit ServerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

class ServerFactoryPrx : public ::Ice::Proxy<ServerFactoryPrx, ::Ice::ObjectPrx>
{
public:

    ::std::optional<ServerPrx> createServer(const Properties& props, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::optional<ServerPrx>> createServerAsync(const Properties& props, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    createServerAsync(const Properties& props, ::std::function<void(::std::optional<::Test::ServerPrx>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_createServer(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<ServerPrx>>>&, const Properties&, const ::Ice::Context&) const;
    /// \endcond

    void destroyServer(const ::std::optional<ServerPrx>& srv, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> destroyServerAsync(const ::std::optional<ServerPrx>& srv, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    destroyServerAsync(const ::std::optional<ServerPrx>& srv, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_destroyServer(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::optional<ServerPrx>&, const ::Ice::Context&) const;
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

    explicit ServerFactoryPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    ServerFactoryPrx(const ServerFactoryPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ServerFactoryPrx(ServerFactoryPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ServerFactoryPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ServerFactoryPrx& operator=(const ServerFactoryPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    ServerFactoryPrx& operator=(ServerFactoryPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static ServerFactoryPrx _fromReference(::IceInternal::ReferencePtr ref) { return ServerFactoryPrx(::std::move(ref)); }

protected:

    ServerFactoryPrx() = default;

    explicit ServerFactoryPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class Server : public virtual ::Ice::Object
{
public:

    using ProxyType = ServerPrx;

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

    virtual void noCert(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_noCert(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void checkCert(::std::string subjectDN, ::std::string issuerDN, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_checkCert(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void checkCipher(::std::string cipher, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_checkCipher(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using ServerPtr = ::std::shared_ptr<Server>;

class ServerFactory : public virtual ::Ice::Object
{
public:

    using ProxyType = ServerFactoryPrx;

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

    virtual ::std::optional<ServerPrx> createServer(Properties props, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_createServer(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void destroyServer(::std::optional<ServerPrx> srv, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_destroyServer(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using ServerFactoryPtr = ::std::shared_ptr<ServerFactory>;

}

#include <Ice/PopDisableWarnings.h>
#endif
