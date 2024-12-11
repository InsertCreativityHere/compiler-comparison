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

    class InitialPrx;

    class Base;
    using BasePtr = ::std::shared_ptr<Base>;

    struct Struct1;

    using ByteS = ::std::vector<std::byte>;

    using IntS = ::std::vector<::std::int32_t>;

    using MyEnumS = ::std::vector<MyEnum>;

    using BaseS = ::std::vector<BasePtr>;

    using ByteBoolD = ::std::map<::std::uint8_t, bool>;

    using ShortIntD = ::std::map<::std::int16_t, ::std::int32_t>;

    using StringMyEnumD = ::std::map<::std::string, MyEnum>;

    using StringBaseD = ::std::map<::std::string, BasePtr>;

    class Derived;
    using DerivedPtr = ::std::shared_ptr<Derived>;

}

namespace Test
{

class InitialPrx : public ::Ice::Proxy<InitialPrx, ::Ice::ObjectPrx>
{
public:

    ByteS getStruct1(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<ByteS> getStruct1Async(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getStruct1Async(::std::function<void(::Test::ByteS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getStruct1(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ByteS>>&, const ::Ice::Context&) const;
    /// \endcond

    ByteS getBase(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<ByteS> getBaseAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getBaseAsync(::std::function<void(::Test::ByteS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getBase(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ByteS>>&, const ::Ice::Context&) const;
    /// \endcond

    ByteS getEx(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<ByteS> getExAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    getExAsync(::std::function<void(::Test::ByteS)> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_getEx(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ByteS>>&, const ::Ice::Context&) const;
    /// \endcond

    void shutdown(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    [[nodiscard]] ::std::future<void> shutdownAsync(const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    ::std::function<void()>
    shutdownAsync(::std::function<void()> response, ::std::function<void(::std::exception_ptr)> ex = nullptr, ::std::function<void(bool)> sent = nullptr, const ::Ice::Context& context = ::Ice::noExplicitContext) const;

    /// \cond INTERNAL
    void _iceI_shutdown(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<void>>&, const ::Ice::Context&) const;
    /// \endcond

    /// Obtains the Slice type ID of this interface.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;
    InitialPrx(const InitialPrx& other) noexcept : ::Ice::ObjectPrx(other)
    {
    }

    InitialPrx(InitialPrx&& other) noexcept : ::Ice::ObjectPrx(::std::move(other))
    {
    }

    InitialPrx(const ::Ice::CommunicatorPtr& communicator, std::string_view proxyString) :
        ::Ice::ObjectPrx(communicator, proxyString)
    {
    }

    InitialPrx& operator=(const InitialPrx& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(rhs);
        }
        return *this;
    }

    InitialPrx& operator=(InitialPrx&& rhs) noexcept
    {
        if (this != &rhs)
        {
            ::Ice::ObjectPrx::operator=(::std::move(rhs));
        }
        return *this;
    }

    /// \cond INTERNAL
    static InitialPrx _fromReference(::IceInternal::ReferencePtr ref) { return InitialPrx(::std::move(ref)); }

protected:

    InitialPrx() = default;

    explicit InitialPrx(::IceInternal::ReferencePtr&& ref) : ::Ice::ObjectPrx(::std::move(ref))
    {
    }
    /// \endcond
};

}

namespace Test
{

struct Struct1
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
    ::std::optional<::Test::InitialPrx> p;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const bool&, const ::std::uint8_t&, const ::std::int16_t&, const ::std::int32_t&, const ::std::int64_t&, const float&, const double&, const ::std::string&, const ::Test::MyEnum&, const ::std::optional<::Test::InitialPrx>&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i, l, f, d, str, e, p);
    }
};

class Base : public ::Ice::Value
{
public:
    /// Default constructor.
    Base() noexcept = default;

    /// One-shot constructor to initialize all data members.
    Base(::Test::BasePtr b, ::Ice::ValuePtr o, ::Test::Struct1 s, ::Test::ByteS seq1, ::Test::IntS seq2, ::Test::MyEnumS seq3, ::Test::BaseS seq4, ::Test::ByteBoolD d1, ::Test::ShortIntD d2, ::Test::StringMyEnumD d3, ::Test::StringBaseD d4) noexcept :
        b(::std::move(b)),
        o(::std::move(o)),
        s(::std::move(s)),
        seq1(::std::move(seq1)),
        seq2(::std::move(seq2)),
        seq3(::std::move(seq3)),
        seq4(::std::move(seq4)),
        d1(::std::move(d1)),
        d2(::std::move(d2)),
        d3(::std::move(d3)),
        d4(::std::move(d4))
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::Test::BasePtr&, const ::Ice::ValuePtr&, const ::Test::Struct1&, const ::Test::ByteS&, const ::Test::IntS&, const ::Test::MyEnumS&, const ::Test::BaseS&, const ::Test::ByteBoolD&, const ::Test::ShortIntD&, const ::Test::StringMyEnumD&, const ::Test::StringBaseD&> ice_tuple() const
    {
        return std::tie(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    BasePtr ice_clone() const { return ::std::static_pointer_cast<Base>(_iceCloneImpl()); }

    ::Test::BasePtr b;
    ::Ice::ValuePtr o;
    ::Test::Struct1 s;
    ::Test::ByteS seq1;
    ::Test::IntS seq2;
    ::Test::MyEnumS seq3;
    ::Test::BaseS seq4;
    ::Test::ByteBoolD d1;
    ::Test::ShortIntD d2;
    ::Test::StringMyEnumD d3;
    ::Test::StringBaseD d4;

protected:
    Base(const Base&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class Derived : public Base
{
public:
    /// Default constructor.
    Derived() noexcept = default;

    /// One-shot constructor to initialize all data members.
    Derived(::Test::BasePtr b, ::Ice::ValuePtr o, ::Test::Struct1 s, ::Test::ByteS seq1, ::Test::IntS seq2, ::Test::MyEnumS seq3, ::Test::BaseS seq4, ::Test::ByteBoolD d1, ::Test::ShortIntD d2, ::Test::StringMyEnumD d3, ::Test::StringBaseD d4, ::std::optional<::Ice::ObjectPrx> p) noexcept :
        Base(::std::move(b), ::std::move(o), ::std::move(s), ::std::move(seq1), ::std::move(seq2), ::std::move(seq3), ::std::move(seq4), ::std::move(d1), ::std::move(d2), ::std::move(d3), ::std::move(d4)),
        p(::std::move(p))
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::Test::BasePtr&, const ::Ice::ValuePtr&, const ::Test::Struct1&, const ::Test::ByteS&, const ::Test::IntS&, const ::Test::MyEnumS&, const ::Test::BaseS&, const ::Test::ByteBoolD&, const ::Test::ShortIntD&, const ::Test::StringMyEnumD&, const ::Test::StringBaseD&, const ::std::optional<::Ice::ObjectPrx>&> ice_tuple() const
    {
        return std::tie(b, o, s, seq1, seq2, seq3, seq4, d1, d2, d3, d4, p);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    DerivedPtr ice_clone() const { return ::std::static_pointer_cast<Derived>(_iceCloneImpl()); }

    ::std::optional<::Ice::ObjectPrx> p;

protected:
    Derived(const Derived&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class Ex : public ::Ice::UserException
{
public:
    /// Default constructor.
    Ex() noexcept = default;

    /// One-shot constructor to initialize all data members.
    Ex(Struct1 s, BasePtr b) noexcept :
        s(::std::move(s)),
        b(::std::move(b))
    {
    }

    /// Copy constructor.
    Ex(const Ex&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::Test::Struct1&, const ::Test::BasePtr&> ice_tuple() const
    {
        return std::tie(s, b);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    /// \cond STREAM
    bool _usesClasses() const override;
    /// \endcond

    ::Test::Struct1 s;
    ::Test::BasePtr b;

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

namespace Test
{

class Initial : public virtual ::Ice::Object
{
public:

    using ProxyType = InitialPrx;

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

    virtual ByteS getStruct1(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_getStruct1(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ByteS getBase(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_getBase(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual ByteS getEx(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_getEx(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    virtual void shutdown(const ::Ice::Current& current) = 0;
    /// \cond INTERNAL
    void _iceD_shutdown(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>);
    /// \endcond

    /// \cond INTERNAL
    void dispatch(::Ice::IncomingRequest&, ::std::function<void(::Ice::OutgoingResponse)>) override;
    /// \endcond
};

using InitialPtr = ::std::shared_ptr<Initial>;

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
struct StreamableTraits<::Test::Struct1>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 32;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test::Struct1>
{
    static void read(InputStream* istr, ::Test::Struct1& v)
    {
        istr->readAll(v.bo, v.by, v.sh, v.i, v.l, v.f, v.d, v.str, v.e, v.p);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
