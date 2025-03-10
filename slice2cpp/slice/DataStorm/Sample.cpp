// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Sample.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#ifndef DATASTORM_API_EXPORTS
#   define DATASTORM_API_EXPORTS
#endif
#define ICE_BUILDING_GENERATED_CODE
#include "Sample.h"
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

std::ostream&
DataStorm::operator<<(std::ostream& os, SampleEvent value)
{
    switch (value)
    {
        case SampleEvent::Add:
            return os << "Add";
        case SampleEvent::Update:
            return os << "Update";
        case SampleEvent::PartialUpdate:
            return os << "PartialUpdate";
        case SampleEvent::Remove:
            return os << "Remove";
        default:
            return os << static_cast<std::int32_t>(value);
    }
}
