// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'SSLInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

// clang-format off

#ifndef SSLInfo_h_
#define SSLInfo_h_

#include <Ice/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/BuiltinSequences.h>
#include <Glacier2/Config.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

#ifndef GLACIER2_API
#   if defined(GLACIER2_API_EXPORTS)
#       define GLACIER2_API ICE_DECLSPEC_EXPORT
#   else
#       define GLACIER2_API ICE_DECLSPEC_IMPORT
#   endif
#endif

// NOLINTBEGIN(modernize-concat-nested-namespaces)

namespace Glacier2
{
    struct SSLInfo;
}

namespace Glacier2
{
    /// Information taken from an SSL connection used for permissions verification.
    /// @see PermissionsVerifier
    struct SSLInfo
    {
        /// The remote host.
        std::string remoteHost;
        /// The remote port.
        std::int32_t remotePort;
        /// The router's host.
        std::string localHost;
        /// The router's port.
        std::int32_t localPort;
        /// The negotiated cipher suite.
        std::string cipher;
        /// The certificate chain.
        ::Ice::StringSeq certs;

        /// Obtains a tuple containing all of the struct's data members.
        /// @return The data members in a tuple.
        [[nodiscard]] std::tuple<const std::string&, const std::int32_t&, const std::string&, const std::int32_t&, const std::string&, const ::Ice::StringSeq&> ice_tuple() const
        {
            return std::tie(remoteHost, remotePort, localHost, localPort, cipher, certs);
        }

        /// Outputs the name and value of each field of this instance to the stream.
        /// @param os The output stream.
        GLACIER2_API void ice_printFields(std::ostream& os) const;
    };

    GLACIER2_API std::ostream& operator<<(std::ostream&, const SSLInfo&);

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
    struct StreamableTraits<::Glacier2::SSLInfo>
    {
        static const StreamHelperCategory helper = StreamHelperCategoryStruct;
        static const int minWireSize = 12;
        static const bool fixedLength = false;
    };
    
    template<>
    struct StreamReader<::Glacier2::SSLInfo>
    {
        static void read(InputStream* istr, ::Glacier2::SSLInfo& v)
        {
            istr->readAll(v.remoteHost, v.remotePort, v.localHost, v.localPort, v.cipher, v.certs);
        }
    };
}
/// \endcond

// NOLINTEND(modernize-concat-nested-namespaces)

#include <Ice/PopDisableWarnings.h>
#endif
