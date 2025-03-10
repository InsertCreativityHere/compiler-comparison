// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Core.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#define ICE_BUILDING_GENERATED_CODE
#include "Core.h"
#include <Ice/AsyncResponseHandler.h>
#include <Ice/FactoryTable.h>
#include <Ice/OutgoingAsync.h>
#include <algorithm>
#include <array>

#if defined(_MSC_VER)
#   pragma warning(disable : 4458) // declaration of ... hides class member
#   pragma warning(disable : 4996) // ... was declared deprecated
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#   pragma clang diagnostic ignored "-Wdeprecated-declarations"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#   pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

namespace
{
    const IceInternal::FactoryTableInit iceC_factoryTableInit;
    const IceInternal::DefaultUserExceptionFactoryInit<::Core::ArgumentException> iceC_Core_ArgumentException_init("::Core::ArgumentException");
}

const char*
Core::ArgumentException::ice_staticId() noexcept
{
    return "::Core::ArgumentException";
}

const char*
Core::ArgumentException::ice_id() const noexcept
{
    return ice_staticId();
}

void
Core::ArgumentException::ice_throw() const
{
    throw *this;
}

void
Core::ArgumentException::_writeImpl(Ice::OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    ostr->endSlice();
}

void
Core::ArgumentException::_readImpl(Ice::InputStream* istr)
{
    istr->startSlice();
    istr->endSlice();
}
