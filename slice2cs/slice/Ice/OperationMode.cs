// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'OperationMode.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("OperationMode.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace Ice
{
    /// <summary>
    /// Determines the retry behavior an invocation in case of a (potentially) recoverable error.
    /// </summary>
    public enum OperationMode
    {
        /// <summary>
        /// Ordinary operations have Normal mode. These operations modify object state; invoking such an
        /// operation twice in a row has different semantics than invoking it once. The Ice run time guarantees that it
        /// will not violate at-most-once semantics for Normal operations.
        /// </summary>
        Normal,
        /// <summary>
        /// Operations that are nonmutating must not modify object state.
        /// The Ice run-time no longer makes a distinction between nonmutating operations and idempotent operations.
        /// Use the idempotent keyword instead.
        /// </summary>
        Nonmutating,
        /// <summary>
        /// Operations that use the Slice idempotent keyword can modify object state, but invoking an
        /// operation twice in a row must result in the same object state as invoking it once. For example,
        /// x = 1 is an idempotent statement, whereas x += 1 is not. In addition, the Ice
        /// run time will attempt to transparently recover from certain run-time errors by re-issuing a failed request
        /// and propagate the failure to the application only if the second attempt fails.
        /// </summary>
        Idempotent
    }

    public sealed class OperationModeHelper
    {
        public static void write(Ice.OutputStream ostr, OperationMode v)
        {
            ostr.writeEnum((int)v, 2);
        }

        public static OperationMode read(Ice.InputStream istr)
        {
            OperationMode v;
            v = (OperationMode)istr.readEnum(2);
            return v;
        }
    }
}
