// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Identity.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef Identity_h_
#define Identity_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Config.h>
#include <Ice/Comparable.h>
#include <Ice/StreamHelpers.h>
#include <string>
#include <vector>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

// NOLINTBEGIN(modernize-concat-nested-namespaces)

namespace Ice
{
    struct Identity;

    /// A sequence of identities.
    using IdentitySeq = std::vector<Identity>;
}

namespace Ice
{
    /// The identity of an Ice object. In a proxy, an empty Identity#name denotes a nil proxy. An identity with
    /// an empty Identity#name and a non-empty Identity#category is illegal. You cannot add a servant
    /// with an empty name to the Active Servant Map.
    /// @see ServantLocator
    /// @see ObjectAdapter#addServantLocator
    struct Identity
    {
        /// The name of the Ice object.
        std::string name;
        /// The Ice object category.
        std::string category;

        /// Obtains a tuple containing all of the struct's data members.
        /// @return The data members in a tuple.
        [[nodiscard]] std::tuple<const std::string&, const std::string&> ice_tuple() const
        {
            return std::tie(name, category);
        }

        /// Outputs the name and value of each field of this instance to the stream.
        /// @param os The output stream.
        ICE_API void ice_printFields(std::ostream& os) const;
    };

    ICE_API std::ostream& operator<<(std::ostream&, const Identity&);

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
    struct StreamableTraits<::Ice::Identity>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryStruct;
        static const int minWireSize = 2;
        static const bool fixedLength = false;
    };
    
    template<>
    struct StreamReader<::Ice::Identity>
    {
        static void read(InputStream* istr, ::Ice::Identity& v)
        {
            istr->readAll(v.name, v.category);
        }
    };
}
/// \endcond

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
