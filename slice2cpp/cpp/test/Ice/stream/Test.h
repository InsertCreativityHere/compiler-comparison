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

#ifndef Test_h_
#define Test_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/BuiltinSequences.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    enum class MyEnum : ::std::uint8_t
    {
        enum1,
        enum2,
        enum3
    };

    class MyInterfacePrx;

    class MyClass;
    using MyClassPtr = ::std::shared_ptr<MyClass>;

    struct LargeStruct;

    struct ClassStruct;

    class OptionalClass;
    using OptionalClassPtr = ::std::shared_ptr<OptionalClass>;

    using MyEnumS = ::std::vector<MyEnum>;

    using LargeStructS = ::std::vector<LargeStruct>;

    using MyClassS = ::std::vector<MyClassPtr>;

    using BoolSS = ::std::vector<::Ice::BoolSeq>;

    using ByteSS = ::std::vector<::Ice::ByteSeq>;

    using ShortSS = ::std::vector<::Ice::ShortSeq>;

    using IntSS = ::std::vector<::Ice::IntSeq>;

    using LongSS = ::std::vector<::Ice::LongSeq>;

    using FloatSS = ::std::vector<::Ice::FloatSeq>;

    using DoubleSS = ::std::vector<::Ice::DoubleSeq>;

    using StringSS = ::std::vector<::Ice::StringSeq>;

    using MyEnumSS = ::std::vector<MyEnumS>;

    using LargeStructSS = ::std::vector<LargeStructS>;

    using MyClassSS = ::std::vector<MyClassS>;

    using ByteBoolD = ::std::map<::std::uint8_t, bool>;

    using ShortIntD = ::std::map<::std::int16_t, ::std::int32_t>;

    using LongFloatD = ::std::map<::std::int64_t, float>;

    using StringStringD = ::std::map<::std::string, ::std::string>;

    using StringMyClassD = ::std::map<::std::string, MyClassPtr>;


    namespace Sub
    {
        enum class NestedEnum : ::std::uint8_t
        {
            nestedEnum1,
            nestedEnum2,
            nestedEnum3
        };

        struct NestedStruct;

    }
}

namespace Test2
{

    namespace Sub2
    {
        enum class NestedEnum2 : ::std::uint8_t
        {
            nestedEnum4,
            nestedEnum5,
            nestedEnum6
        };

        struct NestedStruct2;

    }
}

