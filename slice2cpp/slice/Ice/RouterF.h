//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `RouterF.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __RouterF_h__
#define __RouterF_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Ice.h>
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

#ifndef ICE_API
#   if defined(ICE_STATIC_LIBS)
#       define ICE_API /**/
#   elif defined(ICE_API_EXPORTS)
#       define ICE_API ICE_DECLSPEC_EXPORT
#   else
#       define ICE_API ICE_DECLSPEC_IMPORT
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace Ice
{

class Router;
class RouterPrx;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

/// \cond INTERNAL
namespace Ice
{

using RouterPtr = ::std::shared_ptr<Router>;
using RouterPrxPtr = ::std::shared_ptr<RouterPrx>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Ice
{

class Router;
/// \cond INTERNAL
ICE_API void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< Router>&);
ICE_API ::IceProxy::Ice::Object* upCast(Router*);
/// \endcond

}

}

namespace Ice
{

class Router;
/// \cond INTERNAL
ICE_API Object* upCast(Router*);
/// \endcond
typedef ::IceInternal::Handle< Router> RouterPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Ice::Router> RouterPrx;
typedef RouterPrx RouterPrxPtr;
/// \cond INTERNAL
ICE_API void _icePatchObjectPtr(RouterPtr&, const ObjectPtr&);
/// \endcond

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
