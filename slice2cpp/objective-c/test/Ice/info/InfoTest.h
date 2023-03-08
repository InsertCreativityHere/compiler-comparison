//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `InfoTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __InfoTest_h__
#define __InfoTest_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/ProxyF.h>
#include <Ice/ObjectF.h>
#include <Ice/ValueF.h>
#include <Ice/Exception.h>
#include <Ice/LocalObject.h>
#include <Ice/StreamHelpers.h>
#include <Ice/Comparable.h>
#include <Ice/Proxy.h>
#include <Ice/Object.h>
#include <Ice/GCObject.h>
#include <Ice/Value.h>
#include <Ice/Incoming.h>
#include <Ice/FactoryTableInit.h>
#include <IceUtil/ScopedArray.h>
#include <Ice/Optional.h>
#include <Ice/Current.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 9
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace Test
{

class TestIntf;
class TestIntfPrx;

}

namespace Test
{

class TestIntf : public virtual ::Ice::Object
{
public:

    using ProxyType = TestIntfPrx;

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

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::Ice::Context getEndpointInfoAsContext(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getEndpointInfoAsContext(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::Ice::Context getConnectionInfoAsContext(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getConnectionInfoAsContext(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class TestIntfPrx : public virtual ::Ice::Proxy<TestIntfPrx, ::Ice::ObjectPrx>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &TestIntfPrx::_iceI_shutdown, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &TestIntfPrx::_iceI_shutdown, context);
    }

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response,
                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                  ::std::function<void(bool)> sent = nullptr,
                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLamdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_shutdown, context);
    }

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    ::Ice::Context getEndpointInfoAsContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Ice::Context>(true, this, &TestIntfPrx::_iceI_getEndpointInfoAsContext, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getEndpointInfoAsContextAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Ice::Context>>().get_future())
    {
        return _makePromiseOutgoing<::Ice::Context, P>(false, this, &TestIntfPrx::_iceI_getEndpointInfoAsContext, context);
    }

    ::std::function<void()>
    getEndpointInfoAsContextAsync(::std::function<void(::Ice::Context)> response,
                                  ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                  ::std::function<void(bool)> sent = nullptr,
                                  const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLamdaOutgoing<::Ice::Context>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_getEndpointInfoAsContext, context);
    }

    /// \cond INTERNAL
    void _iceI_getEndpointInfoAsContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::Context>>&, const ::Ice::Context&);
    /// \endcond

    ::Ice::Context getConnectionInfoAsContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::Ice::Context>(true, this, &TestIntfPrx::_iceI_getConnectionInfoAsContext, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getConnectionInfoAsContextAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::Ice::Context>>().get_future())
    {
        return _makePromiseOutgoing<::Ice::Context, P>(false, this, &TestIntfPrx::_iceI_getConnectionInfoAsContext, context);
    }

    ::std::function<void()>
    getConnectionInfoAsContextAsync(::std::function<void(::Ice::Context)> response,
                                    ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                    ::std::function<void(bool)> sent = nullptr,
                                    const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLamdaOutgoing<::Ice::Context>(std::move(response), std::move(ex), std::move(sent), this, &Test::TestIntfPrx::_iceI_getConnectionInfoAsContext, context);
    }

    /// \cond INTERNAL
    void _iceI_getConnectionInfoAsContext(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::Ice::Context>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    TestIntfPrx() = default;
    friend ::std::shared_ptr<TestIntfPrx> IceInternal::createProxy<TestIntfPrx>();

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

using TestIntfPtr = ::std::shared_ptr<TestIntf>;
using TestIntfPrxPtr = ::std::shared_ptr<TestIntfPrx>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class TestIntf;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< TestIntf>&);
::IceProxy::Ice::Object* upCast(TestIntf*);
/// \endcond

}

}

