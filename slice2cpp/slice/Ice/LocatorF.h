//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LocatorF.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __LocatorF_h__
#define __LocatorF_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/ProxyF.h>
#include <Ice/ObjectF.h>
#include <Ice/ValueF.h>
#include <Ice/Exception.h>
#include <Ice/LocalObject.h>
#include <Ice/StreamHelpers.h>
#include <Ice/Comparable.h>
#include <Ice/Proxy.h>
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

class Locator;
class LocatorPrx;
class LocatorRegistry;
class LocatorRegistryPrx;

}

/// \cond STREAM
namespace Ice
{

}
/// \endcond

/// \cond INTERNAL
namespace Ice
{

using LocatorPtr = ::std::shared_ptr<Locator>;
using LocatorPrxPtr = ::std::shared_ptr<LocatorPrx>;

using LocatorRegistryPtr = ::std::shared_ptr<LocatorRegistry>;
using LocatorRegistryPrxPtr = ::std::shared_ptr<LocatorRegistryPrx>;

}
/// \endcond

#else // C++98 mapping

namespace IceProxy
{

namespace Ice
{

class Locator;
/// \cond INTERNAL
ICE_API void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< Locator>&);
ICE_API ::IceProxy::Ice::Object* upCast(Locator*);
/// \endcond

class LocatorRegistry;
/// \cond INTERNAL
ICE_API void _readProxy(::Ice::InputStream*, ::IceInternal::ProxyHandle< LocatorRegistry>&);
ICE_API ::IceProxy::Ice::Object* upCast(LocatorRegistry*);
/// \endcond

}

}

namespace Ice
{

class Locator;
/// \cond INTERNAL
ICE_API Object* upCast(Locator*);
/// \endcond
typedef ::IceInternal::Handle< Locator> LocatorPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Ice::Locator> LocatorPrx;
typedef LocatorPrx LocatorPrxPtr;
/// \cond INTERNAL
ICE_API void _icePatchObjectPtr(LocatorPtr&, const ObjectPtr&);
/// \endcond

class LocatorRegistry;
/// \cond INTERNAL
ICE_API Object* upCast(LocatorRegistry*);
/// \endcond
typedef ::IceInternal::Handle< LocatorRegistry> LocatorRegistryPtr;
typedef ::IceInternal::ProxyHandle< ::IceProxy::Ice::LocatorRegistry> LocatorRegistryPrx;
typedef LocatorRegistryPrx LocatorRegistryPrxPtr;
/// \cond INTERNAL
ICE_API void _icePatchObjectPtr(LocatorRegistryPtr&, const ObjectPtr&);
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
