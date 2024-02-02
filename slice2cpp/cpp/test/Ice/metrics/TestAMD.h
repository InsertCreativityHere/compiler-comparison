//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __TestAMD_h__
#define __TestAMD_h__

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

class Metrics;
class MetricsPrx;
class Controller;
class ControllerPrx;

}

namespace Test
{

class UserEx : public ::Ice::UserExceptionHelper<UserEx, ::Ice::UserException>
{
public:

    virtual ~UserEx();

    UserEx(const UserEx&) = default;

    UserEx() = default;

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<> ice_tuple() const
    {
        return std::tie();
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static UserEx _iceS_UserEx_init;
/// \endcond

using ByteSeq = ::std::vector<::Ice::Byte>;

}

namespace Test
{

class Metrics : public virtual ::Ice::Object
{
public:

    using ProxyType = MetricsPrx;

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

    virtual void opAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void failAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_fail(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opWithUserExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithUserException(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opWithRequestFailedExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithRequestFailedException(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opWithLocalExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithLocalException(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opWithUnknownExceptionAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opWithUnknownException(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opByteSAsync(ByteSeq bs, ::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opByteS(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::std::shared_ptr<::Ice::ObjectPrx> getAdmin(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getAdmin(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class Controller : public virtual ::Ice::Object
{
public:

    using ProxyType = ControllerPrx;

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

    virtual void hold(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_hold(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void resume(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_resume(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class MetricsPrx : public virtual ::Ice::Proxy<MetricsPrx, ::Ice::ObjectPrx>
{
public:

    void op(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_op, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_op, context);
    }

    ::std::function<void()>
    opAsync(::std::function<void()> response,
            ::std::function<void(::std::exception_ptr)> ex = nullptr,
            ::std::function<void(bool)> sent = nullptr,
            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_op, context);
    }

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void fail(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_fail, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto failAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_fail, context);
    }

    ::std::function<void()>
    failAsync(::std::function<void()> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_fail, context);
    }

    /// \cond INTERNAL
    void _iceI_fail(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opWithUserException(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithUserException, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithUserExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_opWithUserException, context);
    }

    ::std::function<void()>
    opWithUserExceptionAsync(::std::function<void()> response,
                             ::std::function<void(::std::exception_ptr)> ex = nullptr,
                             ::std::function<void(bool)> sent = nullptr,
                             const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithUserException, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithUserException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opWithRequestFailedException(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithRequestFailedException, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithRequestFailedExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_opWithRequestFailedException, context);
    }

    ::std::function<void()>
    opWithRequestFailedExceptionAsync(::std::function<void()> response,
                                      ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                      ::std::function<void(bool)> sent = nullptr,
                                      const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithRequestFailedException, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithRequestFailedException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opWithLocalException(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithLocalException, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithLocalExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_opWithLocalException, context);
    }

    ::std::function<void()>
    opWithLocalExceptionAsync(::std::function<void()> response,
                              ::std::function<void(::std::exception_ptr)> ex = nullptr,
                              ::std::function<void(bool)> sent = nullptr,
                              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithLocalException, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithLocalException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opWithUnknownException(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opWithUnknownException, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opWithUnknownExceptionAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_opWithUnknownException, context);
    }

    ::std::function<void()>
    opWithUnknownExceptionAsync(::std::function<void()> response,
                                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                ::std::function<void(bool)> sent = nullptr,
                                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_opWithUnknownException, context);
    }

    /// \cond INTERNAL
    void _iceI_opWithUnknownException(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void opByteS(const ByteSeq& bs, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_opByteS, bs, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opByteSAsync(const ByteSeq& bs, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_opByteS, bs, context);
    }

    ::std::function<void()>
    opByteSAsync(const ByteSeq& bs,
                 ::std::function<void()> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_opByteS, bs, context);
    }

    /// \cond INTERNAL
    void _iceI_opByteS(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ByteSeq&, const ::Ice::Context&);
    /// \endcond

    ::std::shared_ptr<::Ice::ObjectPrx> getAdmin(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Ice::ObjectPrx>>(true, this, &MetricsPrx::_iceI_getAdmin, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getAdminAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Ice::ObjectPrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Ice::ObjectPrx>, P>(false, this, &MetricsPrx::_iceI_getAdmin, context);
    }

    ::std::function<void()>
    getAdminAsync(::std::function<void(::std::shared_ptr<::Ice::ObjectPrx>)> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Ice::ObjectPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_getAdmin, context);
    }

    /// \cond INTERNAL
    void _iceI_getAdmin(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>&, const ::Ice::Context&);
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MetricsPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MetricsPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MetricsPrx::_iceI_shutdown, context);
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
    MetricsPrx() = default;
    friend ::std::shared_ptr<MetricsPrx> IceInternal::createProxy<MetricsPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class ControllerPrx : public virtual ::Ice::Proxy<ControllerPrx, ::Ice::ObjectPrx>
{
public:

    void hold(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_hold, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto holdAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ControllerPrx::_iceI_hold, context);
    }

    ::std::function<void()>
    holdAsync(::std::function<void()> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ControllerPrx::_iceI_hold, context);
    }

    /// \cond INTERNAL
    void _iceI_hold(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    void resume(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &ControllerPrx::_iceI_resume, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto resumeAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &ControllerPrx::_iceI_resume, context);
    }

    ::std::function<void()>
    resumeAsync(::std::function<void()> response,
                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                ::std::function<void(bool)> sent = nullptr,
                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::ControllerPrx::_iceI_resume, context);
    }

    /// \cond INTERNAL
    void _iceI_resume(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    ControllerPrx() = default;
    friend ::std::shared_ptr<ControllerPrx> IceInternal::createProxy<ControllerPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using MetricsPtr = ::std::shared_ptr<Metrics>;
using MetricsPrxPtr = ::std::shared_ptr<MetricsPrx>;

using ControllerPtr = ::std::shared_ptr<Controller>;
using ControllerPrxPtr = ::std::shared_ptr<ControllerPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
