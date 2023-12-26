//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `DerivedEx.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __DerivedEx_h__
#define __DerivedEx_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Test.h>
#include <Forward.h>
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

class DerivedEx : public ::Ice::UserExceptionHelper<DerivedEx, BaseEx>
{
public:

    virtual ~DerivedEx();

    DerivedEx(const DerivedEx&) = default;

    DerivedEx() = default;

    /**
     * One-shot constructor to initialize all data members.
     */
    DerivedEx(const ::std::string& reason) :
        ::Ice::UserExceptionHelper<DerivedEx, BaseEx>(reason)
    {
    }

    /**
     * Obtains a tuple containing all of the exception's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&> ice_tuple() const
    {
        return std::tie(reason);
    }

    /**
     * Obtains the Slice type ID of this exception.
     * @return The fully-scoped type ID.
     */
    static const ::std::string& ice_staticId();
};

/// \cond INTERNAL
static DerivedEx _iceS_DerivedEx_init;
/// \endcond

}

/// \cond STREAM
namespace Ice
{

template<typename S>
struct StreamWriter<::Test::DerivedEx, S>
{
    static void write(S*, const ::Test::DerivedEx&)
    {
    }
};

template<typename S>
struct StreamReader<::Test::DerivedEx, S>
{
    static void read(S*, ::Test::DerivedEx&)
    {
    }
};

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

}

namespace Test
{

class DerivedEx : public BaseEx
{
public:

    DerivedEx() {}
    /**
     * One-shot constructor to initialize all data members.
     */
    explicit DerivedEx(const ::std::string& reason);

#ifdef ICE_CPP11_COMPILER
    DerivedEx(const DerivedEx&) = default;
    virtual ~DerivedEx();
#else
    virtual ~DerivedEx() throw();
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
    virtual DerivedEx* ice_clone() const;
    /**
     * Throws this exception.
     */
    virtual void ice_throw() const;

protected:

    /// \cond STREAM
    virtual void _writeImpl(::Ice::OutputStream*) const;
    virtual void _readImpl(::Ice::InputStream*);
    /// \endcond
};

/// \cond INTERNAL
static DerivedEx _iceS_DerivedEx_init;
/// \endcond

}

/// \cond INTERNAL
namespace IceAsync
{

}
/// \endcond

namespace IceProxy
{

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Test::DerivedEx>
{
    static const StreamHelperCategory helper = StreamHelperCategoryUserException;
};

}
/// \endcond

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
