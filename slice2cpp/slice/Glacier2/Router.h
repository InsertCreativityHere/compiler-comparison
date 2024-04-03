//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Router_h__
#define __Router_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "../Ice/Router.h"
#include "Session.h"
#include "PermissionsVerifier.h"
#include <Glacier2/Config.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

#ifndef GLACIER2_API
#   if defined(ICE_STATIC_LIBS)
#       define GLACIER2_API /**/
#   elif defined(GLACIER2_API_EXPORTS)
#       define GLACIER2_API ICE_DECLSPEC_EXPORT
#   else
#       define GLACIER2_API ICE_DECLSPEC_IMPORT
#   endif
#endif

namespace Glacier2
{
    class RouterPrx;

}

namespace Glacier2
{

/**
 * The Glacier2 specialization of the <code>Ice::Router</code> interface.
 */
class GLACIER2_API RouterPrx : public ::Ice::Proxy<RouterPrx, ::Ice::RouterPrx>
{
public:

    /**
     * This category must be used in the identities of all of the client's callback objects. This is necessary in
     * order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
     * are not set, the returned category is an empty string.
     * @param context The Context map to send with the invocation.
     * @return The category.
     */
    ::std::string getCategoryForClient(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * This category must be used in the identities of all of the client's callback objects. This is necessary in
     * order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
     * are not set, the returned category is an empty string.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<::std::string> getCategoryForClientAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * This category must be used in the identities of all of the client's callback objects. This is necessary in
     * order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
     * are not set, the returned category is an empty string.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    getCategoryForClientAsync(::std::function<void(::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getCategoryForClient(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Create a per-client session with the router. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param userId The user id for which to check the password.
     * @param password The password for the given user id.
     * @param context The Context map to send with the invocation.
     * @return A proxy for the newly created session, or null if no {@link SessionManager} has been installed.
     * @throws Glacier2::CannotCreateSessionException Raised if the session cannot be created.
     * @throws Glacier2::PermissionDeniedException Raised if the password for the given user id is not correct, or if the
     * user is not allowed access.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    ::std::optional<SessionPrx> createSession(::std::string_view userId, ::std::string_view password, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Create a per-client session with the router. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param userId The user id for which to check the password.
     * @param password The password for the given user id.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    ::std::future<::std::optional<SessionPrx>> createSessionAsync(::std::string_view userId, ::std::string_view password, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Create a per-client session with the router. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param userId The user id for which to check the password.
     * @param password The password for the given user id.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    ::std::function<void()>
    createSessionAsync(::std::string_view userId, ::std::string_view password, ::std::function<void(::std::optional<::Glacier2::SessionPrx>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_createSession(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<SessionPrx>>>&, ::std::string_view, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Create a per-client session with the router. The user is authenticated through the SSL certificates that
     * have been associated with the connection. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param context The Context map to send with the invocation.
     * @return A proxy for the newly created session, or null if no {@link SessionManager} has been installed.
     * @throws Glacier2::CannotCreateSessionException Raised if the session cannot be created.
     * @throws Glacier2::PermissionDeniedException Raised if the user cannot be authenticated or if the user is not allowed
     * access.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    ::std::optional<SessionPrx> createSessionFromSecureConnection(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Create a per-client session with the router. The user is authenticated through the SSL certificates that
     * have been associated with the connection. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    ::std::future<::std::optional<SessionPrx>> createSessionFromSecureConnectionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Create a per-client session with the router. The user is authenticated through the SSL certificates that
     * have been associated with the connection. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    ::std::function<void()>
    createSessionFromSecureConnectionAsync(::std::function<void(::std::optional<::Glacier2::SessionPrx>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_createSessionFromSecureConnection(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::optional<SessionPrx>>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Keep the calling client's session with this router alive.
     * @param context The Context map to send with the invocation.
     * @throws Glacier2::SessionNotExistException Raised if no session exists for the calling client.
     */
    void refreshSession(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Keep the calling client's session with this router alive.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<void> refreshSessionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Keep the calling client's session with this router alive.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    refreshSessionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_refreshSession(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Destroy the calling client's session with this router.
     * @param context The Context map to send with the invocation.
     * @throws Glacier2::SessionNotExistException Raised if no session exists for the calling client.
     */
    void destroySession(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Destroy the calling client's session with this router.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<void> destroySessionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Destroy the calling client's session with this router.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    destroySessionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_destroySession(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Get the value of the session timeout. Sessions are destroyed if they see no activity for this period of
     * time.
     * @param context The Context map to send with the invocation.
     * @return The timeout (in seconds).
     */
    ::std::int64_t getSessionTimeout(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Get the value of the session timeout. Sessions are destroyed if they see no activity for this period of
     * time.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<::std::int64_t> getSessionTimeoutAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Get the value of the session timeout. Sessions are destroyed if they see no activity for this period of
     * time.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    getSessionTimeoutAsync(::std::function<void(::std::int64_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getSessionTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int64_t>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Get the value of the ACM timeout. Clients supporting connection heartbeats can enable them instead of
     * explicitly sending keep alives requests. This method is only available since Ice 3.6.
     * @param context The Context map to send with the invocation.
     * @return The timeout (in seconds).
     */
    ::std::int32_t getACMTimeout(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Get the value of the ACM timeout. Clients supporting connection heartbeats can enable them instead of
     * explicitly sending keep alives requests. This method is only available since Ice 3.6.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<::std::int32_t> getACMTimeoutAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Get the value of the ACM timeout. Clients supporting connection heartbeats can enable them instead of
     * explicitly sending keep alives requests. This method is only available since Ice 3.6.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    getACMTimeoutAsync(::std::function<void(::std::int32_t)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getACMTimeout(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::int32_t>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

#if defined(__GNUC__)
#   pragma GCC diagnostic push
#   pragma GCC diagnostic ignored "-Wextra" // initialize all virtual bases in correct order
#endif

    explicit RouterPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    RouterPrx(const RouterPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    RouterPrx(RouterPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    RouterPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    RouterPrx& operator=(const RouterPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    RouterPrx& operator=(RouterPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static RouterPrx _fromReference(::IceInternal::ReferencePtr ref) { return RouterPrx(::std::move(ref)); }

protected:

    RouterPrx() = default;

    explicit RouterPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond

#if defined(__GNUC__)
#   pragma GCC diagnostic pop
#endif
};

}

namespace Glacier2
{

/**
 * This exception is raised if a client tries to destroy a session with a router, but no session exists for the
 * client.
 * @see Router#destroySession
 * \headerfile Glacier2/Glacier2.h
 */
class ICE_CLASS(GLACIER2_API) SessionNotExistException : public ::Ice::UserException
{
public:
    using ::Ice::UserException::UserException;

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    ICE_MEMBER(GLACIER2_API) static ::std::string_view ice_staticId() noexcept;

    ICE_MEMBER(GLACIER2_API) ::std::string ice_id() const override;

    ICE_MEMBER(GLACIER2_API) void ice_throw() const override;

protected:
    ICE_MEMBER(GLACIER2_API) void _writeImpl(::Ice::OutputStream*) const override;

    ICE_MEMBER(GLACIER2_API) void _readImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static SessionNotExistException _iceS_SessionNotExistException_init;
/// \endcond

}

namespace Glacier2
{

/**
 * The Glacier2 specialization of the <code>Ice::Router</code> interface.
 */
class GLACIER2_API Router : public virtual ::Ice::Router
{
public:

    using ProxyType = RouterPrx;

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
    static ::std::string_view ice_staticId() noexcept;

    /**
     * This category must be used in the identities of all of the client's callback objects. This is necessary in
     * order for the router to forward callback requests to the intended client. If the Glacier2 server endpoints
     * are not set, the returned category is an empty string.
     * @param current The Current object for the invocation.
     * @return The category.
     */
    virtual ::std::string getCategoryForClient(const ::Ice::Current& current) const = 0;
    /// \cond INTERNAL
    void _iceD_getCategoryForClient(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) const;
    /// \endcond

    /**
     * Create a per-client session with the router. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param userId The user id for which to check the password.
     * @param password The password for the given user id.
     * @param response The response callback.
     * @param exception The exception callback.
     * @param current The Current object for the invocation.
     * @throws Glacier2::CannotCreateSessionException Raised if the session cannot be created.
     * @throws Glacier2::PermissionDeniedException Raised if the password for the given user id is not correct, or if the
     * user is not allowed access.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    virtual void createSessionAsync(::std::string userId, ::std::string password, ::std::function<void(const ::std::optional<SessionPrx>& returnValue)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_createSession(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /**
     * Create a per-client session with the router. The user is authenticated through the SSL certificates that
     * have been associated with the connection. If a {@link SessionManager} has been installed, a proxy to a
     * {@link Session} object is returned to the client. Otherwise, null is returned and only an internal session
     * (i.e., not visible to the client) is created.
     * If a session proxy is returned, it must be configured to route through the router that created it. This will
     * happen automatically if the router is configured as the client's default router at the time the session
     * proxy is created in the client process, otherwise the client must configure the session proxy explicitly.
     * @param response The response callback.
     * @param exception The exception callback.
     * @param current The Current object for the invocation.
     * @throws Glacier2::CannotCreateSessionException Raised if the session cannot be created.
     * @throws Glacier2::PermissionDeniedException Raised if the user cannot be authenticated or if the user is not allowed
     * access.
     * @see Session
     * @see SessionManager
     * @see PermissionsVerifier
     */
    virtual void createSessionFromSecureConnectionAsync(::std::function<void(const ::std::optional<SessionPrx>& returnValue)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_createSessionFromSecureConnection(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /**
     * Keep the calling client's session with this router alive.
     * @param response The response callback.
     * @param exception The exception callback.
     * @param current The Current object for the invocation.
     * @throws Glacier2::SessionNotExistException Raised if no session exists for the calling client.
     */
    virtual void refreshSessionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_refreshSession(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /**
     * Destroy the calling client's session with this router.
     * @param current The Current object for the invocation.
     * @throws Glacier2::SessionNotExistException Raised if no session exists for the calling client.
     */
    virtual void destroySession(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_destroySession(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /**
     * Get the value of the session timeout. Sessions are destroyed if they see no activity for this period of
     * time.
     * @param current The Current object for the invocation.
     * @return The timeout (in seconds).
     */
    virtual ::std::int64_t getSessionTimeout(const ::Ice::Current& current) const = 0;
    /// \cond INTERNAL
    void _iceD_getSessionTimeout(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) const;
    /// \endcond

    /**
     * Get the value of the ACM timeout. Clients supporting connection heartbeats can enable them instead of
     * explicitly sending keep alives requests. This method is only available since Ice 3.6.
     * @param current The Current object for the invocation.
     * @return The timeout (in seconds).
     */
    virtual ::std::int32_t getACMTimeout(const ::Ice::Current& current) const = 0;
    /// \cond INTERNAL
    void _iceD_getACMTimeout(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) const;
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using RouterPtr = ::std::shared_ptr<Router>;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
