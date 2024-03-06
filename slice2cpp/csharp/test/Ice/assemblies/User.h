//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `User.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __User_h__
#define __User_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Core.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace User
{

class UserInfo;

using UserInfoPtr = ::std::shared_ptr<UserInfo>;
class RegistryPrx;

using RegistryPrxPtr = ::std::optional<RegistryPrx>;

}

namespace User
{

class RegistryPrx : public ::Ice::Proxy<RegistryPrx, ::Ice::ObjectPrx>
{
public:

    ::std::shared_ptr<UserInfo> getUserInfo(::std::string_view id, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<::std::shared_ptr<UserInfo>> getUserInfoAsync(::std::string_view id, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getUserInfoAsync(::std::string_view id, ::std::function<void(::std::shared_ptr<::User::UserInfo>)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getUserInfo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<UserInfo>>>&, ::std::string_view, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit RegistryPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    RegistryPrx(const RegistryPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    RegistryPrx(RegistryPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    RegistryPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    RegistryPrx& operator=(const RegistryPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    RegistryPrx& operator=(RegistryPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static RegistryPrx _fromReference(::IceInternal::ReferencePtr ref) { return RegistryPrx(::std::move(ref)); }

protected:

    RegistryPrx() = default;

    explicit RegistryPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace User
{

class UserInfo : public ::Ice::ValueHelper<UserInfo, ::Ice::Value>
{
public:

    virtual ~UserInfo();

    UserInfo() = default;

    UserInfo(const UserInfo&) = default;
    UserInfo(UserInfo&&) = default;
    UserInfo& operator=(const UserInfo&) = default;
    UserInfo& operator=(UserInfo&&) = default;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();
};

/// \cond INTERNAL
static UserInfo _iceS_UserInfo_init;
/// \endcond

}

namespace User
{

class Registry : public virtual ::Ice::Object
{
public:

    using ProxyType = RegistryPrx;

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
    static ::std::string_view ice_staticId();

    virtual ::std::shared_ptr<UserInfo> getUserInfo(::std::string id, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getUserInfo(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using RegistryPtr = ::std::shared_ptr<Registry>;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
