//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `SubscriberRecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// The key for persistent subscribers, or topics.
/// If the subscriber identity is empty then the record is used as a place holder for the creation of a topic,
/// otherwise the record holds a subscription record.
public struct SubscriberRecordKey: Swift.Hashable {
    /// The topic identity.
    public var topic: Ice.Identity = Ice.Identity()
    /// The identity of the subscriber. If this is empty then the key is a placeholder for a topic.
    public var id: Ice.Identity = Ice.Identity()

    public init() {}

    public init(topic: Ice.Identity, id: Ice.Identity) {
        self.topic = topic
        self.id = id
    }
}

/// An `Ice.InputStream` extension to read `SubscriberRecordKey` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `SubscriberRecordKey` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> SubscriberRecordKey {
        var v = SubscriberRecordKey()
        v.topic = try self.read()
        v.id = try self.read()
        return v
    }

    /// Read an optional `SubscriberRecordKey?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> SubscriberRecordKey? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as SubscriberRecordKey
    }
}

/// An `Ice.OutputStream` extension to write `SubscriberRecordKey` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `SubscriberRecordKey` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: SubscriberRecordKey) {
        self.write(v.topic)
        self.write(v.id)
    }

    /// Write an optional `SubscriberRecordKey?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: SubscriberRecordKey?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

/// Used to store persistent information for persistent subscribers.
public struct SubscriberRecord {
    /// The name of the topic.
    public var topicName: Swift.String = ""
    /// The subscriber identity.
    public var id: Ice.Identity = Ice.Identity()
    /// Is this a link record, or a subscriber record?
    public var link: Swift.Bool = false
    /// The subscriber object.
    public var obj: Ice.ObjectPrx? = nil
    /// The QoS.
    public var theQoS: QoS = QoS()
    /// The cost.
    public var cost: Swift.Int32 = 0
    /// The linked topic.
    public var theTopic: TopicPrx? = nil

    public init() {}

    public init(topicName: Swift.String, id: Ice.Identity, link: Swift.Bool, obj: Ice.ObjectPrx?, theQoS: QoS, cost: Swift.Int32, theTopic: TopicPrx?) {
        self.topicName = topicName
        self.id = id
        self.link = link
        self.obj = obj
        self.theQoS = theQoS
        self.cost = cost
        self.theTopic = theTopic
    }
}

/// An `Ice.InputStream` extension to read `SubscriberRecord` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `SubscriberRecord` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> SubscriberRecord {
        var v = SubscriberRecord()
        v.topicName = try self.read()
        v.id = try self.read()
        v.link = try self.read()
        v.obj = try self.read(Ice.ObjectPrx.self)
        v.theQoS = try QoSHelper.read(from: self)
        v.cost = try self.read()
        v.theTopic = try self.read(TopicPrx.self)
        return v
    }

    /// Read an optional `SubscriberRecord?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> SubscriberRecord? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as SubscriberRecord
    }
}

/// An `Ice.OutputStream` extension to write `SubscriberRecord` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `SubscriberRecord` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: SubscriberRecord) {
        self.write(v.topicName)
        self.write(v.id)
        self.write(v.link)
        self.write(v.obj)
        QoSHelper.write(to: self, value: v.theQoS)
        self.write(v.cost)
        self.write(v.theTopic)
    }

    /// Write an optional `SubscriberRecord?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: SubscriberRecord?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

public typealias SubscriberRecordSeq = [SubscriberRecord]

/// Helper class to read and write `SubscriberRecordSeq` sequence values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct SubscriberRecordSeqHelper {
    /// Read a `SubscriberRecordSeq` sequence from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The sequence read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> SubscriberRecordSeq {
        let sz = try istr.readAndCheckSeqSize(minSize: 13)
        var v = SubscriberRecordSeq()
        v.reserveCapacity(sz)
        for _ in 0 ..< sz {
            let j: SubscriberRecord = try istr.read()
            v.append(j)
        }
        return v
    }

    /// Read an optional `SubscriberRecordSeq?` sequence from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The sequence read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> SubscriberRecordSeq? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `SubscriberRecordSeq` sequence to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: SubscriberRecordSeq) {
        ostr.write(size: v.count)
        for item in v {
            ostr.write(item)
        }
    }

    /// Write an optional `SubscriberRecordSeq?` sequence to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream,  tag: Swift.Int32, value v: SubscriberRecordSeq?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptional(tag: tag, format: .FSize) {
            let pos = ostr.startSize()
            write(to: ostr, value: val)
            ostr.endSize(position: pos)
        }
    }
}