namespace Test
{

class MyInterfacePrx : public ::Ice::Proxy<MyInterfacePrx, ::Ice::ObjectPrx>
{
public:

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    MyInterfacePrx(const MyInterfacePrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    MyInterfacePrx(MyInterfacePrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    MyInterfacePrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    MyInterfacePrx& operator=(const MyInterfacePrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    MyInterfacePrx& operator=(MyInterfacePrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static MyInterfacePrx _fromReference(::IceInternal::ReferencePtr ref) { return MyInterfacePrx(::std::move(ref)); }

protected:

    MyInterfacePrx() = default;

    explicit MyInterfacePrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

struct LargeStruct
{
    bool bo;
    ::std::uint8_t by;
    ::std::int16_t sh;
    ::std::int32_t i;
    ::std::int64_t l;
    float f;
    double d;
    ::std::string str;
    ::Test::MyEnum e;
    ::std::optional<::Test::MyInterfacePrx> p;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const bool&, const ::std::uint8_t&, const ::std::int16_t&, const ::std::int32_t&, const ::std::int64_t&, const float&, const double&, const ::std::string&, const ::Test::MyEnum&, const ::std::optional<::Test::MyInterfacePrx>&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i, l, f, d, str, e, p);
    }
};

struct ClassStruct
{
    ::std::int32_t i;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(i);
    }
};

class OptionalClass : public ::Ice::Value
{
public:
    /// Default constructor.
    OptionalClass() noexcept = default;

    /// One-shot constructor to initialize all data members.
    OptionalClass(bool bo, ::std::uint8_t by, ::std::optional<::std::int16_t> sh, ::std::optional<::std::int32_t> i) noexcept :
        bo(bo),
        by(by),
        sh(sh),
        i(i)
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const bool&, const ::std::uint8_t&, const ::std::optional<::std::int16_t>&, const ::std::optional<::std::int32_t>&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    OptionalClassPtr ice_clone() const { return ::std::static_pointer_cast<OptionalClass>(_iceCloneImpl()); }

    bool bo;
    ::std::uint8_t by;
    ::std::optional<::std::int16_t> sh;
    ::std::optional<::std::int32_t> i;

protected:
    OptionalClass(const OptionalClass&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class MyClass : public ::Ice::Value
{
public:
    /// Default constructor.
    MyClass() noexcept = default;

    /// One-shot constructor to initialize all data members.
    MyClass(::Test::MyClassPtr c, ::Ice::ValuePtr o, ::Test::LargeStruct s, ::Ice::BoolSeq seq1, ::Ice::ByteSeq seq2, ::Ice::ShortSeq seq3, ::Ice::IntSeq seq4, ::Ice::LongSeq seq5, ::Ice::FloatSeq seq6, ::Ice::DoubleSeq seq7, ::Ice::StringSeq seq8, ::Test::MyEnumS seq9, ::Test::MyClassS seq10, ::Test::StringMyClassD d) noexcept :
        c(::std::move(c)),
        o(::std::move(o)),
        s(::std::move(s)),
        seq1(::std::move(seq1)),
        seq2(::std::move(seq2)),
        seq3(::std::move(seq3)),
        seq4(::std::move(seq4)),
        seq5(::std::move(seq5)),
        seq6(::std::move(seq6)),
        seq7(::std::move(seq7)),
        seq8(::std::move(seq8)),
        seq9(::std::move(seq9)),
        seq10(::std::move(seq10)),
        d(::std::move(d))
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::Test::MyClassPtr&, const ::Ice::ValuePtr&, const ::Test::LargeStruct&, const ::Ice::BoolSeq&, const ::Ice::ByteSeq&, const ::Ice::ShortSeq&, const ::Ice::IntSeq&, const ::Ice::LongSeq&, const ::Ice::FloatSeq&, const ::Ice::DoubleSeq&, const ::Ice::StringSeq&, const ::Test::MyEnumS&, const ::Test::MyClassS&, const ::Test::StringMyClassD&> ice_tuple() const
    {
        return std::tie(c, o, s, seq1, seq2, seq3, seq4, seq5, seq6, seq7, seq8, seq9, seq10, d);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    MyClassPtr ice_clone() const { return ::std::static_pointer_cast<MyClass>(_iceCloneImpl()); }

    ::Test::MyClassPtr c;
    ::Ice::ValuePtr o;
    ::Test::LargeStruct s;
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

protected:
    MyClass(const MyClass&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class MyException : public ::Ice::UserException
{
public:
    /// Default constructor.
    MyException() noexcept = default;

    /// One-shot constructor to initialize all data members.
    MyException(MyClassPtr c) noexcept :
        c(::std::move(c))
    {
    }

    /// Copy constructor.
    MyException(const MyException&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::Test::MyClassPtr&> ice_tuple() const
    {
        return std::tie(c);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    /// \cond STREAM
    bool _usesClasses() const override;
    /// \endcond

    ::Test::MyClassPtr c;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

namespace Sub
{

struct NestedStruct
{
    bool bo;
    ::std::uint8_t by;
    ::std::int16_t sh;
    ::std::int32_t i;
    ::std::int64_t l;
    float f;
    double d;
    ::std::string str;
    ::Test::Sub::NestedEnum e;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const bool&, const ::std::uint8_t&, const ::std::int16_t&, const ::std::int32_t&, const ::std::int64_t&, const float&, const double&, const ::std::string&, const ::Test::Sub::NestedEnum&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i, l, f, d, str, e);
    }
};

class NestedException : public ::Ice::UserException
{
public:
    /// Default constructor.
    NestedException() noexcept = default;

    /// One-shot constructor to initialize all data members.
    NestedException(::std::string str) noexcept :
        str(::std::move(str))
    {
    }

    /// Copy constructor.
    NestedException(const NestedException&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(str);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::string str;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

using Ice::Tuple::operator<;
using Ice::Tuple::operator<=;
using Ice::Tuple::operator>;
using Ice::Tuple::operator>=;
using Ice::Tuple::operator==;
using Ice::Tuple::operator!=;

}

using Ice::Tuple::operator<;
using Ice::Tuple::operator<=;
using Ice::Tuple::operator>;
using Ice::Tuple::operator>=;
using Ice::Tuple::operator==;
using Ice::Tuple::operator!=;

}

namespace Test2
{

namespace Sub2
{

struct NestedStruct2
{
    bool bo;
    ::std::uint8_t by;
    ::std::int16_t sh;
    ::std::int32_t i;
    ::std::int64_t l;
    float f;
    double d;
    ::std::string str;
    ::Test2::Sub2::NestedEnum2 e;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const bool&, const ::std::uint8_t&, const ::std::int16_t&, const ::std::int32_t&, const ::std::int64_t&, const float&, const double&, const ::std::string&, const ::Test2::Sub2::NestedEnum2&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i, l, f, d, str, e);
    }
};

class NestedException2 : public ::Ice::UserException
{
public:
    /// Default constructor.
    NestedException2() noexcept = default;

    /// One-shot constructor to initialize all data members.
    NestedException2(::std::string str) noexcept :
        str(::std::move(str))
    {
    }

    /// Copy constructor.
    NestedException2(const NestedException2&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(str);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::string str;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

using Ice::Tuple::operator<;
using Ice::Tuple::operator<=;
using Ice::Tuple::operator>;
using Ice::Tuple::operator>=;
using Ice::Tuple::operator==;
using Ice::Tuple::operator!=;

}

using Ice::Tuple::operator<;
using Ice::Tuple::operator<=;
using Ice::Tuple::operator>;
using Ice::Tuple::operator>=;
using Ice::Tuple::operator==;
using Ice::Tuple::operator!=;

}

namespace Test
{

class MyInterface : public virtual ::Ice::Object
{
public:

    using ProxyType = MyInterfacePrx;

    /// Obtains a list of the Slice type IDs representing the interfaces supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A list of fully-scoped type IDs.
    ::std::vector<::std::string> ice_ids(const ::Ice::Current& current) const override;

    /// Obtains a Slice type ID representing the most-derived interface supported by this object.
    /// @param current The Current object for the invocation.
    /// @return A fully-scoped type ID.
    ::std::string ice_id(const ::Ice::Current& current) const override;

    /// Obtains the Slice type ID corresponding to this interface.
    /// @return A fully-scoped type ID.
    static const char* ice_staticId() noexcept;
};

using MyInterfacePtr = ::std::shared_ptr<MyInterface>;

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
struct StreamableTraits<::Test::LargeStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 32;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test::LargeStruct>
{
    static void read(InputStream* istr, ::Test::LargeStruct& v)
    {
        istr->readAll(v.bo, v.by, v.sh, v.i, v.l, v.f, v.d, v.str, v.e, v.p);
    }
};

template<>
struct StreamableTraits<::Test::ClassStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 4;
    static const bool fixedLength = true;
};

template<>
struct StreamReader<::Test::ClassStruct>
{
    static void read(InputStream* istr, ::Test::ClassStruct& v)
    {
        istr->readAll(v.i);
    }
};

template<>
struct StreamableTraits< ::Test::Sub::NestedEnum>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::Test::Sub::NestedStruct>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 30;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test::Sub::NestedStruct>
{
    static void read(InputStream* istr, ::Test::Sub::NestedStruct& v)
    {
        istr->readAll(v.bo, v.by, v.sh, v.i, v.l, v.f, v.d, v.str, v.e);
    }
};

}
/// \endcond

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test2::Sub2::NestedEnum2>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<>
struct StreamableTraits<::Test2::Sub2::NestedStruct2>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 30;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test2::Sub2::NestedStruct2>
{
    static void read(InputStream* istr, ::Test2::Sub2::NestedStruct2& v)
    {
        istr->readAll(v.bo, v.by, v.sh, v.i, v.l, v.f, v.d, v.str, v.e);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
