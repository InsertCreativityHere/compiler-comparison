//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Controller.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Controller_h__
#define __Controller_h__

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

class ControllerPrx;

using ControllerPrxPtr = ::std::optional<ControllerPrx>;

}

namespace Test
{

class ControllerPrx : public ::Ice::Proxy<ControllerPrx, ::Ice::ObjectPrx>
{
public:

    void stop(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::future<void> stopAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    stopAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_stop(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId();

    explicit ControllerPrx(const ::Ice::ObjectPrx& other) : ::Ice::ObjectPrx(other)
    {
    }

    ControllerPrx(const ControllerPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    ControllerPrx(ControllerPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    ControllerPrx(const ::std::shared_ptr<::Ice::Communicator>& communicator, const ::std::string& proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    ControllerPrx& operator=(const ControllerPrx& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(rhs);
        return *this;
    }

    ControllerPrx& operator=(ControllerPrx&& rhs) noexcept
    {
        ::Ice::ObjectPrx::operator=(::std::move(rhs));
        return *this;
    }

    /// \cond INTERNAL
    static ControllerPrx _fromReference(::IceInternal::ReferencePtr ref) { return ControllerPrx(::std::move(ref)); }

protected:

    ControllerPrx() = default;

    explicit ControllerPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

class Controller : public virtual ::Ice::Object
{
public:

    using ProxyType = ControllerPrx;

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

    virtual void stop(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_stop(::IceInternal::Incoming&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&) override;
    /// \endcond
};

using ControllerPtr = ::std::shared_ptr<Controller>;

}

#include <IceUtil/PopDisableWarnings.h>
#endif
