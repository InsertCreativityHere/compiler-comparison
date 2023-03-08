//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ObjectsForward.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __ObjectsForward_h__
#define __ObjectsForward_h__

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

class F1;
class F2;
class F2Prx;

}

namespace Test
{

class F2 : public virtual ::Ice::Object
{
public:

    using ProxyType = F2Prx;

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

    virtual void op(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class F1 : public ::Ice::ValueHelper<F1, ::Ice::Value>
{
public:

    virtual ~F1();

    F1() = default;

    F1(const F1&) = default;
    F1(F1&&) = default;
    F1& operator=(const F1&) = default;
    F1& operator=(F1&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    explicit F1(const ::std::string& name) :
        name(name)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(name);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string name;
};

/// \cond INTERNAL
static F1 _iceS_F1_init;
/// \endcond

}

namespace Test
{

class F2Prx : public virtual ::Ice::Proxy<F2Prx, ::Ice::ObjectPrx>
{
public:

    void op(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &F2Prx::_iceI_op, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opAsync(const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &F2Prx::_iceI_op, context);
    }

    ::std::function<void()>
    opAsync(::std::function<void()> response,
            ::std::function<void(::std::exception_ptr)> ex = nullptr,
            ::std::function<void(bool)> sent = nullptr,
            const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLamdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::F2Prx::_iceI_op, context);
    }

    /// \cond INTERNAL
    void _iceI_op(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    F2Prx() = default;
    friend ::std::shared_ptr<F2Prx> IceInternal::createProxy<F2Prx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamReader<::Test::F1, S>
{
    static void read(S* istr, ::Test::F1& v)
    {
        istr->readAll(v.name);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using F1Ptr = ::std::shared_ptr<F1>;

using F2Ptr = ::std::shared_ptr<F2>;
using F2PrxPtr = ::std::shared_ptr<F2Prx>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class F1;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< F1>&);
::IceProxy::Ice::Object* upCast(F1*);
/// \endcond

class F2;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< F2>&);
::IceProxy::Ice::Object* upCast(F2*);
/// \endcond

}

}

namespace Test
{

class F1;
/// \cond INTERNAL
::Ice::Object* upCast(F1*);
/// \endcond
typedef ::IceInternal::Handle< F1> F1Ptr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::F1> F1Prx;
typedef F1Prx F1PrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(F1Ptr&, const ::Ice::ObjectPtr&);
/// \endcond

class F2;
/// \cond INTERNAL
::Ice::Object* upCast(F2*);
/// \endcond
typedef ::IceInternal::Handle< F2> F2Ptr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::F2> F2Prx;
typedef F2Prx F2PrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(F2Ptr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::F2::begin_op.
 * Create a wrapper instance by calling ::Test::newCallback_F2_op.
 */
class Callback_F2_op_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_F2_op_Base> Callback_F2_opPtr;

}

namespace IceProxy
{

namespace Test
{

class F1 : public virtual ::Ice::Proxy<F1, ::IceProxy::Ice::Object>
{
public:

    /**
     * Obtains the Slice type ID corresponding to this class.
     * @return A fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:
    /// \cond INTERNAL

    virtual ::IceProxy::Ice::Object* _newInstance() const;
    /// \endcond
};

class F2 : public virtual ::Ice::Proxy<F2, ::IceProxy::Ice::Object>
{
public:

    void op(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        end_op(_iceI_begin_op(context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_op(const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_op(context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_op(const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_op(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_op(const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_op(context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_op(const ::Test::Callback_F2_opPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_op(::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_op(const ::Ice::Context& context, const ::Test::Callback_F2_opPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_op(context, cb, cookie);
    }

    void end_op(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_op(const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

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

class F1 : public virtual ::Ice::Object
{
public:

    typedef F1Prx ProxyType;
    typedef F1Ptr PointerType;

    virtual ~F1();

    F1()
    {
    }

    /**
     * One-shot constructor to initialize all data members.
     */
    explicit F1(const ::std::string& name) :
        name(name)
    {
    }

#ifdef ICE_CPP11_COMPILER
    F1(const F1&) = default;
    F1& operator=(const F1&) = default;
#endif

    /**
     * Polymorphically clones this object.
     * @return A shallow copy of this object.
     */
    virtual ::Ice::ObjectPtr ice_clone() const;

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

    /**
     * Obtains a value factory that instantiates this class.
     * @return The value factory.
     */
    static ::Ice::ValueFactoryPtr ice_factory();

protected:

    /// \cond STREAM
    virtual void _iceWriteImpl(::Ice::OutputStream*) const;
    virtual void _iceReadImpl(::Ice::InputStream*);
    /// \endcond

public:

    ::std::string name;
};
/// \cond INTERNAL
static ::Ice::ValueFactoryPtr _iceS_F1_init = ::Test::F1::ice_factory();
/// \endcond

/// \cond INTERNAL
inline bool operator==(const F1& lhs, const F1& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const F1& lhs, const F1& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

class F2 : public virtual ::Ice::Object
{
public:

    typedef F2Prx ProxyType;
    typedef F2Ptr PointerType;

    virtual ~F2();

#ifdef ICE_CPP11_COMPILER
    F2() = default;
    F2(const F2&) = default;
    F2& operator=(const F2&) = default;
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

    virtual void op(const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_op(::IceInternal::Incoming&, const ::Ice::Current&);
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
inline bool operator==(const F2& lhs, const F2& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const F2& lhs, const F2& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter< ::Test::F1, S>
{
    static void write(S* ostr, const ::Test::F1& v)
    {
        ostr->write(v.name);
    }
};

template<typename S>
struct StreamReader< ::Test::F1, S>
{
    static void read(S* istr, ::Test::F1& v)
    {
        istr->read(v.name);
    }
};

}
/// \endcond

namespace Test
{

/**
 * Type-safe asynchronous callback wrapper class used for calls to
 * IceProxy::Test::F2::begin_op.
 * Create a wrapper instance by calling ::Test::newCallback_F2_op.
 */
template<class T>
class CallbackNC_F2_op : public Callback_F2_op_Base, public ::IceInternal::OnewayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)();

    CallbackNC_F2_op(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T> Callback_F2_opPtr
newCallback_F2_op(const IceUtil::Handle<T>& instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_F2_op<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T> Callback_F2_opPtr
newCallback_F2_op(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_F2_op<T>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T> Callback_F2_opPtr
newCallback_F2_op(T* instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_F2_op<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T> Callback_F2_opPtr
newCallback_F2_op(T* instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_F2_op<T>(instance, 0, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::F2::begin_op.
 * Create a wrapper instance by calling ::Test::newCallback_F2_op.
 */
template<class T, typename CT>
class Callback_F2_op : public Callback_F2_op_Base, public ::IceInternal::OnewayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const CT&);

    Callback_F2_op(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T, typename CT> Callback_F2_opPtr
newCallback_F2_op(const IceUtil::Handle<T>& instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_F2_op<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T, typename CT> Callback_F2_opPtr
newCallback_F2_op(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_F2_op<T, CT>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T, typename CT> Callback_F2_opPtr
newCallback_F2_op(T* instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_F2_op<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::F2::begin_op.
 */
template<class T, typename CT> Callback_F2_opPtr
newCallback_F2_op(T* instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_F2_op<T, CT>(instance, 0, excb, sentcb);
}

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
