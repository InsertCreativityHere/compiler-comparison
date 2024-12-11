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
    struct StructValue;

    class Base;
    using BasePtr = ::std::shared_ptr<Base>;

    class Extended;
    using ExtendedPtr = ::std::shared_ptr<Extended>;

}

namespace Test
{

struct StructValue
{
    ::std::string firstName;
    ::std::string lastName;
    ::std::int32_t age;

    /// Obtains a tuple containing all of the struct's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::string&, const ::std::string&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(firstName, lastName, age);
    }
};

class Base : public ::Ice::Value
{
public:
    /// Default constructor.
    Base() noexcept = default;

    /// One-shot constructor to initialize all data members.
    explicit Base(::std::string b) noexcept :
        b(::std::move(b))
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(b);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    BasePtr ice_clone() const { return ::std::static_pointer_cast<Base>(_iceCloneImpl()); }

    ::std::string b;

protected:
    Base(const Base&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class Extended : public Base
{
public:
    /// Default constructor.
    Extended() noexcept = default;

    /// One-shot constructor to initialize all data members.
    Extended(::std::string b, ::std::int32_t e) noexcept :
        Base(::std::move(b)),
        e(e)
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::string&, const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(b, e);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    ExtendedPtr ice_clone() const { return ::std::static_pointer_cast<Extended>(_iceCloneImpl()); }

    ::std::int32_t e;

protected:
    Extended(const Extended&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

using Ice::Tuple::operator<;
using Ice::Tuple::operator<=;
using Ice::Tuple::operator>;
using Ice::Tuple::operator>=;
using Ice::Tuple::operator==;
using Ice::Tuple::operator!=;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits<::Test::StructValue>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 6;
    static const bool fixedLength = false;
};

template<>
struct StreamReader<::Test::StructValue>
{
    static void read(InputStream* istr, ::Test::StructValue& v)
    {
        istr->readAll(v.firstName, v.lastName, v.age);
    }
};

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
