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

class Server;
class ServerPrx;
class ServerFactory;
class ServerFactoryPrx;

}

namespace Test
{

using Properties = ::std::map<::std::string, ::std::string>;

}

namespace Test
{

class Server : public virtual ::Ice::Object
{
public:

    using ProxyType = ServerPrx;

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

    virtual void noCert(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_noCert(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void checkCert(::std::string subjectDN, ::std::string issuerDN, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_checkCert(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void checkCipher(::std::string cipher, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_checkCipher(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class ServerFactory : public virtual ::Ice::Object
{
public:

    using ProxyType = ServerFactoryPrx;

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

    virtual ::std::shared_ptr<ServerPrx> createServer(Properties props, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_createServer(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void destroyServer(::std::shared_ptr<ServerPrx> srv, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_destroyServer(::IceInternal::Incoming&, const ::Ice::Current&);
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

class ServerPrx : public virtual ::Ice::Proxy<ServerPrx, ::Ice::ObjectPrx>
{
public:

    void noCert(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerPrx::_iceI_noCert, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto noCertAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerPrx::_iceI_noCert, context);
    }

    ::std::function<void()>
    noCertAsync(::std::function<void()> response,
                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                ::std::function<void(bool)> sent = nullptr,
                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerPrx::_iceI_noCert, context);
    }

    /// \cond INTERNAL
    void _iceI_noCert(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void checkCert(const ::std::string& subjectDN, const ::std::string& issuerDN, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerPrx::_iceI_checkCert, subjectDN, issuerDN, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto checkCertAsync(const ::std::string& subjectDN, const ::std::string& issuerDN, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerPrx::_iceI_checkCert, subjectDN, issuerDN, context);
    }

    ::std::function<void()>
    checkCertAsync(const ::std::string& subjectDN, const ::std::string& issuerDN,
                   ::std::function<void()> response,
                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                   ::std::function<void(bool)> sent = nullptr,
                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerPrx::_iceI_checkCert, subjectDN, issuerDN, context);
    }

    /// \cond INTERNAL
    void _iceI_checkCert(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::string&, const ::std::string&, const ::Ice::Context&);
    /// \endcond

    void checkCipher(const ::std::string& cipher, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerPrx::_iceI_checkCipher, cipher, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto checkCipherAsync(const ::std::string& cipher, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerPrx::_iceI_checkCipher, cipher, context);
    }

    ::std::function<void()>
    checkCipherAsync(const ::std::string& cipher,
                     ::std::function<void()> response,
                     ::std::function<void(::std::exception_ptr)> ex = nullptr,
                     ::std::function<void(bool)> sent = nullptr,
                     const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerPrx::_iceI_checkCipher, cipher, context);
    }

    /// \cond INTERNAL
    void _iceI_checkCipher(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::string&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    ServerPrx() = default;
    friend ::std::shared_ptr<ServerPrx> IceInternal::createProxy<ServerPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class ServerFactoryPrx : public virtual ::Ice::Proxy<ServerFactoryPrx, ::Ice::ObjectPrx>
{
public:

    ::std::shared_ptr<ServerPrx> createServer(const Properties& props, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::ServerPrx>>(true, this, &ServerFactoryPrx::_iceI_createServer, props, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto createServerAsync(const Properties& props, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Test::ServerPrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Test::ServerPrx>, P>(false, this, &ServerFactoryPrx::_iceI_createServer, props, context);
    }

    ::std::function<void()>
    createServerAsync(const Properties& props,
                      ::std::function<void(::std::shared_ptr<::Test::ServerPrx>)> response,
                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                      ::std::function<void(bool)> sent = nullptr,
                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Test::ServerPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerFactoryPrx::_iceI_createServer, props, context);
    }

    /// \cond INTERNAL
    void _iceI_createServer(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Test::ServerPrx>>>&, const Properties&, const ::Ice::Context&);
    /// \endcond

    void destroyServer(const ::std::shared_ptr<ServerPrx>& srv, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerFactoryPrx::_iceI_destroyServer, srv, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto destroyServerAsync(const ::std::shared_ptr<ServerPrx>& srv, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerFactoryPrx::_iceI_destroyServer, srv, context);
    }

    ::std::function<void()>
    destroyServerAsync(const ::std::shared_ptr<ServerPrx>& srv,
                       ::std::function<void()> response,
                       ::std::function<void(::std::exception_ptr)> ex = nullptr,
                       ::std::function<void(bool)> sent = nullptr,
                       const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerFactoryPrx::_iceI_destroyServer, srv, context);
    }

    /// \cond INTERNAL
    void _iceI_destroyServer(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::shared_ptr<ServerPrx>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ServerFactoryPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ServerFactoryPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ServerFactoryPrx::_iceI_shutdown, context);
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
    ServerFactoryPrx() = default;
    friend ::std::shared_ptr<ServerFactoryPrx> IceInternal::createProxy<ServerFactoryPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond INTERNAL
namespace Test
{

using ServerPtr = ::std::shared_ptr<Server>;
using ServerPrxPtr = ::std::shared_ptr<ServerPrx>;

using ServerFactoryPtr = ::std::shared_ptr<ServerFactory>;
using ServerFactoryPrxPtr = ::std::shared_ptr<ServerFactoryPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
