//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __ServerPrivateAMD_h__
#define __ServerPrivateAMD_h__

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
#include <Ice/IncomingAsync.h>
#include <Ice/FactoryTableInit.h>
#include <IceUtil/ScopedArray.h>
#include <Ice/Optional.h>
#include <Ice/ExceptionHelpers.h>
#include <Ice/SlicedDataF.h>
#include <TestAMD.h>
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

class SPreservedClass;

}

namespace Test
{

class UnknownDerived : public ::Ice::UserExceptionHelper<UnknownDerived, Base>
{
public:

    virtual ~UnknownDerived();

    UnknownDerived(const UnknownDerived&) = default;

    UnknownDerived() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownDerived(const ::std::string& b, const ::std::string& ud) :
        ::Ice::UserExceptionHelper<UnknownDerived, Base>(b),
        ud(ud)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, ud);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string ud;
};

/// \cond INTERNAL
static UnknownDerived _iceS_UnknownDerived_init;
/// \endcond

class UnknownIntermediate : public ::Ice::UserExceptionHelper<UnknownIntermediate, Base>
{
public:

    virtual ~UnknownIntermediate();

    UnknownIntermediate(const UnknownIntermediate&) = default;

    UnknownIntermediate() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownIntermediate(const ::std::string& b, const ::std::string& ui) :
        ::Ice::UserExceptionHelper<UnknownIntermediate, Base>(b),
        ui(ui)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, ui);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string ui;
};

class UnknownMostDerived1 : public ::Ice::UserExceptionHelper<UnknownMostDerived1, KnownIntermediate>
{
public:

    virtual ~UnknownMostDerived1();

    UnknownMostDerived1(const UnknownMostDerived1&) = default;

    UnknownMostDerived1() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownMostDerived1(const ::std::string& b, const ::std::string& ki, const ::std::string& umd1) :
        ::Ice::UserExceptionHelper<UnknownMostDerived1, KnownIntermediate>(b, ki),
        umd1(umd1)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, ki, umd1);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string umd1;
};

class UnknownMostDerived2 : public ::Ice::UserExceptionHelper<UnknownMostDerived2, UnknownIntermediate>
{
public:

    virtual ~UnknownMostDerived2();

    UnknownMostDerived2(const UnknownMostDerived2&) = default;

    UnknownMostDerived2() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownMostDerived2(const ::std::string& b, const ::std::string& ui, const ::std::string& umd2) :
        ::Ice::UserExceptionHelper<UnknownMostDerived2, UnknownIntermediate>(b, ui),
        umd2(umd2)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(b, ui, umd2);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string umd2;
};

class SPreserved1 : public ::Ice::UserExceptionHelper<SPreserved1, KnownPreservedDerived>
{
public:

    virtual ~SPreserved1();

    SPreserved1(const SPreserved1&) = default;

    SPreserved1() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    SPreserved1(const ::std::string& b, const ::std::string& kp, const ::std::string& kpd, const ::std::shared_ptr<BaseClass>& p1) :
        ::Ice::UserExceptionHelper<SPreserved1, KnownPreservedDerived>(b, kp, kpd),
        p1(p1)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&, const ::std::shared_ptr<::Test::BaseClass>&> ice_tuple() const
    {
        return std::tie(b, kp, kpd, p1);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /// \cond STREAM
    virtual bool _usesClasses() const override;
    /// \endcond

    ::std::shared_ptr<::Test::BaseClass> p1;
};

class SPreserved2 : public ::Ice::UserExceptionHelper<SPreserved2, SPreserved1>
{
public:

    virtual ~SPreserved2();

    SPreserved2(const SPreserved2&) = default;

