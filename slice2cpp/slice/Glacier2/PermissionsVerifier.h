//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `PermissionsVerifier.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __PermissionsVerifier_h__
#define __PermissionsVerifier_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "SSLInfo.h"
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
    class PermissionsVerifierPrx;

    class SSLPermissionsVerifierPrx;

}

namespace Glacier2
{

/**
 * The Glacier2 permissions verifier. This is called through the process of establishing a session.
 * @see Router
 */
class GLACIER2_API PermissionsVerifierPrx : public ::Ice::Proxy<PermissionsVerifierPrx, ::Ice::ObjectPrx>
{
public:

    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @param reason The reason why access was denied.
     * @param context The Context map to send with the invocation.
     * @return True if access is granted, or false otherwise.
     * @throws Glacier2::PermissionDeniedException Raised if the user access is denied. This can be raised in place of
     * returning false with a reason set in the reason out parameter.
     */
    bool checkPermissions(::std::string_view userId, ::std::string_view password, ::std::string& reason, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     */
    ::std::future<::std::tuple<bool, ::std::string>> checkPermissionsAsync(::std::string_view userId, ::std::string_view password, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     */
    ::std::function<void()>
    checkPermissionsAsync(::std::string_view userId, ::std::string_view password, ::std::function<void(bool, ::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_checkPermissions(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<bool, ::std::string>>>&, ::std::string_view, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    explicit PermissionsVerifierPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    PermissionsVerifierPrx(const PermissionsVerifierPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    PermissionsVerifierPrx(PermissionsVerifierPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    PermissionsVerifierPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    PermissionsVerifierPrx& operator=(const PermissionsVerifierPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    PermissionsVerifierPrx& operator=(PermissionsVerifierPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static PermissionsVerifierPrx _fromReference(::IceInternal::ReferencePtr ref) { return PermissionsVerifierPrx(::std::move(ref)); }

protected:

    PermissionsVerifierPrx() = default;

    explicit PermissionsVerifierPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

/**
 * The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
 * @see Router
 */
class GLACIER2_API SSLPermissionsVerifierPrx : public ::Ice::Proxy<SSLPermissionsVerifierPrx, ::Ice::ObjectPrx>
{
public:

    /**
     * Check whether a user has permission to access the router.
     * @param info The SSL information.
     * @param reason The reason why access was denied.
     * @param context The Context map to send with the invocation.
     * @return True if access is granted, or false otherwise.
     * @throws Glacier2::PermissionDeniedException Raised if the user access is denied. This can be raised in place of
     * returning false with a reason set in the reason out parameter.
     * @see SSLInfo
     */
    bool authorize(const SSLInfo& info, ::std::string& reason, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Check whether a user has permission to access the router.
     * @param info The SSL information.
     * @param context The Context map to send with the invocation.
     * @return The future object for the invocation.
     * @see SSLInfo
     */
    ::std::future<::std::tuple<bool, ::std::string>> authorizeAsync(const SSLInfo& info, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /**
     * Check whether a user has permission to access the router.
     * @param info The SSL information.
     * @param response The response callback.
     * @param ex The exception callback.
     * @param sent The sent callback.
     * @param context The Context map to send with the invocation.
     * @return A function that can be called to cancel the invocation locally.
     * @see SSLInfo
     */
    ::std::function<void()>
    authorizeAsync(const SSLInfo& info, ::std::function<void(bool, ::std::string)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_authorize(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::tuple<bool, ::std::string>>>&, const SSLInfo&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    explicit SSLPermissionsVerifierPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    SSLPermissionsVerifierPrx(const SSLPermissionsVerifierPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    SSLPermissionsVerifierPrx(SSLPermissionsVerifierPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    SSLPermissionsVerifierPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    SSLPermissionsVerifierPrx& operator=(const SSLPermissionsVerifierPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    SSLPermissionsVerifierPrx& operator=(SSLPermissionsVerifierPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static SSLPermissionsVerifierPrx _fromReference(::IceInternal::ReferencePtr ref) { return SSLPermissionsVerifierPrx(::std::move(ref)); }

protected:

    SSLPermissionsVerifierPrx() = default;

    explicit SSLPermissionsVerifierPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Glacier2
{

/**
 * This exception is raised if a client is denied the ability to create a session with the router.
 * \headerfile Glacier2/Glacier2.h
 */
class ICE_CLASS(GLACIER2_API) PermissionDeniedException : public ::Ice::UserException
{
public:
    using ::Ice::UserException::UserException;

    /**
     * One-shot constructor to initialize all data members.
     * @param reason The reason why permission was denied.
     */
    PermissionDeniedException(::std::string reason) noexcept :
        reason(::std::move(reason))
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(reason);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    ICE_MEMBER(GLACIER2_API) static ::std::string_view ice_staticId() noexcept;

    ICE_MEMBER(GLACIER2_API) ::std::string ice_id() const override;

    ICE_MEMBER(GLACIER2_API) void ice_throw() const override;

    /**
     * The reason why permission was denied.
     */
    ::std::string reason;

protected:
    ICE_MEMBER(GLACIER2_API) void _writeImpl(::Ice::OutputStream*) const override;

    ICE_MEMBER(GLACIER2_API) void _readImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static PermissionDeniedException _iceS_PermissionDeniedException_init;
/// \endcond

}

namespace Glacier2
{

/**
 * The Glacier2 permissions verifier. This is called through the process of establishing a session.
 * @see Router
 */
class GLACIER2_API PermissionsVerifier : public virtual ::Ice::Object
{
public:

    using ProxyType = PermissionsVerifierPrx;

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
     * Check whether a user has permission to access the router.
     * @param userId The user id for which to check permission.
     * @param password The user's password.
     * @param reason The reason why access was denied.
     * @param current The Current object for the invocation.
     * @return True if access is granted, or false otherwise.
     * @throws Glacier2::PermissionDeniedException Raised if the user access is denied. This can be raised in place of
     * returning false with a reason set in the reason out parameter.
     */
    virtual bool checkPermissions(::std::string userId, ::std::string password, ::std::string& reason, const ::Ice::Current& current) const = 0;
    /// \cond INTERNAL
    void _iceD_checkPermissions(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) const;
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using PermissionsVerifierPtr = ::std::shared_ptr<PermissionsVerifier>;

/**
 * The SSL Glacier2 permissions verifier. This is called through the process of establishing a session.
 * @see Router
 */
class GLACIER2_API SSLPermissionsVerifier : public virtual ::Ice::Object
{
public:

    using ProxyType = SSLPermissionsVerifierPrx;

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
     * Check whether a user has permission to access the router.
     * @param info The SSL information.
     * @param reason The reason why access was denied.
     * @param current The Current object for the invocation.
     * @return True if access is granted, or false otherwise.
     * @throws Glacier2::PermissionDeniedException Raised if the user access is denied. This can be raised in place of
     * returning false with a reason set in the reason out parameter.
     * @see SSLInfo
     */
    virtual bool authorize(SSLInfo info, ::std::string& reason, const ::Ice::Current& current) const = 0;
    /// \cond INTERNAL
    void _iceD_authorize(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) const;
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using SSLPermissionsVerifierPtr = ::std::shared_ptr<SSLPermissionsVerifier>;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamReader<::Glacier2::PermissionDeniedException>
{
    static void read(InputStream* istr, ::Glacier2::PermissionDeniedException& v)
    {
        istr->readAll(v.reason);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
