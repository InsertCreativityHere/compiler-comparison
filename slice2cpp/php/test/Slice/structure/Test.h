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

#ifndef __Test_h__
#define __Test_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <IceUtil/UndefSysMacros.h>
#include <list>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace Test
{

class C;

}

namespace Test
{

using StringSeq = ::std::vector<::std::string>;

using StringDict = ::std::map<::std::string, ::std::string>;

struct S1
{
    ::std::string name;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(name);
    }
};

struct S2
{
    bool bo;
    ::Ice::Byte by;
    short sh;
    int i;
    long long int l;
    float f;
    double d;
    ::std::string str;
    ::Test::StringSeq ss;
    ::Test::StringDict sd;
    ::Test::S1 s;
    ::std::shared_ptr<::Test::C> cls;
    ::std::shared_ptr<::Ice::ObjectPrx> prx;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const bool&, const ::Ice::Byte&, const short&, const int&, const long long int&, const float&, const double&, const ::std::string&, const ::Test::StringSeq&, const ::Test::StringDict&, const ::Test::S1&, const ::std::shared_ptr<::Test::C>&, const ::std::shared_ptr<::Ice::ObjectPrx>&> ice_tuple() const
    {
        return std::tie(bo, by, sh, i, l, f, d, str, ss, sd, s, cls, prx);
    }
};

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

namespace Test
{

class C : public ::Ice::ValueHelper<C, ::Ice::Value>
{
public:

    virtual ~C();

    C() = default;

    C(const C&) = default;
    C(C&&) = default;
    C& operator=(const C&) = default;
    C& operator=(C&&) = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    explicit C(int i) :
        i(i)
    {
    }

    /**
     * Obtains a tuple containing all of the value's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const int&> ice_tuple() const
    {
        return std::tie(i);
    }

    /**
     * Obtains the Slice type ID of this value.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();

    int i;
};

/// \cond INTERNAL
static C _iceS_C_init;
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamReader<::Test::C, S>
{
    static void read(S* istr, ::Test::C& v)
    {
        istr->readAll(v.i);
    }
};

template<>
struct StreamableTraits<::Test::S1>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::S1, S>
{
    static void read(S* istr, ::Test::S1& v)
    {
        istr->readAll(v.name);
    }
};

template<>
struct StreamableTraits<::Test::S2>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 35;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::Test::S2, S>
{
    static void read(S* istr, ::Test::S2& v)
    {
        istr->readAll(v.bo, v.by, v.sh, v.i, v.l, v.f, v.d, v.str, v.ss, v.sd, v.s, v.cls, v.prx);
    }
};

}
/// \endcond

/// \cond INTERNAL
namespace Test
{

using CPtr = ::std::shared_ptr<C>;

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
