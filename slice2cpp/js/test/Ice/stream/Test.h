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
#include <Ice/ExceptionHelpers.h>
#include <Ice/BuiltinSequences.h>
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

class MyClass;
class MyInterface;
class MyInterfacePrx;
class OptionalClass;

}

namespace Test
{

enum class MyEnum : unsigned char
{
    enum1,
    enum2,
    enum3
};

struct SmallStruct
{
    bool bo;
    ::Ice::Byte by;
    short sh;
    int i;
    long long int l;
    float f;
    double d;
    ::std::string str;
    ::Test::MyEnum e;
    ::std::shared_ptr<::Test::MyInterfacePrx> p;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const bool&, const ::Ice::Byte&, const short&, const int&, const long long int&, const float&, const double&, const ::std::string&, const ::Test::MyEnum&, const ::std::shared_ptr<::Test::MyInterfacePrx>&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i, l, f, d, str, e, p);
    }
};

using MyEnumS = ::std::vector<MyEnum>;

using MyClassS = ::std::vector<::std::shared_ptr<MyClass>>;

using MyInterfaceS = ::std::vector<::std::shared_ptr<::Ice::Value>>;

using BoolSS = ::std::vector<::Ice::BoolSeq>;

using ByteSS = ::std::vector<::Ice::ByteSeq>;

using ShortSS = ::std::vector<::Ice::ShortSeq>;

using IntSS = ::std::vector<::Ice::IntSeq>;

using LongSS = ::std::vector<::Ice::LongSeq>;

using FloatSS = ::std::vector<::Ice::FloatSeq>;

using DoubleSS = ::std::vector<::Ice::DoubleSeq>;

using StringSS = ::std::vector<::Ice::StringSeq>;

using MyEnumSS = ::std::vector<MyEnumS>;

using MyClassSS = ::std::vector<MyClassS>;

using MyInterfaceSS = ::std::vector<MyInterfaceS>;

using ByteBoolD = ::std::map<::Ice::Byte, bool>;

using ShortIntD = ::std::map<short, int>;

using LongFloatD = ::std::map<long long int, float>;

using StringStringD = ::std::map<::std::string, ::std::string>;

using StringMyClassD = ::std::map<::std::string, ::std::shared_ptr<MyClass>>;

class MyException : public ::Ice::UserExceptionHelper<MyException, ::Ice::UserException>
{
public:

    virtual ~MyException();

    MyException(const MyException&) = default;

    MyException() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    MyException(const ::std::shared_ptr<MyClass>& c) :
        c(c)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::MyClass>&> ice_tuple() const
    {
        return std::tie(c);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    /// \cond STREAM
    virtual bool _usesClasses() const override;
    /// \endcond

    ::std::shared_ptr<::Test::MyClass> c;
};

/// \cond INTERNAL
static MyException _iceS_MyException_init;
/// \endcond

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace Test
{

class MyInterface : public virtual ::Ice::Object
{
public:

    using ProxyType = MyInterfacePrx;

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
};

}

namespace Test
{

class OptionalClass : public ::Ice::ValueHelper<OptionalClass, ::Ice::Value>
{
public:

    virtual ~OptionalClass();

    OptionalClass() = default;

    OptionalClass(const OptionalClass&) = default;
    OptionalClass(OptionalClass&&) = default;
    OptionalClass& operator=(const OptionalClass&) = default;
    OptionalClass& operator=(OptionalClass&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    OptionalClass(bool bo, ::Ice::Byte by, const Ice::optional<short>& sh, const Ice::optional<int>& i) :
        bo(bo),
        by(by),
        sh(sh),
        i(i)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const bool&, const ::Ice::Byte&, const Ice::optional<short>&, const Ice::optional<int>&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    bool bo;
    ::Ice::Byte by;
    Ice::optional<short> sh;
    Ice::optional<int> i;
};

/// \cond INTERNAL
static OptionalClass _iceS_OptionalClass_init;
/// \endcond

class MyClass : public ::Ice::ValueHelper<MyClass, ::Ice::Value>
{
public:

    virtual ~MyClass();

    MyClass() = default;