namespace Test
{

class TestIntf;
/// \cond INTERNAL
::Ice::Object* upCast(TestIntf*);
/// \endcond
typedef ::IceInternal::Handle< TestIntf> TestIntfPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::TestIntf> TestIntfPrx;
typedef TestIntfPrx TestIntfPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(TestIntfPtr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::TestIntf::begin_shutdown.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_shutdown.
 */
class Callback_TestIntf_shutdown_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_TestIntf_shutdown_Base> Callback_TestIntf_shutdownPtr;

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_getEndpointInfoAsContext.
 */
class Callback_TestIntf_getEndpointInfoAsContext_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_TestIntf_getEndpointInfoAsContext_Base> Callback_TestIntf_getEndpointInfoAsContextPtr;

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_getConnectionInfoAsContext.
 */
class Callback_TestIntf_getConnectionInfoAsContext_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_TestIntf_getConnectionInfoAsContext_Base> Callback_TestIntf_getConnectionInfoAsContextPtr;

}

namespace IceProxy
{

namespace Test
{

class TestIntf : public virtual ::Ice::Proxy<TestIntf, ::IceProxy::Ice::Object>
{
public:

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        end_shutdown(_iceI_begin_shutdown(context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_shutdown(context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_shutdown(const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_shutdown(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_shutdown(const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_shutdown(context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_shutdown(const ::Test::Callback_TestIntf_shutdownPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_shutdown(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_shutdown(const ::Ice::Context& context, const ::Test::Callback_TestIntf_shutdownPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_shutdown(context, cb, cookie);
    }

    void end_shutdown(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_shutdown(const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

public:

    ::Ice::Context getEndpointInfoAsContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return end_getEndpointInfoAsContext(_iceI_begin_getEndpointInfoAsContext(context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_getEndpointInfoAsContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_getEndpointInfoAsContext(context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_getEndpointInfoAsContext(const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getEndpointInfoAsContext(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getEndpointInfoAsContext(const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getEndpointInfoAsContext(context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getEndpointInfoAsContext(const ::Test::Callback_TestIntf_getEndpointInfoAsContextPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getEndpointInfoAsContext(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getEndpointInfoAsContext(const ::Ice::Context& context, const ::Test::Callback_TestIntf_getEndpointInfoAsContextPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getEndpointInfoAsContext(context, cb, cookie);
    }

    ::Ice::Context end_getEndpointInfoAsContext(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_getEndpointInfoAsContext(const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

public:

    ::Ice::Context getConnectionInfoAsContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return end_getConnectionInfoAsContext(_iceI_begin_getConnectionInfoAsContext(context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_getConnectionInfoAsContext(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_getConnectionInfoAsContext(context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_getConnectionInfoAsContext(const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getConnectionInfoAsContext(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getConnectionInfoAsContext(const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getConnectionInfoAsContext(context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getConnectionInfoAsContext(const ::Test::Callback_TestIntf_getConnectionInfoAsContextPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getConnectionInfoAsContext(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getConnectionInfoAsContext(const ::Ice::Context& context, const ::Test::Callback_TestIntf_getConnectionInfoAsContextPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getConnectionInfoAsContext(context, cb, cookie);
    }

    ::Ice::Context end_getConnectionInfoAsContext(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_getConnectionInfoAsContext(const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

public:

    /**
     * Obtains the Slice type ID corresponding to this interface.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:
    /// \cond INTERNAL

    virtual ::IceProxy::Ice::Object* _newInstance() const;
    /// \endcond
};

}

}

namespace Test
{

class TestIntf : public virtual ::Ice::Object
{
public:

    typedef TestIntfPrx ProxyType;
    typedef TestIntfPtr PointerType;

    virtual ~TestIntf();

#ifdef ICE_CPP11_COMPILER
    TestIntf() = default;
    TestIntf(const TestIntf&) = default;
    TestIntf& operator=(const TestIntf&) = default;
#endif

    /**
     * Determines whether this object supports an interface with the given Slice type ID.
     * @param id The fully-scoped Slice type ID.
     * @param current The Current object for the invocation.
     * @return True if this object supports the interface, false, otherwise.
     */
    virtual bool ice_isA(const ::std::string& id, const ::Ice::Current& current = ::Ice::emptyCurrent) const;

    /**
     * Obtains a list of the Slice type IDs representing the interfaces supported by this object.
     * @param current The Current object for the invocation.
     * @return A list of fully-scoped type IDs.
     */
    virtual ::std::vector< ::std::string> ice_ids(const ::Ice::Current& current = ::Ice::emptyCurrent) const;

    /**
     * Obtains a Slice type ID representing the most-derived interface supported by this object.
     * @param current The Current object for the invocation.
     * @return A fully-scoped type ID.
     */
    virtual const ::std::string& ice_id(const ::Ice::Current& current = ::Ice::emptyCurrent) const;

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    virtual void shutdown(const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_shutdown(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::Ice::Context getEndpointInfoAsContext(const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_getEndpointInfoAsContext(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual ::Ice::Context getConnectionInfoAsContext(const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_getConnectionInfoAsContext(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

protected:

    /// \cond STREAM
    virtual void _iceWriteImpl(::Ice::OutputStream*) const;
    virtual void _iceReadImpl(::Ice::InputStream*);
    /// \endcond
};

/// \cond INTERNAL
inline bool operator==(const TestIntf& lhs, const TestIntf& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const TestIntf& lhs, const TestIntf& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

namespace Test
{

/**
 * Type-safe asynchronous callback wrapper class used for calls to
 * IceProxy::Test::TestIntf::begin_shutdown.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_shutdown.
 */
template<class T>
class CallbackNC_TestIntf_shutdown : public Callback_TestIntf_shutdown_Base, public ::IceInternal::OnewayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)();

    CallbackNC_TestIntf_shutdown(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::OnewayCallbackNC<T>(obj, cb, excb, sentcb)
    {
    }
};

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(const IceUtil::Handle<T>& instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_shutdown<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_shutdown<T>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(T* instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_shutdown<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(T* instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_shutdown<T>(instance, 0, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::TestIntf::begin_shutdown.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_shutdown.
 */
template<class T, typename CT>
class Callback_TestIntf_shutdown : public Callback_TestIntf_shutdown_Base, public ::IceInternal::OnewayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const CT&);

    Callback_TestIntf_shutdown(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::OnewayCallback<T, CT>(obj, cb, excb, sentcb)
    {
    }
};

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T, typename CT> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(const IceUtil::Handle<T>& instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_shutdown<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T, typename CT> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_shutdown<T, CT>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T, typename CT> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(T* instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_shutdown<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_shutdown.
 */
template<class T, typename CT> Callback_TestIntf_shutdownPtr
newCallback_TestIntf_shutdown(T* instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_shutdown<T, CT>(instance, 0, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class used for calls to
 * IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_getEndpointInfoAsContext.
 */
template<class T>
class CallbackNC_TestIntf_getEndpointInfoAsContext : public Callback_TestIntf_getEndpointInfoAsContext_Base, public ::IceInternal::TwowayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)(const ::Ice::Context&);

    CallbackNC_TestIntf_getEndpointInfoAsContext(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::TwowayCallbackNC<T>(obj, cb != 0, excb, sentcb), _response(cb)
    {
    }

    /// \cond INTERNAL
    virtual void completed(const ::Ice::AsyncResultPtr& result) const
    {
        TestIntfPrx proxy = TestIntfPrx::uncheckedCast(result->getProxy());
        ::Ice::Context ret;
        try
        {
            ret = proxy->end_getEndpointInfoAsContext(result);
        }
        catch(const ::Ice::Exception& ex)
        {
            ::IceInternal::CallbackNC<T>::exception(result, ex);
            return;
        }
        if(_response)
        {
            (::IceInternal::CallbackNC<T>::_callback.get()->*_response)(ret);
        }
    }
    /// \endcond

private:

    Response _response;
};

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 */
template<class T> Callback_TestIntf_getEndpointInfoAsContextPtr
newCallback_TestIntf_getEndpointInfoAsContext(const IceUtil::Handle<T>& instance, void (T::*cb)(const ::Ice::Context&), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_getEndpointInfoAsContext<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 */
template<class T> Callback_TestIntf_getEndpointInfoAsContextPtr
newCallback_TestIntf_getEndpointInfoAsContext(T* instance, void (T::*cb)(const ::Ice::Context&), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_getEndpointInfoAsContext<T>(instance, cb, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_getEndpointInfoAsContext.
 */
template<class T, typename CT>
class Callback_TestIntf_getEndpointInfoAsContext : public Callback_TestIntf_getEndpointInfoAsContext_Base, public ::IceInternal::TwowayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const ::Ice::Context&, const CT&);

    Callback_TestIntf_getEndpointInfoAsContext(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::TwowayCallback<T, CT>(obj, cb != 0, excb, sentcb), _response(cb)
    {
    }

    /// \cond INTERNAL
    virtual void completed(const ::Ice::AsyncResultPtr& result) const
    {
        TestIntfPrx proxy = TestIntfPrx::uncheckedCast(result->getProxy());
        ::Ice::Context ret;
        try
        {
            ret = proxy->end_getEndpointInfoAsContext(result);
        }
        catch(const ::Ice::Exception& ex)
        {
            ::IceInternal::Callback<T, CT>::exception(result, ex);
            return;
        }
        if(_response)
        {
            (::IceInternal::Callback<T, CT>::_callback.get()->*_response)(ret, CT::dynamicCast(result->getCookie()));
        }
    }
    /// \endcond

private:

    Response _response;
};

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 */
template<class T, typename CT> Callback_TestIntf_getEndpointInfoAsContextPtr
newCallback_TestIntf_getEndpointInfoAsContext(const IceUtil::Handle<T>& instance, void (T::*cb)(const ::Ice::Context&, const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_getEndpointInfoAsContext<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getEndpointInfoAsContext.
 */
template<class T, typename CT> Callback_TestIntf_getEndpointInfoAsContextPtr
newCallback_TestIntf_getEndpointInfoAsContext(T* instance, void (T::*cb)(const ::Ice::Context&, const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_getEndpointInfoAsContext<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class used for calls to
 * IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_getConnectionInfoAsContext.
 */
template<class T>
class CallbackNC_TestIntf_getConnectionInfoAsContext : public Callback_TestIntf_getConnectionInfoAsContext_Base, public ::IceInternal::TwowayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)(const ::Ice::Context&);

    CallbackNC_TestIntf_getConnectionInfoAsContext(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::TwowayCallbackNC<T>(obj, cb != 0, excb, sentcb), _response(cb)
    {
    }

    /// \cond INTERNAL
    virtual void completed(const ::Ice::AsyncResultPtr& result) const
    {
        TestIntfPrx proxy = TestIntfPrx::uncheckedCast(result->getProxy());
        ::Ice::Context ret;
        try
        {
            ret = proxy->end_getConnectionInfoAsContext(result);
        }
        catch(const ::Ice::Exception& ex)
        {
            ::IceInternal::CallbackNC<T>::exception(result, ex);
            return;
        }
        if(_response)
        {
            (::IceInternal::CallbackNC<T>::_callback.get()->*_response)(ret);
        }
    }
    /// \endcond

private:

    Response _response;
};

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 */
template<class T> Callback_TestIntf_getConnectionInfoAsContextPtr
newCallback_TestIntf_getConnectionInfoAsContext(const IceUtil::Handle<T>& instance, void (T::*cb)(const ::Ice::Context&), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_getConnectionInfoAsContext<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 */
template<class T> Callback_TestIntf_getConnectionInfoAsContextPtr
newCallback_TestIntf_getConnectionInfoAsContext(T* instance, void (T::*cb)(const ::Ice::Context&), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_TestIntf_getConnectionInfoAsContext<T>(instance, cb, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 * Create a wrapper instance by calling ::Test::newCallback_TestIntf_getConnectionInfoAsContext.
 */
template<class T, typename CT>
class Callback_TestIntf_getConnectionInfoAsContext : public Callback_TestIntf_getConnectionInfoAsContext_Base, public ::IceInternal::TwowayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const ::Ice::Context&, const CT&);

    Callback_TestIntf_getConnectionInfoAsContext(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::TwowayCallback<T, CT>(obj, cb != 0, excb, sentcb), _response(cb)
    {
    }

    /// \cond INTERNAL
    virtual void completed(const ::Ice::AsyncResultPtr& result) const
    {
        TestIntfPrx proxy = TestIntfPrx::uncheckedCast(result->getProxy());
        ::Ice::Context ret;
        try
        {
            ret = proxy->end_getConnectionInfoAsContext(result);
        }
        catch(const ::Ice::Exception& ex)
        {
            ::IceInternal::Callback<T, CT>::exception(result, ex);
            return;
        }
        if(_response)
        {
            (::IceInternal::Callback<T, CT>::_callback.get()->*_response)(ret, CT::dynamicCast(result->getCookie()));
        }
    }
    /// \endcond

private:

    Response _response;
};

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 */
template<class T, typename CT> Callback_TestIntf_getConnectionInfoAsContextPtr
newCallback_TestIntf_getConnectionInfoAsContext(const IceUtil::Handle<T>& instance, void (T::*cb)(const ::Ice::Context&, const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_getConnectionInfoAsContext<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::TestIntf::begin_getConnectionInfoAsContext.
 */
template<class T, typename CT> Callback_TestIntf_getConnectionInfoAsContextPtr
newCallback_TestIntf_getConnectionInfoAsContext(T* instance, void (T::*cb)(const ::Ice::Context&, const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_TestIntf_getConnectionInfoAsContext<T, CT>(instance, cb, excb, sentcb);
}

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
