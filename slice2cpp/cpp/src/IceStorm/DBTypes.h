// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'DBTypes.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef DBTypes_h_
#define DBTypes_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include "SubscriberRecord.h"
#include "LLURecord.h"

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

// NOLINTBEGIN(modernize-concat-nested-namespaces)

namespace IceStormElection
{
    using StringLogUpdateDict = std::map<std::string, LogUpdate>;
}

namespace IceStorm
{

    using SubscriberRecordDict = std::map<SubscriberRecordKey, SubscriberRecord>;

    struct AllData;
}

namespace IceStorm
{
    struct AllData
    {
        ::IceStormElection::StringLogUpdateDict llus;
        ::IceStorm::SubscriberRecordDict subscribers;

        /// Obtains a tuple containing all of the struct's data members.
        /// @return The data members in a tuple.
        [[nodiscard]] std::tuple<const ::IceStormElection::StringLogUpdateDict&, const ::IceStorm::SubscriberRecordDict&> ice_tuple() const
        {
            return std::tie(llus, subscribers);
        }

        /// Outputs the name and value of each field of this instance to the stream.
        /// @param os The output stream.
        void ice_printFields(std::ostream& os) const;
    };

    std::ostream& operator<<(std::ostream&, const AllData&);

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
    struct StreamableTraits<::IceStorm::AllData>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryStruct;
        static const int minWireSize = 2;
        static const bool fixedLength = false;
    };
    
    template<>
    struct StreamReader<::IceStorm::AllData>
    {
        static void read(InputStream* istr, ::IceStorm::AllData& v)
        {
            istr->readAll(v.llus, v.subscribers);
        }
    };
}
/// \endcond

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
