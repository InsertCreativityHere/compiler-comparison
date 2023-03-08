//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `LLURecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// A struct used for marking the last log update.
public struct LogUpdate: Swift.Hashable {
    /// The generation.
    public var generation: Swift.Int64 = 0
    /// The iteration within this generation.
    public var iteration: Swift.Int64 = 0

    public init() {}

    public init(generation: Swift.Int64, iteration: Swift.Int64) {
        self.generation = generation
        self.iteration = iteration
    }
}

/// An `Ice.InputStream` extension to read `LogUpdate` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `LogUpdate` structured value from the stream.
    ///
    /// - returns: `LogUpdate` - The structured value read from the stream.
    func read() throws -> LogUpdate {
        var v = LogUpdate()
        v.generation = try self.read()
        v.iteration = try self.read()
        return v
    }

    /// Read an optional `LogUpdate?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `LogUpdate?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> LogUpdate? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as LogUpdate
    }
}

/// An `Ice.OutputStream` extension to write `LogUpdate` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `LogUpdate` structured value to the stream.
    ///
    /// - parameter _: `LogUpdate` - The value to write to the stream.
    func write(_ v: LogUpdate) {
        self.write(v.generation)
        self.write(v.iteration)
    }

    /// Write an optional `LogUpdate?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `LogUpdate?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: LogUpdate?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 16)
                write(v)
            }
        }
    }
}
