//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

class MyObject;
class MyObjectPrx;

}

namespace Test
{

class MyObject : public virtual ::Ice::Object
{
public:

    using ProxyType = MyObjectPrx;

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

    virtual ::std::string getName(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_getName(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class MyObjectPrx : public virtual ::Ice::Proxy<MyObjectPrx, ::Ice::ObjectPrx>
{
public:

    ::std::string getName(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makePromiseOutgoing<::std::string>(true, this, &MyObjectPrx::_iceI_getName, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto getNameAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<::std::string>>().get_future())
    {
        return _makePromiseOutgoing<::std::string, P>(false, this, &MyObjectPrx::_iceI_getName, context);
    }

    ::std::function<void()>
    getNameAsync(::std::function<void(::std::string)> response,
                 ::std::function<void(::std::exception_ptr)> ex = nullptr,
                 ::std::function<void(bool)> sent = nullptr,
                 const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLamdaOutgoing<::std::string>(std::move(response), std::move(ex), std::move(sent), this, &Test::MyObjectPrx::_iceI_getName, context);
    }

    /// \cond INTERNAL
    void _iceI_getName(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::string>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    MyObjectPrx() = default;
    friend ::std::shared_ptr<MyObjectPrx> IceInternal::createProxy<MyObjectPrx>();

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

using MyObjectPtr = ::std::shared_ptr<MyObject>;
using MyObjectPrxPtr = ::std::shared_ptr<MyObjectPrx>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class MyObject;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< MyObject>&);
::IceProxy::Ice::Object* upCast(MyObject*);
/// \endcond

}

}

namespace Test
{

class MyObject;
/// \cond INTERNAL
::Ice::Object* upCast(MyObject*);
/// \endcond
typedef ::IceInternal::Handle< MyObject> MyObjectPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::MyObject> MyObjectPrx;
typedef MyObjectPrx MyObjectPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(MyObjectPtr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::MyObject::begin_getName.
 * Create a wrapper instance by calling ::Test::newCallback_MyObject_getName.
 */
class Callback_MyObject_getName_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_MyObject_getName_Base> Callback_MyObject_getNamePtr;

}

namespace IceProxy
{

namespace Test
{

class MyObject : public virtual ::Ice::Proxy<MyObject, ::IceProxy::Ice::Object>
{
public:

    ::std::string getName(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return end_getName(_iceI_begin_getName(context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_getName(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_getName(context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_getName(const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getName(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getName(const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getName(context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getName(const ::Test::Callback_MyObject_getNamePtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getName(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_getName(const ::Ice::Context& context, const ::Test::Callback_MyObject_getNamePtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_getName(context, cb, cookie);
    }

    ::std::string end_getName(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_getName(const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

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

class MyObject : public virtual ::Ice::Object
{
public:

    typedef MyObjectPrx ProxyType;
    typedef MyObjectPtr PointerType;

    virtual ~MyObject();

#ifdef ICE_CPP11_COMPILER
    MyObject() = default;
    MyObject(const MyObject&) = default;
    MyObject& operator=(const MyObject&) = default;
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

    virtual ::std::string getName(const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_getName(::IceInternal::Incoming&, const ::Ice::Current&);
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
inline bool operator==(const MyObject& lhs, const MyObject& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const MyObject& lhs, const MyObject& rhs)
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
 * IceProxy::Test::MyObject::begin_getName.
 * Create a wrapper instance by calling ::Test::newCallback_MyObject_getName.
 */
template<class T>
class CallbackNC_MyObject_getName : public Callback_MyObject_getName_Base, public ::IceInternal::TwowayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)(const ::std::string&);

    CallbackNC_MyObject_getName(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::TwowayCallbackNC<T>(obj, cb != 0, excb, sentcb), _response(cb)
    {
    }

    /// \cond INTERNAL
    virtual void completed(const ::Ice::AsyncResultPtr& result) const
    {
        MyObjectPrx proxy = MyObjectPrx::uncheckedCast(result->getProxy());
        ::std::string ret;
        try
        {
            ret = proxy->end_getName(result);
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::MyObject::begin_getName.
 */
template<class T> Callback_MyObject_getNamePtr
newCallback_MyObject_getName(const IceUtil::Handle<T>& instance, void (T::*cb)(const ::std::string&), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_MyObject_getName<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::MyObject::begin_getName.
 */
template<class T> Callback_MyObject_getNamePtr
newCallback_MyObject_getName(T* instance, void (T::*cb)(const ::std::string&), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_MyObject_getName<T>(instance, cb, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::MyObject::begin_getName.
 * Create a wrapper instance by calling ::Test::newCallback_MyObject_getName.
 */
template<class T, typename CT>
class Callback_MyObject_getName : public Callback_MyObject_getName_Base, public ::IceInternal::TwowayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const ::std::string&, const CT&);

    Callback_MyObject_getName(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
        : ::IceInternal::TwowayCallback<T, CT>(obj, cb != 0, excb, sentcb), _response(cb)
    {
    }

    /// \cond INTERNAL
    virtual void completed(const ::Ice::AsyncResultPtr& result) const
    {
        MyObjectPrx proxy = MyObjectPrx::uncheckedCast(result->getProxy());
        ::std::string ret;
        try
        {
            ret = proxy->end_getName(result);
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::MyObject::begin_getName.
 */
template<class T, typename CT> Callback_MyObject_getNamePtr
newCallback_MyObject_getName(const IceUtil::Handle<T>& instance, void (T::*cb)(const ::std::string&, const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_MyObject_getName<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::MyObject::begin_getName.
 */
template<class T, typename CT> Callback_MyObject_getNamePtr
newCallback_MyObject_getName(T* instance, void (T::*cb)(const ::std::string&, const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_MyObject_getName<T, CT>(instance, cb, excb, sentcb);
}

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
