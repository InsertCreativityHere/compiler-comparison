//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `OperationMode.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

#ifndef __OperationMode_h__
#define __OperationMode_h__

#include <IceUtil/PushDisableWarnings.h>
#include <Ice/Config.h>
#include <Ice/StreamHelpers.h>

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30850
#       error Ice version mismatch: an exact match is required for beta generated code
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

namespace Ice
{
    /**
     * Determines the retry behavior an invocation in case of a (potentially) recoverable error.
     */
    enum class OperationMode : ::std::uint8_t
    {
        /**
         * Ordinary operations have <code>Normal</code> mode. These operations modify object state; invoking such an
         * operation twice in a row has different semantics than invoking it once. The Ice run time guarantees that it
         * will not violate at-most-once semantics for <code>Normal</code> operations.
         */
        Normal,
        /**
         * Operations that use the Slice <code>nonmutating</code> keyword must not modify object state. For C++,
         * nonmutating operations generate <code>const</code> member functions in the skeleton. In addition, the Ice
         * run time will attempt to transparently recover from certain run-time errors by re-issuing a failed request
         * and propagate the failure to the application only if the second attempt fails.
         * <p class="Deprecated"><code>Nonmutating</code> is deprecated; Use the <code>idempotent</code> keyword
         * instead.
         * For C++, to retain the mapping of <code>nonmutating</code> operations to C++ <code>const</code> member
         * functions, use the <code>["cpp:const"]</code> metadata directive.
         */
        Nonmutating,
        /**
         * Operations that use the Slice <code>idempotent</code> keyword can modify object state, but invoking an
         * operation twice in a row must result in the same object state as invoking it once. For example,
         * <code>x = 1</code> is an idempotent statement, whereas <code>x += 1</code> is not. For idempotent
         * operations, the Ice run-time uses the same retry behavior as for nonmutating operations in case of a
         * potentially recoverable error.
         */
        Idempotent
    };

}

/// \cond STREAM
namespace Ice
{

template<>
struct StreamableTraits< ::Ice::OperationMode>
{
    static const StreamHelperCategory helper = StreamHelperCategoryEnum;
    static const int minValue = 0;
    static const int maxValue = 2;
    static const int minWireSize = 1;
    static const bool fixedLength = false;
};

}
/// \endcond

#include <IceUtil/PopDisableWarnings.h>
#endif
