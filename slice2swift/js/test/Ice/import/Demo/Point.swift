//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Point.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

public struct gxPoint: Swift.Hashable {
    public var x: Swift.Int32 = 0
    public var y: Swift.Int32 = 0

    public init() {}

    public init(x: Swift.Int32, y: Swift.Int32) {
        self.x = x
        self.y = y
    }
}

/// An `Ice.InputStream` extension to read `gxPoint` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `gxPoint` structured value from the stream.
    ///
    /// - returns: `gxPoint` - The structured value read from the stream.
    func read() throws -> gxPoint {
        var v = gxPoint()
        v.x = try self.read()
        v.y = try self.read()
        return v
    }

    /// Read an optional `gxPoint?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `gxPoint?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> gxPoint? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as gxPoint
    }
}

/// An `Ice.OutputStream` extension to write `gxPoint` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `gxPoint` structured value to the stream.
    ///
    /// - parameter _: `gxPoint` - The value to write to the stream.
    func write(_ v: gxPoint) {
        self.write(v.x)
        self.write(v.y)
    }

    /// Write an optional `gxPoint?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `gxPoint?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: gxPoint?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 8)
                write(v)
            }
        }
    }
}
