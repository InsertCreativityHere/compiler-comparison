//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LLURecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __LLURecord_h__
#define __LLURecord_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/ProxyF.h>
#include <Ice/ObjectF.h>
#include <Ice/ValueF.h>
#include <Ice/Exception.h>
#include <Ice/LocalObject.h>
#include <Ice/StreamHelpers.h>
#include <Ice/Comparable.h>
#include <IceUtil/ScopedArray.h>
#include <Ice/Optional.h>
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

namespace IceStormElection
{

/**
 * A struct used for marking the last log update.
 */
struct LogUpdate
{
    /**
     * The generation.
     */
    long long int generation;
    /**
     * The iteration within this generation.
     */
    long long int iteration;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const long long int&, const long long int&> ice_tuple() const
    {
        return std::tie(generation, iteration);
    }
};

using Ice::operator<;
using Ice::operator<=;
using Ice::operator>;
using Ice::operator>=;
using Ice::operator==;
using Ice::operator!=;

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits<::IceStormElection::LogUpdate>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 16;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamReader<::IceStormElection::LogUpdate, S>
{
    static void read(S* istr, ::IceStormElection::LogUpdate& v)
    {
        istr->readAll(v.generation, v.iteration);
    }
};

}
/// \endcond

#else // C++98 mapping

namespace IceStormElection
{

/**
 * A struct used for marking the last log update.
 */
struct LogUpdate
{
    /**
     * The generation.
     */
    ::Ice::Long generation;
    /**
     * The iteration within this generation.
     */
    ::Ice::Long iteration;

    bool operator==(const LogUpdate& rhs_) const
    {
        if(this == &rhs_)
        {
            return true;
        }
        if(generation != rhs_.generation)
        {
            return false;
        }
        if(iteration != rhs_.iteration)
        {
            return false;
        }
        return true;
    }

    bool operator<(const LogUpdate& rhs_) const
    {
        if(this == &rhs_)
        {
            return false;
        }
        if(generation < rhs_.generation)
        {
            return true;
        }
        else if(rhs_.generation < generation)
        {
            return false;
        }
        if(iteration < rhs_.iteration)
        {
            return true;
        }
        else if(rhs_.iteration < iteration)
        {
            return false;
        }
        return false;
    }

    bool operator!=(const LogUpdate& rhs_) const
    {
        return !operator==(rhs_);
    }
    bool operator<=(const LogUpdate& rhs_) const
    {
        return operator<(rhs_) || operator==(rhs_);
    }
    bool operator>(const LogUpdate& rhs_) const
    {
        return !operator<(rhs_) && !operator==(rhs_);
    }
    bool operator>=(const LogUpdate& rhs_) const
    {
        return !operator<(rhs_);
    }
};

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::IceStormElection::LogUpdate>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 16;
    static const bool fixedLength = true;
};

template<typename S>
struct StreamWriter< ::IceStormElection::LogUpdate, S>
{
    static void write(S* ostr, const ::IceStormElection::LogUpdate& v)
    {
        ostr->write(v.generation);
        ostr->write(v.iteration);
    }
};

template<typename S>
struct StreamReader< ::IceStormElection::LogUpdate, S>
{
    static void read(S* istr, ::IceStormElection::LogUpdate& v)
    {
        istr->read(v.generation);
        istr->read(v.iteration);
    }
};

}
/// \endcond

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