    SPreserved2() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    SPreserved2(const ::std::string& b, const ::std::string& kp, const ::std::string& kpd, const ::std::shared_ptr<BaseClass>& p1, const ::std::shared_ptr<BaseClass>& p2) :
        ::Ice::UserExceptionHelper<SPreserved2, SPreserved1>(b, kp, kpd, p1),
        p2(p2)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&, const ::std::string&, const ::std::shared_ptr<::Test::BaseClass>&, const ::std::shared_ptr<::Test::BaseClass>&> ice_tuple() const
    {
        return std::tie(b, kp, kpd, p1, p2);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::shared_ptr<::Test::BaseClass> p2;
};

}

namespace Test
{

class SPreservedClass : public ::Ice::ValueHelper<SPreservedClass, BaseClass>
{
public:

    virtual ~SPreservedClass();

    SPreservedClass() = default;

    SPreservedClass(const SPreservedClass&) = default;
    SPreservedClass(SPreservedClass&&) = default;
    SPreservedClass& operator=(const SPreservedClass&) = default;
    SPreservedClass& operator=(SPreservedClass&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    SPreservedClass(const ::std::string& bc, const ::std::string& spc) :
        Ice::ValueHelper<SPreservedClass, BaseClass>(bc),
        spc(spc)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(bc, spc);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::string spc;
};

/// \cond INTERNAL
static SPreservedClass _iceS_SPreservedClass_init;
/// \endcond

}

namespace Test
{

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter<::Test::UnknownDerived, S>
{
    static void write(S* ostr, const ::Test::UnknownDerived& v)
    {
        ostr->writeAll(v.ud);
    }
};

template<typename S>
struct StreamReader<::Test::UnknownDerived, S>
{
    static void read(S* istr, ::Test::UnknownDerived& v)
    {
        istr->readAll(v.ud);
    }
};

template<typename S>
struct StreamWriter<::Test::UnknownIntermediate, S>
{
    static void write(S* ostr, const ::Test::UnknownIntermediate& v)
    {
        ostr->writeAll(v.ui);
    }
};

template<typename S>
struct StreamReader<::Test::UnknownIntermediate, S>
{
    static void read(S* istr, ::Test::UnknownIntermediate& v)
    {
        istr->readAll(v.ui);
    }
};

template<typename S>
struct StreamWriter<::Test::UnknownMostDerived1, S>
{
    static void write(S* ostr, const ::Test::UnknownMostDerived1& v)
    {
        ostr->writeAll(v.umd1);
    }
};

template<typename S>
struct StreamReader<::Test::UnknownMostDerived1, S>
{
    static void read(S* istr, ::Test::UnknownMostDerived1& v)
    {
        istr->readAll(v.umd1);
    }
};

template<typename S>
struct StreamWriter<::Test::UnknownMostDerived2, S>
{
    static void write(S* ostr, const ::Test::UnknownMostDerived2& v)
    {
        ostr->writeAll(v.umd2);
    }
};

template<typename S>
struct StreamReader<::Test::UnknownMostDerived2, S>
{
    static void read(S* istr, ::Test::UnknownMostDerived2& v)
    {
        istr->readAll(v.umd2);
    }
};

template<typename S>
struct StreamWriter<::Test::SPreservedClass, S>
{
    static void write(S* ostr, const ::Test::SPreservedClass& v)
    {
        ostr->writeAll(v.spc);
    }
};

template<typename S>
struct StreamReader<::Test::SPreservedClass, S>
{
    static void read(S* istr, ::Test::SPreservedClass& v)
    {
        istr->readAll(v.spc);
    }
};

template<typename S>
struct StreamWriter<::Test::SPreserved1, S>
{
    static void write(S* ostr, const ::Test::SPreserved1& v)
    {
        ostr->writeAll(v.p1);
    }
};

template<typename S>
struct StreamReader<::Test::SPreserved1, S>
{
    static void read(S* istr, ::Test::SPreserved1& v)
    {
        istr->readAll(v.p1);
    }
};

template<typename S>
struct StreamWriter<::Test::SPreserved2, S>
{
    static void write(S* ostr, const ::Test::SPreserved2& v)
    {
        ostr->writeAll(v.p2);
    }
};

template<typename S>
struct StreamReader<::Test::SPreserved2, S>
{
    static void read(S* istr, ::Test::SPreserved2& v)
    {
        istr->readAll(v.p2);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using SPreservedClassPtr = ::std::shared_ptr<SPreservedClass>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class SPreservedClass;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< SPreservedClass>&);
::IceProxy::Ice::Object* upCast(SPreservedClass*);
/// \endcond

}

}

namespace Test
{

class SPreservedClass;
/// \cond INTERNAL
::Ice::Object* upCast(SPreservedClass*);
/// \endcond
typedef ::IceInternal::Handle< SPreservedClass> SPreservedClassPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::SPreservedClass> SPreservedClassPrx;
typedef SPreservedClassPrx SPreservedClassPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(SPreservedClassPtr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

class UnknownDerived : public Base
{
public:

    UnknownDerived() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownDerived(const ::std::string& b, const ::std::string& ud);

#ifdef ICE_CPP11_COMPILER
    UnknownDerived(const UnknownDerived&) = default;
    virtual ~UnknownDerived();
#else
    virtual ~UnknownDerived() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual UnknownDerived* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::std::string ud;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

/// \cond INTERNAL
static UnknownDerived _iceS_UnknownDerived_init;
/// \endcond

class UnknownIntermediate : public Base
{
public:

    UnknownIntermediate() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownIntermediate(const ::std::string& b, const ::std::string& ui);

#ifdef ICE_CPP11_COMPILER
    UnknownIntermediate(const UnknownIntermediate&) = default;
    virtual ~UnknownIntermediate();
#else
    virtual ~UnknownIntermediate() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual UnknownIntermediate* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::std::string ui;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

class UnknownMostDerived1 : public KnownIntermediate
{
public:

    UnknownMostDerived1() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownMostDerived1(const ::std::string& b, const ::std::string& ki, const ::std::string& umd1);

#ifdef ICE_CPP11_COMPILER
    UnknownMostDerived1(const UnknownMostDerived1&) = default;
    virtual ~UnknownMostDerived1();
#else
    virtual ~UnknownMostDerived1() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual UnknownMostDerived1* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::std::string umd1;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

class UnknownMostDerived2 : public UnknownIntermediate
{
public:

    UnknownMostDerived2() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    UnknownMostDerived2(const ::std::string& b, const ::std::string& ui, const ::std::string& umd2);

#ifdef ICE_CPP11_COMPILER
    UnknownMostDerived2(const UnknownMostDerived2&) = default;
    virtual ~UnknownMostDerived2();
#else
    virtual ~UnknownMostDerived2() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual UnknownMostDerived2* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::std::string umd2;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

class SPreserved1 : public KnownPreservedDerived
{
public:

    SPreserved1() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    SPreserved1(const ::std::string& b, const ::std::string& kp, const ::std::string& kpd, const BaseClassPtr& p1);

#ifdef ICE_CPP11_COMPILER
    SPreserved1(const SPreserved1&) = default;
    virtual ~SPreserved1();
#else
    virtual ~SPreserved1() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual SPreserved1* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    /// \cond STREAM
    virtual bool _usesClasses() const;
    /// \endcond

    ::Test::BaseClassPtr p1;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

class SPreserved2 : public SPreserved1
{
public:

    SPreserved2() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    SPreserved2(const ::std::string& b, const ::std::string& kp, const ::std::string& kpd, const BaseClassPtr& p1, const BaseClassPtr& p2);

#ifdef ICE_CPP11_COMPILER
    SPreserved2(const SPreserved2&) = default;
    virtual ~SPreserved2();
#else
    virtual ~SPreserved2() throw();
#endif

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    virtual ::std::string ice_id() const;
    /**
     * Polymorphically clones this exception.
     * @return A shallow copy of this exception.
     */
    virtual SPreserved2* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    ::Test::BaseClassPtr p2;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

}

/// \cond INTERNAL
namespace IceAsync
{

}
/// \endcond

namespace Test
{

}

namespace IceProxy
{

namespace Test
{

class SPreservedClass : public virtual ::Ice::Proxy<SPreservedClass, ::IceProxy::Test::BaseClass>
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

}

}

namespace Test
{

class SPreservedClass : public BaseClass
{
public:

    typedef SPreservedClassPrx ProxyType;
    typedef SPreservedClassPtr PointerType;

    virtual ~SPreservedClass();

    SPreservedClass()
    {
    }

    /**
     * One-shot constructor to initialize all data members.
     */
    SPreservedClass(const ::std::string& bc, const ::std::string& spc) :
        ::Test::BaseClass(bc),
        spc(spc)
    {
    }

#ifdef ICE_CPP11_COMPILER
    SPreservedClass(const SPreservedClass&) = default;
    SPreservedClass& operator=(const SPreservedClass&) = default;
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

    ::std::string spc;
};
/// \cond INTERNAL
static ::Ice::ValueFactoryPtr _iceS_SPreservedClass_init = ::Test::SPreservedClass::ice_factory();
/// \endcond

/// \cond INTERNAL
inline bool operator==(const SPreservedClass& lhs, const SPreservedClass& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const SPreservedClass& lhs, const SPreservedClass& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::UnknownDerived>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::UnknownDerived, S>
{
    static void write(S* ostr, const ::Test::UnknownDerived& v)
    {
        ostr->write(v.ud);
    }
};

template<typename S>
struct StreamReader< ::Test::UnknownDerived, S>
{
    static void read(S* istr, ::Test::UnknownDerived& v)
    {
        istr->read(v.ud);
    }
};

template<>
struct StreamableTraits< ::Test::UnknownIntermediate>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::UnknownIntermediate, S>
{
    static void write(S* ostr, const ::Test::UnknownIntermediate& v)
    {
        ostr->write(v.ui);
    }
};

template<typename S>
struct StreamReader< ::Test::UnknownIntermediate, S>
{
    static void read(S* istr, ::Test::UnknownIntermediate& v)
    {
        istr->read(v.ui);
    }
};

template<>
struct StreamableTraits< ::Test::UnknownMostDerived1>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::UnknownMostDerived1, S>
{
    static void write(S* ostr, const ::Test::UnknownMostDerived1& v)
    {
        ostr->write(v.umd1);
    }
};

template<typename S>
struct StreamReader< ::Test::UnknownMostDerived1, S>
{
    static void read(S* istr, ::Test::UnknownMostDerived1& v)
    {
        istr->read(v.umd1);
    }
};

template<>
struct StreamableTraits< ::Test::UnknownMostDerived2>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::UnknownMostDerived2, S>
{
    static void write(S* ostr, const ::Test::UnknownMostDerived2& v)
    {
        ostr->write(v.umd2);
    }
};

template<typename S>
struct StreamReader< ::Test::UnknownMostDerived2, S>
{
    static void read(S* istr, ::Test::UnknownMostDerived2& v)
    {
        istr->read(v.umd2);
    }
};

template<typename S>
struct StreamWriter< ::Test::SPreservedClass, S>
{
    static void write(S* ostr, const ::Test::SPreservedClass& v)
    {
        ostr->write(v.spc);
    }
};

template<typename S>
struct StreamReader< ::Test::SPreservedClass, S>
{
    static void read(S* istr, ::Test::SPreservedClass& v)
    {
        istr->read(v.spc);
    }
};

template<>
struct StreamableTraits< ::Test::SPreserved1>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::SPreserved1, S>
{
    static void write(S* ostr, const ::Test::SPreserved1& v)
    {
        ostr->write(v.p1);
    }
};

template<typename S>
struct StreamReader< ::Test::SPreserved1, S>
{
    static void read(S* istr, ::Test::SPreserved1& v)
    {
        istr->read(v.p1);
    }
};

template<>
struct StreamableTraits< ::Test::SPreserved2>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::SPreserved2, S>
{
    static void write(S* ostr, const ::Test::SPreserved2& v)
    {
        ostr->write(v.p2);
    }
};

template<typename S>
struct StreamReader< ::Test::SPreserved2, S>
{
    static void read(S* istr, ::Test::SPreserved2& v)
    {
        istr->read(v.p2);
    }
};

}
/// \endcond

namespace Test
{

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
