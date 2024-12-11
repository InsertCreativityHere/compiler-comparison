//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `NoPackage.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef NoPackage_h_
#define NoPackage_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test1
{
    class C1;
    using C1Ptr = ::std::shared_ptr<C1>;

    class C2;
    using C2Ptr = ::std::shared_ptr<C2>;

}

namespace Test1
{

class C1 : public ::Ice::Value
{
public:
    /// Default constructor.
    C1() noexcept = default;

    /// One-shot constructor to initialize all data members.
    explicit C1(::std::int32_t i) noexcept :
        i(i)
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(i);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    C1Ptr ice_clone() const { return ::std::static_pointer_cast<C1>(_iceCloneImpl()); }

    ::std::int32_t i;

protected:
    C1(const C1&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class C2 : public C1
{
public:
    /// Default constructor.
    C2() noexcept = default;

    /// One-shot constructor to initialize all data members.
    C2(::std::int32_t i, ::std::int64_t l) noexcept :
        C1(i),
        l(l)
    {
    }

    /// Obtains the Slice type ID of this value.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    /// Obtains a tuple containing all of the value's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::int32_t&, const ::std::int64_t&> ice_tuple() const
    {
        return std::tie(i, l);
    }

    /// Creates a shallow polymorphic copy of this instance.
    /// @return The cloned value.
    C2Ptr ice_clone() const { return ::std::static_pointer_cast<C2>(_iceCloneImpl()); }

    ::std::int64_t l;

protected:
    C2(const C2&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

class E1 : public ::Ice::UserException
{
public:
    /// Default constructor.
    E1() noexcept = default;

    /// One-shot constructor to initialize all data members.
    E1(::std::int32_t i) noexcept :
        i(i)
    {
    }

    /// Copy constructor.
    E1(const E1&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(i);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::int32_t i;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

class E2 : public E1
{
public:
    /// Default constructor.
    E2() noexcept = default;

    /// One-shot constructor to initialize all data members.
    E2(::std::int32_t i, ::std::int64_t l) noexcept :
        E1(i),
        l(l)
    {
    }

    /// Copy constructor.
    E2(const E2&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::int32_t&, const ::std::int64_t&> ice_tuple() const
    {
        return std::tie(i, l);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::int64_t l;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

class def : public ::Ice::UserException
{
public:
    /// Default constructor.
    def() noexcept = default;

    /// One-shot constructor to initialize all data members.
    def(::std::int32_t i) noexcept :
        i(i)
    {
    }

    /// Copy constructor.
    def(const def&) noexcept = default;

    /// Obtains a tuple containing all of the exception's data members.
    /// @return The data members in a tuple.
    [[nodiscard]] std::tuple<const ::std::int32_t&> ice_tuple() const
    {
        return std::tie(i);
    }

    /// Obtains the Slice type ID of this exception.
    /// @return The fully-scoped type ID.
    static const char* ice_staticId() noexcept;

    const char* ice_id() const noexcept override;

    void ice_throw() const override;

    ::std::int32_t i;

protected:
    void _writeImpl(::Ice::OutputStream*) const override;

    void _readImpl(::Ice::InputStream*) override;
};

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#include <Ice/PopDisableWarnings.h>
#endif
