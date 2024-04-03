//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Derived.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Derived_h__
#define __Derived_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "Test.h"

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{
    class Derived;
    using DerivedPtr = ::std::shared_ptr<Derived>;

}

namespace Test
{

class Derived : public Base
{
public:

    Derived() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    Derived(::Test::S theS, ::std::string str, ::std::string b) :
        Base(::std::move(theS), ::std::move(str)),
        b(::std::move(b))
    {
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static ::std::string_view ice_staticId() noexcept;

    ::std::string ice_id() const override;

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::Test::S&, const ::std::string&, const ::std::string&> ice_tuple() const
    {
        return std::tie(theS, str, b);
    }

    /**
     * Creates a shallow polymorphic copy of this instance.
     * @return The cloned value.
     */
    DerivedPtr ice_clone() const { return ::std::static_pointer_cast <Derived>(_iceCloneImpl()); }

    ::std::string b;

protected:

    Derived(const Derived&) = default;

    ::Ice::ValuePtr _iceCloneImpl() const override;
    void _iceWriteImpl(::Ice::OutputStream*) const override;

    void _iceReadImpl(::Ice::InputStream*) override;
};

/// \cond INTERNAL
static Derived _iceS_Derived_init;
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamWriter<::Test::Derived>
{
    static void write(OutputStream* ostr, const ::Test::Derived& v)
    {
        ostr->writeAll(v.b);
    }
};

template<>
struct StreamReader<::Test::Derived>
{
    static void read(InputStream* istr, ::Test::Derived& v)
    {
        istr->readAll(v.b);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