    MyClass(const MyClass&) = default;
    MyClass(MyClass&&) = default;
    MyClass& operator=(const MyClass&) = default;
    MyClass& operator=(MyClass&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    MyClass(const ::std::shared_ptr<::Test::MyClass>& c, const ::std::shared_ptr<::Ice::Value>& o, const ::Test::SmallStruct& s, const ::Ice::BoolSeq& seq1, const ::Ice::ByteSeq& seq2, const ::Ice::ShortSeq& seq3, const ::Ice::IntSeq& seq4, const ::Ice::LongSeq& seq5, const ::Ice::FloatSeq& seq6, const ::Ice::DoubleSeq& seq7, const ::Ice::StringSeq& seq8, const ::Test::MyEnumS& seq9, const ::Test::MyClassS& seq10, const ::Test::StringMyClassD& d) :
        c(c),
        o(o),
        s(s),
        seq1(seq1),
        seq2(seq2),
        seq3(seq3),
        seq4(seq4),
        seq5(seq5),
        seq6(seq6),
        seq7(seq7),
        seq8(seq8),
        seq9(seq9),
        seq10(seq10),
        d(d)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::shared_ptr<::Test::MyClass>&, const ::std::shared_ptr<::Ice::Value>&, const ::Test::SmallStruct&, const ::Ice::BoolSeq&, const ::Ice::ByteSeq&, const ::Ice::ShortSeq&, const ::Ice::IntSeq&, const ::Ice::LongSeq&, const ::Ice::FloatSeq&, const ::Ice::DoubleSeq&, const ::Ice::StringSeq&, const ::Test::MyEnumS&, const ::Test::MyClassS&, const ::Test::StringMyClassD&> ice_tuple() const
    {
        return std::tie(c, o, s, seq1, seq2, seq3, seq4, seq5, seq6, seq7, seq8, seq9, seq10, d);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    ::std::shared_ptr<::Test::MyClass> c;
    ::std::shared_ptr<::Ice::Value> o;
    ::Test::SmallStruct s;
    ::Ice::BoolSeq seq1;
    ::Ice::ByteSeq seq2;
    ::Ice::ShortSeq seq3;
    ::Ice::IntSeq seq4;
    ::Ice::LongSeq seq5;
    ::Ice::FloatSeq seq6;
    ::Ice::DoubleSeq seq7;
    ::Ice::StringSeq seq8;
    ::Test::MyEnumS seq9;
    ::Test::MyClassS seq10;
    ::Test::StringMyClassD d;
};

}

namespace Test
{

class MyInterfacePrx : public virtual ::Ice::Proxy<MyInterfacePrx, ::Ice::ObjectPrx>
{
public:

    /**
     * Obtains the Slice type ID of this interface.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

protected:

    /// \cond INTERNAL
    MyInterfacePrx() = default;
    friend ::std::shared_ptr<MyInterfacePrx> IceInternal::createProxy<MyInterfacePrx>();

    virtual ::std::shared_ptr<::Ice::ObjectPrx> _newInstance() const override;
    /// \endcond
};

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::MyEnum>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::Test::SmallStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 32;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::SmallStruct, S>
{
    static void read(S* istr, ::Test::SmallStruct& v)
    {
        istr->readAll(v.bo, v.by, v.sh, v.i, v.l, v.f, v.d, v.str, v.e, v.p);
    }
};

template<typename S>
struct StreamWriter<::Test::OptionalClass, S>
{
    static void write(S* ostr, const ::Test::OptionalClass& v)
    {
        ostr->writeAll(v.bo, v.by);
        ostr->writeAll({1, 2}, v.sh, v.i);
    }
};

template<typename S>
struct StreamReader<::Test::OptionalClass, S>
{
    static void read(S* istr, ::Test::OptionalClass& v)
    {
        istr->readAll(v.bo, v.by);
        istr->readAll({1, 2}, v.sh, v.i);
    }
};

template<typename S>
struct StreamReader<::Test::MyClass, S>
{
    static void read(S* istr, ::Test::MyClass& v)
    {
        istr->readAll(v.c, v.o, v.s, v.seq1, v.seq2, v.seq3, v.seq4, v.seq5, v.seq6, v.seq7, v.seq8, v.seq9, v.seq10, v.d);
    }
};

template<typename S>
struct StreamReader<::Test::MyException, S>
{
    static void read(S* istr, ::Test::MyException& v)
    {
        istr->readAll(v.c);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using MyClassPtr = ::std::shared_ptr<MyClass>;

using MyInterfacePtr = ::std::shared_ptr<MyInterface>;
using MyInterfacePrxPtr = ::std::shared_ptr<MyInterfacePrx>;

using OptionalClassPtr = ::std::shared_ptr<OptionalClass>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Test
{

class MyClass;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< MyClass>&);
::IceProxy::Ice::Object* upCast(MyClass*);
/// \endcond

class MyInterface;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< MyInterface>&);
::IceProxy::Ice::Object* upCast(MyInterface*);
/// \endcond

class OptionalClass;
/// \cond INTERNAL
void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< OptionalClass>&);
::IceProxy::Ice::Object* upCast(OptionalClass*);
/// \endcond

}

}

namespace Test
{

class MyClass;
/// \cond INTERNAL
::Ice::Object* upCast(MyClass*);
/// \endcond
typedef ::IceInternal::Handle< MyClass> MyClassPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::MyClass> MyClassPrx;
typedef MyClassPrx MyClassPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(MyClassPtr&, const ::Ice::ObjectPtr&);
/// \endcond

class MyInterface;
/// \cond INTERNAL
::Ice::Object* upCast(MyInterface*);
/// \endcond
typedef ::IceInternal::Handle< MyInterface> MyInterfacePtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::MyInterface> MyInterfacePrx;
typedef MyInterfacePrx MyInterfacePrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(MyInterfacePtr&, const ::Ice::ObjectPtr&);
/// \endcond

class OptionalClass;
/// \cond INTERNAL
::Ice::Object* upCast(OptionalClass*);
/// \endcond
typedef ::IceInternal::Handle< OptionalClass> OptionalClassPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Test::OptionalClass> OptionalClassPrx;
typedef OptionalClassPrx OptionalClassPrxPtr;
/// \cond INTERNAL
void _icePatchObjectPtr(OptionalClassPtr&, const ::Ice::ObjectPtr&);
/// \endcond

}

namespace Test
{

enum MyEnum
{
    enum1,
    enum2,
    enum3
};

struct SmallStruct
{
    bool bo;
    ::Ice::Byte by;
    ::Ice::Short sh;
    ::Ice::Int i;
    ::Ice::Long l;
    ::Ice::Float f;
    ::Ice::Double d;
    ::std::string str;
    ::Test::MyEnum e;
    ::Test::MyInterfacePrx p;
};

typedef ::std::vector<MyEnum> MyEnumS;

typedef ::std::vector<MyClassPtr> MyClassS;

typedef ::std::vector<MyInterfacePtr> MyInterfaceS;

typedef ::std::vector< ::Ice::BoolSeq> BoolSS;

typedef ::std::vector< ::Ice::ByteSeq> ByteSS;

typedef ::std::vector< ::Ice::ShortSeq> ShortSS;

typedef ::std::vector< ::Ice::IntSeq> IntSS;

typedef ::std::vector< ::Ice::LongSeq> LongSS;

typedef ::std::vector< ::Ice::FloatSeq> FloatSS;

typedef ::std::vector< ::Ice::DoubleSeq> DoubleSS;

typedef ::std::vector< ::Ice::StringSeq> StringSS;

typedef ::std::vector<MyEnumS> MyEnumSS;

typedef ::std::vector<MyClassS> MyClassSS;

typedef ::std::vector<MyInterfaceS> MyInterfaceSS;

typedef ::std::map< ::Ice::Byte, bool> ByteBoolD;

typedef ::std::map< ::Ice::Short, ::Ice::Int> ShortIntD;

typedef ::std::map< ::Ice::Long, ::Ice::Float> LongFloatD;

typedef ::std::map< ::std::string, ::std::string> StringStringD;

typedef ::std::map< ::std::string, MyClassPtr> StringMyClassD;

class MyException : public ::Ice::UserException
{
public:

    MyException() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    explicit MyException(const MyClassPtr& c);

#ifdef ICE_CPP11_COMPILER
    MyException(const MyException&) = default;
    virtual ~MyException();
#else
    virtual ~MyException() throw();
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
    virtual MyException* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

    /// \cond STREAM
    virtual bool _usesClasses() const;
    /// \endcond

    ::Test::MyClassPtr c;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

/// \cond INTERNAL
static MyException _iceS_MyException_init;
/// \endcond

}

namespace Test
{

}

namespace IceProxy
{

namespace Test
{

class OptionalClass : public virtual ::Ice::Proxy<OptionalClass, ::IceProxy::Ice::Object>
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

class MyClass : public virtual ::Ice::Proxy<MyClass, ::IceProxy::Ice::Object>
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

class MyInterface : public virtual ::Ice::Proxy<MyInterface, ::IceProxy::Ice::Object>
{
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

class OptionalClass : public virtual ::Ice::Object
{
public:

    typedef OptionalClassPrx ProxyType;
    typedef OptionalClassPtr PointerType;

    virtual ~OptionalClass();

    OptionalClass()
    {
    }

    /**
     * One-shot constructor to initialize all data members.
     */
    OptionalClass(bool bo, ::Ice::Byte by, const IceUtil::Optional< ::Ice::Short>& sh, const IceUtil::Optional< ::Ice::Int>& i) :
        bo(bo),
        by(by),
        sh(sh),
        i(i)
    {
    }

#ifdef ICE_CPP11_COMPILER
    OptionalClass(const OptionalClass&) = default;
    OptionalClass& operator=(const OptionalClass&) = default;
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

