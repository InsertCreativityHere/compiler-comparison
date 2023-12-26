//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `EndpointInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __EndpointInfo_h__
#define __EndpointInfo_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
#include <Ice/Endpoint.h>
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

#ifndef ICEBT_API
#   if defined(ICE_STATIC_LIBS)
#       define ICEBT_API /**/
#   elif defined(ICEBT_API_EXPORTS)
#       define ICEBT_API ICE_DECLSPEC_EXPORT
#   else
#       define ICEBT_API ICE_DECLSPEC_IMPORT
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace IceBT
{


}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

/// \cond INTERNAL
namespace IceBT
{

}
/// \endcond

#else // C++98 mapping

namespace IceBT
{

}

namespace IceBT
{

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
