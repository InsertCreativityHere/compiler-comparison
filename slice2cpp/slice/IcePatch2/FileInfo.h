//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `FileInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __FileInfo_h__
#define __FileInfo_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/BuiltinSequences.h>
#include <IceUtil/UndefSysMacros.h>
#include <IcePatch2/Config.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

#ifndef ICEPATCH2_API
#   if defined(ICE_STATIC_LIBS)
#       define ICEPATCH2_API /**/
#   elif defined(ICEPATCH2_API_EXPORTS)
#       define ICEPATCH2_API ICE_DECLSPEC_EXPORT
#   else
#       define ICEPATCH2_API ICE_DECLSPEC_IMPORT
#   endif
#endif

namespace IcePatch2
{


}

namespace IcePatch2
{

/**
 * Basic information about a single file.
 * \headerfile IcePatch2/IcePatch2.h
 */
struct FileInfo
{
    /**
     * The pathname.
     */
    ::std::string path;
    /**
     * The SHA-1 checksum of the file.
     */
    ::Ice::ByteSeq checksum;
    /**
     * The size of the compressed file in number of bytes.
     */
    int size;
    /**
     * The executable flag.
     */
    bool executable;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Ice::ByteSeq&, const int&, const bool&> ice_tuple() const
    {
        return std::tie(path, checksum, size, executable);
    }
};

/**
 * A sequence with information about many files.
 */
using FileInfoSeq = ::std::vector<FileInfo>;

/**
 * Basic information about a single file.
 * \headerfile IcePatch2/IcePatch2.h
 */
struct LargeFileInfo
{
    /**
     * The pathname.
     */
    ::std::string path;
    /**
     * The SHA-1 checksum of the file.
     */
    ::Ice::ByteSeq checksum;
    /**
     * The size of the compressed file in number of bytes.
     */
    long long int size;
    /**
     * The executable flag.
     */
    bool executable;

    /**
     * Obtains a tuple containing all of the struct's data members.
     * @return The data members in a tuple.
     */
    std::tuple<const ::std::string&, const ::Ice::ByteSeq&, const long long int&, const bool&> ice_tuple() const
    {
        return std::tie(path, checksum, size, executable);
    }
};

/**
 * A sequence with information about many files.
 */
using LargeFileInfoSeq = ::std::vector<LargeFileInfo>;

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
struct StreamableTraits<::IcePatch2::FileInfo>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 7;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::IcePatch2::FileInfo, S>
{
    static void read(S* istr, ::IcePatch2::FileInfo& v)
    {
        istr->readAll(v.path, v.checksum, v.size, v.executable);
    }
};

template<>
struct StreamableTraits<::IcePatch2::LargeFileInfo>
{
    static const StreamHelperCategory helper = StreamHelperCategoryStruct;
    static const int minWireSize = 11;
    static const bool fixedLength = false;
};

template<typename S>
struct StreamReader<::IcePatch2::LargeFileInfo, S>
{
    static void read(S* istr, ::IcePatch2::LargeFileInfo& v)
    {
        istr->readAll(v.path, v.checksum, v.size, v.executable);
    }
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
