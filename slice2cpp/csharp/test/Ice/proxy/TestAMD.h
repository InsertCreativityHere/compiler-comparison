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
#include <Ice/Context.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{

class MyClass;
class MyClassPrx;
class MyDerivedClass;
class MyDerivedClassPrx;

}

namespace Test
{

}

namespace Test
{

class MyClass : public virtual ::Ice::Object
{
public:

    using ProxyType = MyClassPrx;

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

    virtual void shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void getContextAsync(::std::function<void(const ::Ice::Context& returnValue)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getContext(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

class MyDerivedClass : public virtual MyClass
{
public:

    using ProxyType = MyDerivedClassPrx;

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

    virtual void echoAsync(::std::shared_ptr<::Ice::ObjectPrx> obj, ::std::function<void(const ::std::shared_ptr<::Ice::ObjectPrx>& returnValue)> response, ::std::function<void(::std::exception_ptr)> exception, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_echo(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class MyClassPrx : public virtual ::Ice::Proxy<MyClassPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &MyClassPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &MyClassPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_shutdown, context);
    }

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    ::Ice::Context getContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Ice::Context>(true, this, &MyClassPrx::_iceI_getContext, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getContextAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Ice::Context>>().get_future())
    {
        return _makePromiseOutgoing<::Ice::Context, P>(false, this, &MyClassPrx::_iceI_getContext, context);
    }

    ::std::function<void()>
    getContextAsync(::std::function<void(::Ice::Context)> response,
                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                    ::std::function<void(bool)> sent = nullptr,
                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::Ice::Context>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyClassPrx::_iceI_getContext, context);
    }

    /// \cond INTERNAL
    void _iceI_getContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::Context>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    MyClassPrx() = default;
    friend ::std::shared_ptr<MyClassPrx> IceInternal::createProxy<MyClassPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

class MyDerivedClassPrx : public virtual ::Ice::Proxy<MyDerivedClassPrx, MyClassPrx>
{
public:

    ::std::shared_ptr<::Ice::ObjectPrx> echo(const ::std::shared_ptr<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Ice::ObjectPrx>>(true, this, &MyDerivedClassPrx::_iceI_echo, obj, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto echoAsync(const ::std::shared_ptr<::Ice::ObjectPrx>& obj, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::shared_ptr<::Ice::ObjectPrx>>>().get_future())
    {
        return _makePromiseOutgoing<::std::shared_ptr<::Ice::ObjectPrx>, P>(false, this, &MyDerivedClassPrx::_iceI_echo, obj, context);
    }

    ::std::function<void()>
    echoAsync(const ::std::shared_ptr<::Ice::ObjectPrx>& obj,
              ::std::function<void(::std::shared_ptr<::Ice::ObjectPrx>)> response,
              ::std::function<void(::std::exception_ptr)> ex = nullptr,
              ::std::function<void(bool)> sent = nullptr,
              const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<::std::shared_ptr<::Ice::ObjectPrx>>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyDerivedClassPrx::_iceI_echo, obj, context);
    }

    /// \cond INTERNAL
    void _iceI_echo(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<::Ice::ObjectPrx>>>&, const ::std::shared_ptr<::Ice::ObjectPrx>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    MyDerivedClassPrx() = default;
    friend ::std::shared_ptr<MyDerivedClassPrx> IceInternal::createProxy<MyDerivedClassPrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond INTERNAL
namespace Test
{

using MyClassPtr = ::std::shared_ptr<MyClass>;
using MyClassPrxPtr = ::std::shared_ptr<MyClassPrx>;

using MyDerivedClassPtr = ::std::shared_ptr<MyDerivedClass>;
using MyDerivedClassPrxPtr = ::std::shared_ptr<MyDerivedClassPrx>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
