//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef ClientPrivate_h_
#define ClientPrivate_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "Test.h"

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class Initial2Prx;

}

namespace Test
{

class Initial2Prx : public ::Ice::Proxy<Initial2Prx, ::Ice::ObjectPrx>
{
public:

    void opClassAndUnknownOptional(const APtr& p, const ::std::optional<VarStruct>& ovs, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> opClassAndUnknownOptionalAsync(const APtr& p, const ::std::optional<VarStruct>& ovs, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opClassAndUnknownOptionalAsync(const APtr& p, const ::std::optional<VarStruct>& ovs, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opClassAndUnknownOptional(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const APtr&, const ::std::optional<VarStruct>&, const ::Ice::Context&) const;
    /// \endcond

    void opVoid(::std::optional<::std::int32_t> a, ::std::optional<::std::string_view> v, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> opVoidAsync(::std::optional<::std::int32_t> a, ::std::optional<::std::string_view> v, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    opVoidAsync(::std::optional<::std::int32_t> a, ::std::optional<::std::string_view> v, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_opVoid(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, ::std::optional<::std::int32_t>, ::std::optional<::std::string_view>, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    Initial2Prx(const Initial2Prx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    Initial2Prx(Initial2Prx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    Initial2Prx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    Initial2Prx& operator=(const Initial2Prx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    Initial2Prx& operator=(Initial2Prx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static Initial2Prx _fromReference(::IceInternal::ReferencePtr ref) { return Initial2Prx(::std::move(ref)); }

protected:

    Initial2Prx() = default;

    explicit Initial2Prx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class Initial2 : public virtual ::Ice::Object
{
public:

    using ProxyType = Initial2Prx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    virtual void opClassAndUnknownOptional(APtr p, ::std::optional<VarStruct> ovs, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opClassAndUnknownOptional(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void opVoid(::std::optional<::std::int32_t> a, ::std::optional<::std::string> v, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_opVoid(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using Initial2Ptr = ::std::shared_ptr<Initial2>;

}

#include <Ice/PopDisableWarnings.h>
#endif
