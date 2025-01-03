//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `LinkRecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// Used to store persistent information for Topic federation.
public struct LinkRecord {
    /// The topic link object.
    public var obj: TopicLinkPrx? = nil
    /// The cost.
    public var cost: Swift.Int32 = 0
    /// The linked topic for getLinkInfoSeq
    public var theTopic: TopicPrx? = nil

    public init() {}

    public init(obj: TopicLinkPrx?, cost: Swift.Int32, theTopic: TopicPrx?) {
        self.obj = obj
        self.cost = cost
        self.theTopic = theTopic
    }
}

/// An `Ice.InputStream` extension to read `LinkRecord` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `LinkRecord` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> LinkRecord {
        var v = LinkRecord()
        v.obj = try self.read(TopicLinkPrx.self)
        v.cost = try self.read()
        v.theTopic = try self.read(TopicPrx.self)
        return v
    }

    /// Read an optional `LinkRecord?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> LinkRecord? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as LinkRecord
    }
}

/// An `Ice.OutputStream` extension to write `LinkRecord` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `LinkRecord` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: LinkRecord) {
        self.write(v.obj)
        self.write(v.cost)
        self.write(v.theTopic)
    }

    /// Write an optional `LinkRecord?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: LinkRecord?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}
