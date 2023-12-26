//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `ClientPrivate.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __ClientPrivate_h__
#define __ClientPrivate_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Test.h>
#include <IceUtil/UndefSysMacros.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION / 100 != 307
#       error Ice version mismatch!
#   endif
#   if ICE_INT_VERSION % 100 >= 50
#       error Beta header file detected
#   endif
#   if ICE_INT_VERSION % 100 < 10
#       error Ice patch level mismatch!
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace Test
{

class D;
class Initial2;
class Initial2Prx;

}

namespace Test
{

class Initial2 : public virtual ::Ice::Object
{
public:

    using ProxyType = Initial2Prx;

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

    virtual void opClassAndUnknownOptional(::std::shared_ptr<A> p, Ice::optional<::std::shared_ptr<::Ice::Value>> o, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opClassAndUnknownOptional(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opVoid(Ice::optional<int> a, Ice::optional<::std::string> v, const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    bool _iceD_opVoid(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    /// \cond INTERNAL
    virtual bool _iceDispatch(::IceInternal::Incoming&, const ::Ice::Current&) override;
    /// \endcond
};

}

namespace Test
{

class D : public ::Ice::ValueHelper<D, B>
{
public:

    virtual ~D();

    D() = default;

    D(const D&) = default;
    D(D&&) = default;
    D& operator=(const D&) = default;
    D& operator=(D&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    D(int requiredA, const Ice::optional<int>& ma, const Ice::optional<int>& mb, const Ice::optional<int>& mc, int requiredB, const Ice::optional<int>& md, const ::std::string& ds, const Ice::optional<::Test::StringSeq>& seq, const Ice::optional<::std::shared_ptr<::Test::A>>& ao) :
        Ice::ValueHelper<D, B>(requiredA, ma, mb, mc, requiredB, md),
        ds(ds),
        seq(seq),
        ao(ao)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&, const Ice::optional<int>&, const Ice::optional<int>&, const Ice::optional<int>&, const int&, const Ice::optional<int>&, const ::std::string&, const Ice::optional<::Test::StringSeq>&, const Ice::optional<::std::shared_ptr<::Test::A>>&> ice_tuple() const
    {
        return std::tie(requiredA, ma, mb, mc, requiredB, md, ds, seq, ao);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string ds;
    Ice::optional<::Test::StringSeq> seq;
    Ice::optional<::std::shared_ptr<::Test::A>> ao;
};

/// \cond INTERNAL
static D _iceS_D_init;
/// \endcond

}

namespace Test
{

class Initial2Prx : public virtual ::Ice::Proxy<Initial2Prx, ::Ice::ObjectPrx>
{
public:

    void opClassAndUnknownOptional(const ::std::shared_ptr<A>& p, const Ice::optional<::std::shared_ptr<::Ice::Value>>& o, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &Initial2Prx::_iceI_opClassAndUnknownOptional, p, o, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opClassAndUnknownOptionalAsync(const ::std::shared_ptr<A>& p, const Ice::optional<::std::shared_ptr<::Ice::Value>>& o, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &Initial2Prx::_iceI_opClassAndUnknownOptional, p, o, context);
    }

    ::std::function<void()>
    opClassAndUnknownOptionalAsync(const ::std::shared_ptr<A>& p, const Ice::optional<::std::shared_ptr<::Ice::Value>>& o,
                                   ::std::function<void()> response,
                                   ::std::function<void(::std::exception_ptr)> ex = nullptr,
                                   ::std::function<void(bool)> sent = nullptr,
                                   const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::Initial2Prx::_iceI_opClassAndUnknownOptional, p, o, context);
    }

    /// \cond INTERNAL
    void _iceI_opClassAndUnknownOptional(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::std::shared_ptr<A>&, const Ice::optional<::std::shared_ptr<::Ice::Value>>&, const ::Ice::Context&);
    /// \endcond

    void opVoid(const Ice::optional<int>& a, const Ice::optional<::std::string>& v, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        _makePromiseOutgoing<void>(true, this, &Initial2Prx::_iceI_opVoid, a, v, context).get();
    }

    template<template<typename> class P = ::std::promise>
    auto opVoidAsync(const Ice::optional<int>& a, const Ice::optional<::std::string>& v, const ::Ice::Context& context = ::Ice::noExplicitContext)
        -> decltype(::std::declval<P<void>>().get_future())
    {
        return _makePromiseOutgoing<void, P>(false, this, &Initial2Prx::_iceI_opVoid, a, v, context);
    }

    ::std::function<void()>
    opVoidAsync(const Ice::optional<int>& a, const Ice::optional<::std::string>& v,
                ::std::function<void()> response,
                ::std::function<void(::std::exception_ptr)> ex = nullptr,
                ::std::function<void(bool)> sent = nullptr,
                const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _makeLambdaOutgoing<void>(std::move(response), std::move(ex), std::move(sent), this, &Test::Initial2Prx::_iceI_opVoid, a, v, context);
    }

    /// \cond INTERNAL
    void _iceI_opVoid(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const Ice::optional<int>&, const Ice::optional<::std::string>&, const ::Ice::Context&);
    /// \endcond

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    Initial2Prx() = default;
    friend ::std::shared_ptr<Initial2Prx> IceInternal::createProxy<Initial2Prx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter<::Test::D, S>
{
    static void write(S* ostr, const ::Test::D& v)
    {
        ostr->writeAll(v.ds);
        ostr->writeAll({990, 1000}, v.seq, v.ao);
    }
};

template<typename S>
struct StreamReader<::Test::D, S>
{
    static void read(S* istr, ::Test::D& v)
    {
        istr->readAll(v.ds);
        istr->readAll({990, 1000}, v.seq, v.ao);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using DPtr = ::std::shared_ptr<D>;

using Initial2Ptr = ::std::shared_ptr<Initial2>;
using Initial2PrxPtr = ::std::shared_ptr<Initial2Prx>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class D;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< D>&);
::IceProxy::Ice::Object* upCast(D*);
/// \endcond

class Initial2;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< Initial2>&);
::IceProxy::Ice::Object* upCast(Initial2*);
/// \endcond

}

}

namespace Test
{

class D;
/// \cond INTERNAL
::Ice::Object* upCast(D*);
/// \endcond
typedef ::IceInternal::Handle< D> DPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::D> DPrx;
typedef DPrx DPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(DPtr&, const ::Ice::ObjectPtr&);
/// \endcond

class Initial2;
/// \cond INTERNAL
::Ice::Object* upCast(Initial2*);
/// \endcond
typedef ::IceInternal::Handle< Initial2> Initial2Ptr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::Initial2> Initial2Prx;
typedef Initial2Prx Initial2PrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(Initial2Ptr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 * Create a wrapper instance by calling ::Test::newCallback_Initial2_opClassAndUnknownOptional.
 */
class Callback_Initial2_opClassAndUnknownOptional_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_Initial2_opClassAndUnknownOptional_Base> Callback_Initial2_opClassAndUnknownOptionalPtr;

/**
 * Base class for asynchronous callback wrapper classes used for calls to
 * IceProxy::Test::Initial2::begin_opVoid.
 * Create a wrapper instance by calling ::Test::newCallback_Initial2_opVoid.
 */
class Callback_Initial2_opVoid_Base : public virtual ::IceInternal::CallbackBase { };
typedef ::IceUtil::Handle< Callback_Initial2_opVoid_Base> Callback_Initial2_opVoidPtr;

}

namespace IceProxy
{

namespace Test
{

class D : public virtual ::Ice::Proxy<D, ::IceProxy::Test::B>
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

class Initial2 : public virtual ::Ice::Proxy<Initial2, ::IceProxy::Ice::Object>
{
public:

    void opClassAndUnknownOptional(const ::Test::APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        end_opClassAndUnknownOptional(_iceI_begin_opClassAndUnknownOptional(p, o, context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_opClassAndUnknownOptional(const ::Test::APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_opClassAndUnknownOptional(p, o, context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_opClassAndUnknownOptional(const ::Test::APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opClassAndUnknownOptional(p, o, ::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_opClassAndUnknownOptional(const ::Test::APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opClassAndUnknownOptional(p, o, context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_opClassAndUnknownOptional(const ::Test::APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Test::Callback_Initial2_opClassAndUnknownOptionalPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opClassAndUnknownOptional(p, o, ::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_opClassAndUnknownOptional(const ::Test::APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Ice::Context& context, const ::Test::Callback_Initial2_opClassAndUnknownOptionalPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opClassAndUnknownOptional(p, o, context, cb, cookie);
    }

    void end_opClassAndUnknownOptional(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_opClassAndUnknownOptional(const ::Test::APtr&, const IceUtil::Optional< ::Ice::ObjectPtr>&, const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

public:

    void opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        end_opVoid(_iceI_begin_opVoid(a, v, context, ::IceInternal::dummyCallback, 0, true));
    }

    ::Ice::AsyncResultPtr begin_opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Ice::Context& context = ::Ice::noExplicitContext)
    {
        return _iceI_begin_opVoid(a, v, context, ::IceInternal::dummyCallback, 0);
    }

    ::Ice::AsyncResultPtr begin_opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opVoid(a, v, ::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Ice::Context& context, const ::Ice::CallbackPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opVoid(a, v, context, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Test::Callback_Initial2_opVoidPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opVoid(a, v, ::Ice::noExplicitContext, cb, cookie);
    }

    ::Ice::AsyncResultPtr begin_opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Ice::Context& context, const ::Test::Callback_Initial2_opVoidPtr& cb, const ::Ice::LocalObjectPtr& cookie = 0)
    {
        return _iceI_begin_opVoid(a, v, context, cb, cookie);
    }

    void end_opVoid(const ::Ice::AsyncResultPtr& result);

private:

    ::Ice::AsyncResultPtr _iceI_begin_opVoid(const IceUtil::Optional< ::Ice::Int>&, const IceUtil::Optional< ::std::string>&, const ::Ice::Context&, const ::IceInternal::CallbackBasePtr&, const ::Ice::LocalObjectPtr& cookie = 0, bool sync = false);

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

class D : public B
{
public:

    typedef DPrx ProxyType;
    typedef DPtr PointerType;

    virtual ~D();

    D()
    {
    }

    /**
     * One-shot constructor to initialize all data members.
     */
    D(::Ice::Int requiredA, const IceUtil::Optional< ::Ice::Int>& ma, const IceUtil::Optional< ::Ice::Int>& mb, const IceUtil::Optional< ::Ice::Int>& mc, ::Ice::Int requiredB, const IceUtil::Optional< ::Ice::Int>& md, const ::std::string& ds, const IceUtil::Optional< ::Test::StringSeq>& seq, const IceUtil::Optional< ::Test::APtr>& ao) :
        ::Test::B(requiredA, ma, mb, mc, requiredB, md),
        ds(ds),
        seq(seq),
        ao(ao)
    {
    }

#ifdef ICE_CPP11_COMPILER
    D(const D&) = default;
    D& operator=(const D&) = default;
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
    /// \cond INTERNAL
    virtual void _iceGcVisitMembers(::IceInternal::GCVisitor&);
    /// \endcond

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

    ::std::string ds;
    IceUtil::Optional< ::Test::StringSeq> seq;
    IceUtil::Optional< ::Test::APtr> ao;
};
/// \cond INTERNAL
static ::Ice::ValueFactoryPtr _iceS_D_init = ::Test::D::ice_factory();
/// \endcond

/// \cond INTERNAL
inline bool operator==(const D& lhs, const D& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const D& lhs, const D& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

class Initial2 : public virtual ::Ice::Object
{
public:

    typedef Initial2Prx ProxyType;
    typedef Initial2Ptr PointerType;

    virtual ~Initial2();

#ifdef ICE_CPP11_COMPILER
    Initial2() = default;
    Initial2(const Initial2&) = default;
    Initial2& operator=(const Initial2&) = default;
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

    virtual void opClassAndUnknownOptional(const APtr& p, const IceUtil::Optional< ::Ice::ObjectPtr>& o, const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_opClassAndUnknownOptional(::IceInternal::Incoming&, const ::Ice::Current&);
    /// \endcond

    virtual void opVoid(const IceUtil::Optional< ::Ice::Int>& a, const IceUtil::Optional< ::std::string>& v, const ::Ice::Current& current = ::Ice::emptyCurrent) = 0;
    /// \cond INTERNAL
    bool _iceD_opVoid(::IceInternal::Incoming&, const ::Ice::Current&);
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
inline bool operator==(const Initial2& lhs, const Initial2& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const Initial2& lhs, const Initial2& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter< ::Test::D, S>
{
    static void write(S* ostr, const ::Test::D& v)
    {
        ostr->write(v.ds);
        ostr->write(990, v.seq);
        ostr->write(1000, v.ao);
    }
};

template<typename S>
struct StreamReader< ::Test::D, S>
{
    static void read(S* istr, ::Test::D& v)
    {
        istr->read(v.ds);
        istr->read(990, v.seq);
        istr->read(1000, v.ao);
    }
};

}
/// \endcond

namespace Test
{

/**
 * Type-safe asynchronous callback wrapper class used for calls to
 * IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 * Create a wrapper instance by calling ::Test::newCallback_Initial2_opClassAndUnknownOptional.
 */
template<class T>
class CallbackNC_Initial2_opClassAndUnknownOptional : public Callback_Initial2_opClassAndUnknownOptional_Base, public ::IceInternal::OnewayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)();

    CallbackNC_Initial2_opClassAndUnknownOptional(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(const IceUtil::Handle<T>& instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opClassAndUnknownOptional<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opClassAndUnknownOptional<T>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(T* instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opClassAndUnknownOptional<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(T* instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opClassAndUnknownOptional<T>(instance, 0, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 * Create a wrapper instance by calling ::Test::newCallback_Initial2_opClassAndUnknownOptional.
 */
template<class T, typename CT>
class Callback_Initial2_opClassAndUnknownOptional : public Callback_Initial2_opClassAndUnknownOptional_Base, public ::IceInternal::OnewayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const CT&);

    Callback_Initial2_opClassAndUnknownOptional(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T, typename CT> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(const IceUtil::Handle<T>& instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opClassAndUnknownOptional<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T, typename CT> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opClassAndUnknownOptional<T, CT>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T, typename CT> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(T* instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opClassAndUnknownOptional<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opClassAndUnknownOptional.
 */
template<class T, typename CT> Callback_Initial2_opClassAndUnknownOptionalPtr
newCallback_Initial2_opClassAndUnknownOptional(T* instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opClassAndUnknownOptional<T, CT>(instance, 0, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class used for calls to
 * IceProxy::Test::Initial2::begin_opVoid.
 * Create a wrapper instance by calling ::Test::newCallback_Initial2_opVoid.
 */
template<class T>
class CallbackNC_Initial2_opVoid : public Callback_Initial2_opVoid_Base, public ::IceInternal::OnewayCallbackNC<T>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception&);
    typedef void (T::*Sent)(bool);
    typedef void (T::*Response)();

    CallbackNC_Initial2_opVoid(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(const IceUtil::Handle<T>& instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opVoid<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opVoid<T>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(T* instance, void (T::*cb)(), void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opVoid<T>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(T* instance, void (T::*excb)(const ::Ice::Exception&), void (T::*sentcb)(bool) = 0)
{
    return new CallbackNC_Initial2_opVoid<T>(instance, 0, excb, sentcb);
}

/**
 * Type-safe asynchronous callback wrapper class with cookie support used for calls to
 * IceProxy::Test::Initial2::begin_opVoid.
 * Create a wrapper instance by calling ::Test::newCallback_Initial2_opVoid.
 */
template<class T, typename CT>
class Callback_Initial2_opVoid : public Callback_Initial2_opVoid_Base, public ::IceInternal::OnewayCallback<T, CT>
{
public:

    typedef IceUtil::Handle<T> TPtr;

    typedef void (T::*Exception)(const ::Ice::Exception& , const CT&);
    typedef void (T::*Sent)(bool , const CT&);
    typedef void (T::*Response)(const CT&);

    Callback_Initial2_opVoid(const TPtr& obj, Response cb, Exception excb, Sent sentcb)
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
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T, typename CT> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(const IceUtil::Handle<T>& instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opVoid<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T, typename CT> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(const IceUtil::Handle<T>& instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opVoid<T, CT>(instance, 0, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param cb The success method of the callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T, typename CT> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(T* instance, void (T::*cb)(const CT&), void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opVoid<T, CT>(instance, cb, excb, sentcb);
}

/**
 * Creates a callback wrapper instance that delegates to your object.
 * Use this overload when your callback methods receive a cookie value.
 * @param instance The callback object.
 * @param excb The exception method of the callback object.
 * @param sentcb The sent method of the callback object.
 * @return An object that can be passed to an asynchronous invocation of IceProxy::Test::Initial2::begin_opVoid.
 */
template<class T, typename CT> Callback_Initial2_opVoidPtr
newCallback_Initial2_opVoid(T* instance, void (T::*excb)(const ::Ice::Exception&, const CT&), void (T::*sentcb)(bool, const CT&) = 0)
{
    return new Callback_Initial2_opVoid<T, CT>(instance, 0, excb, sentcb);
}

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
