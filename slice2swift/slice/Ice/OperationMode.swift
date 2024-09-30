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

import Foundation

/// Determines the retry behavior an invocation in case of a (potentially) recoverable error.
public enum OperationMode: Swift.UInt8 {
    /// Normal Ordinary operations have Normal mode. These operations modify object state; invoking such an
    /// operation twice in a row has different semantics than invoking it once. The Ice run time guarantees that it
    /// will not violate at-most-once semantics for Normal operations.
    case Normal = 0
    /// Nonmutating Operations that are nonmutating must not modify object state.
    /// The Ice run-time no longer makes a distinction between nonmutating operations and idempotent operations.
    /// Nonmutating is deprecated; Use the idempotent keyword
    /// instead.
    case Nonmutating = 1
    /// Idempotent Operations that use the Slice idempotent keyword can modify object state, but invoking an
    /// operation twice in a row must result in the same object state as invoking it once. For example,
    /// x = 1 is an idempotent statement, whereas x += 1 is not. In addition, the Ice
    /// run time will attempt to transparently recover from certain run-time errors by re-issuing a failed request
    /// and propagate the failure to the application only if the second attempt fails.
    case Idempotent = 2
    public init() {
        self = .Normal
    }
}

/// An `Ice.InputStream` extension to read `OperationMode` enumerated values from the stream.
public extension InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `OperationMode` - The enumarated value.
    func read() throws -> OperationMode {
        let rawValue: Swift.UInt8 = try read(enumMaxValue: 2)
        guard let val = OperationMode(rawValue: rawValue) else {
            throw MarshalException("invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `OperationMode` - The enumerated value.
    func read(tag: Swift.Int32) throws -> OperationMode? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as OperationMode
    }
}

/// An `Ice.OutputStream` extension to write `OperationMode` enumerated values to the stream.
public extension OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `OperationMode` - The enumerator to write.
    func write(_ v: OperationMode) {
        write(enum: v.rawValue, maxValue: 2)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `OperationMode` - The enumerator to write.
    func write(tag: Swift.Int32, value: OperationMode?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 2)
    }
}
