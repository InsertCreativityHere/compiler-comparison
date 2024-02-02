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

class Clock;
class ClockPrx;

}

namespace Test
{

}

namespace Test
{

class Clock : public virtual ::Ice::Object
{
public:

    using ProxyType = ClockPrx;

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

    virtual void tick(::std::string time, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_tick(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class ClockPrx : public virtual ::Ice::Proxy<ClockPrx, ::Ice::ObjectPrx>
{
public:

    void tick(const ::std::string& time, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ClockPrx::_iceI_tick, time, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto tickAsync(const ::std::string& time, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ClockPrx::_iceI_tick, time, context);
    }

    ::std::function<void()>
    tickAsync(const ::std::string& time,
              ::std::function<void()> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ClockPrx::_iceI_tick, time, context);
    }

    /// \cond INTERNAL
    void _iceI_tick(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::string&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    ClockPrx() = default;
    friend ::std::shared_ptr<ClockPrx> IceInternal::createProxy<ClockPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond INTERNAL
namespace Test
{

using ClockPtr = ::std::shared_ptr<Clock>;
using ClockPrxPtr = ::std::shared_ptr<ClockPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