    bool bo;
    ::Ice::Byte by;
    IceUtil::Optional< ::Ice::Short> sh;
    IceUtil::Optional< ::Ice::Int> i;
};
/// \cond INTERNAL
static ::Ice::ValueFactoryPtr _iceS_OptionalClass_init = ::Test::OptionalClass::ice_factory();
/// \endcond

/// \cond INTERNAL
inline bool operator==(const OptionalClass& lhs, const OptionalClass& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const OptionalClass& lhs, const OptionalClass& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

class MyClass : public virtual ::Ice::Object, public ::IceInternal::GCObject
{
public:

    typedef MyClassPrx ProxyType;
    typedef MyClassPtr PointerType;

    virtual ~MyClass();

    MyClass()
    {
    }

    /**
     * One-shot constructor to initialize all data members.
     */
    MyClass(const ::Test::MyClassPtr& c, const ::Ice::ObjectPtr& o, const ::Test::SmallStruct& s, const ::Ice::BoolSeq& seq1, const ::Ice::ByteSeq& seq2, const ::Ice::ShortSeq& seq3, const ::Ice::IntSeq& seq4, const ::Ice::LongSeq& seq5, const ::Ice::FloatSeq& seq6, const ::Ice::DoubleSeq& seq7, const ::Ice::StringSeq& seq8, const ::Test::MyEnumS& seq9, const ::Test::MyClassS& seq10, const ::Test::StringMyClassD& d) :
        c(c),
        o(o),
        s(s),
        seq1(seq1),
        seq2(seq2),
        seq3(seq3),
        seq4(seq4),
        seq5(seq5),
        seq6(seq6),
        seq7(seq7),
        seq8(seq8),
        seq9(seq9),
        seq10(seq10),
        d(d)
    {
    }

#ifdef ICE_CPP11_COMPILER
    MyClass(const MyClass&) = default;
    MyClass& operator=(const MyClass&) = default;
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

    ::Test::MyClassPtr c;
    ::Ice::ObjectPtr o;
    ::Test::SmallStruct s;
    ::Ice::BoolSeq seq1;
    ::Ice::ByteSeq seq2;
    ::Ice::ShortSeq seq3;
    ::Ice::IntSeq seq4;
    ::Ice::LongSeq seq5;
    ::Ice::FloatSeq seq6;
    ::Ice::DoubleSeq seq7;
    ::Ice::StringSeq seq8;
    ::Test::MyEnumS seq9;
    ::Test::MyClassS seq10;
    ::Test::StringMyClassD d;
};
/// \cond INTERNAL
static ::Ice::ValueFactoryPtr _iceS_MyClass_init = ::Test::MyClass::ice_factory();
/// \endcond

/// \cond INTERNAL
inline bool operator==(const MyClass& lhs, const MyClass& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const MyClass& lhs, const MyClass& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

class MyInterface : public virtual ::Ice::Object
{
public:

    typedef MyInterfacePrx ProxyType;
    typedef MyInterfacePtr PointerType;

    virtual ~MyInterface();

#ifdef ICE_CPP11_COMPILER
    MyInterface() = default;
    MyInterface(const MyInterface&) = default;
    MyInterface& operator=(const MyInterface&) = default;
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

protected:

    /// \cond STREAM
    virtual void _iceWriteImpl(::Ice::OutputStream*) const;
    virtual void _iceReadImpl(::Ice::InputStream*);
    /// \endcond
};

/// \cond INTERNAL
inline bool operator==(const MyInterface& lhs, const MyInterface& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) == static_cast<const ::Ice::Object&>(rhs);
}

inline bool operator<(const MyInterface& lhs, const MyInterface& rhs)
{
    return static_cast<const ::Ice::Object&>(lhs) < static_cast<const ::Ice::Object&>(rhs);
}
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::MyEnum>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits< ::Test::SmallStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 32;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamWriter< ::Test::SmallStruct, S>
{
    static void write(S* ostr, const ::Test::SmallStruct& v)
    {
        ostr->write(v.bo);
        ostr->write(v.by);
        ostr->write(v.sh);
        ostr->write(v.i);
        ostr->write(v.l);
        ostr->write(v.f);
        ostr->write(v.d);
        ostr->write(v.str);
        ostr->write(v.e);
        ostr->write(v.p);
    }
};

template<typename S>
struct StreamReader< ::Test::SmallStruct, S>
{
    static void read(S* istr, ::Test::SmallStruct& v)
    {
        istr->read(v.bo);
        istr->read(v.by);
        istr->read(v.sh);
        istr->read(v.i);
        istr->read(v.l);
        istr->read(v.f);
        istr->read(v.d);
        istr->read(v.str);
        istr->read(v.e);
        istr->read(v.p);
    }
};

template<typename S>
struct StreamWriter< ::Test::OptionalClass, S>
{
    static void write(S* ostr, const ::Test::OptionalClass& v)
    {
        ostr->write(v.bo);
        ostr->write(v.by);
        ostr->write(1, v.sh);
        ostr->write(2, v.i);
    }
};

template<typename S>
struct StreamReader< ::Test::OptionalClass, S>
{
    static void read(S* istr, ::Test::OptionalClass& v)
    {
        istr->read(v.bo);
        istr->read(v.by);
        istr->read(1, v.sh);
        istr->read(2, v.i);
    }
};

template<typename S>
struct StreamWriter< ::Test::MyClass, S>
{
    static void write(S* ostr, const ::Test::MyClass& v)
    {
        ostr->write(v.c);
        ostr->write(v.o);
        ostr->write(v.s);
        ostr->write(v.seq1);
        ostr->write(v.seq2);
        ostr->write(v.seq3);
        ostr->write(v.seq4);
        ostr->write(v.seq5);
        ostr->write(v.seq6);
        ostr->write(v.seq7);
        ostr->write(v.seq8);
        ostr->write(v.seq9);
        ostr->write(v.seq10);
        ostr->write(v.d);
    }
};

template<typename S>
struct StreamReader< ::Test::MyClass, S>
{
    static void read(S* istr, ::Test::MyClass& v)
    {
        istr->read(v.c);
        istr->read(v.o);
        istr->read(v.s);
        istr->read(v.seq1);
        istr->read(v.seq2);
        istr->read(v.seq3);
        istr->read(v.seq4);
        istr->read(v.seq5);
        istr->read(v.seq6);
        istr->read(v.seq7);
        istr->read(v.seq8);
        istr->read(v.seq9);
        istr->read(v.seq10);
        istr->read(v.d);
    }
};

template<>
struct StreamableTraits< ::Test::MyException>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

template<typename S>
struct StreamWriter< ::Test::MyException, S>
{
    static void write(S* ostr, const ::Test::MyException& v)
    {
        ostr->write(v.c);
    }
};

template<typename S>
struct StreamReader< ::Test::MyException, S>
{
    static void read(S* istr, ::Test::MyException& v)
    {
        istr->read(v.c);
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
