//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.10
//
// <auto-generated>
//
// Generated from file `Test1.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __Test1_h__
#define __Test1_h__

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

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace Test
{

namespace SubA
{

namespace SubSubA1
{

constexpr int Value1 = 10;

}

}

namespace SubB
{

namespace SubSubB1
{

constexpr int Value1 = 20;

}

}

}

#else // C++98 mapping

namespace Test
{

namespace SubA
{

namespace SubSubA1
{

const ::Ice::Int Value1 = 10;

}

}

namespace SubB
{

namespace SubSubB1
{

const ::Ice::Int Value1 = 20;

}

}

}

#endif

#include <IceUtil/PopDisableWarnings.h>
#endif
