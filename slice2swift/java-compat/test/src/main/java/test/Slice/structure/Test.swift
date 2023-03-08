//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

public typealias StringSeq = [Swift.String]

public typealias IntList = [Swift.Int32]

public typealias StringDict = [Swift.String: Swift.String]

/// Helper class to read and write `StringDict` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct StringDictHelper {
    /// Read a `StringDict` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - returns: `StringDict` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> StringDict {
        let sz = try Swift.Int(istr.readSize())
        var v = StringDict()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: Swift.String = try istr.read()
            v[key] = value
        }
        return v
    }
    /// Read an optional `StringDict?` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `StringDict` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> StringDict? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Wite a `StringDict` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter value: `StringDict` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: StringDict) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Wite an optional `StringDict?` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `StringDict` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: StringDict?) {
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

/// Traits for Slice class `C`.
public struct CTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::C"]
    public static let staticId = "::Test::C"
}

public struct S1: Swift.Hashable {
    public var name: Swift.String = ""

    public init() {}

    public init(name: Swift.String) {
        self.name = name
    }
}

/// An `Ice.InputStream` extension to read `S1` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `S1` structured value from the stream.
    ///
    /// - returns: `S1` - The structured value read from the stream.
    func read() throws -> S1 {
        var v = S1()
        v.name = try self.read()
        return v
    }

    /// Read an optional `S1?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `S1?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> S1? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as S1
    }
}

/// An `Ice.OutputStream` extension to write `S1` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `S1` structured value to the stream.
    ///
    /// - parameter _: `S1` - The value to write to the stream.
    func write(_ v: S1) {
        self.write(v.name)
    }

    /// Write an optional `S1?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `S1?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: S1?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

public class S2 {
    public var bo: Swift.Bool = false
    public var by: Swift.UInt8 = 0
    public var sh: Swift.Int16 = 0
    public var i: Swift.Int32 = 0
    public var l: Swift.Int64 = 0
    public var f: Swift.Float = 0.0
    public var d: Swift.Double = 0.0
    public var str: Swift.String = ""
    public var ss: StringSeq = StringSeq()
    public var il: IntList = IntList()
    public var sd: StringDict = StringDict()
    public var s: S1 = S1()
    public var cls: C? = nil
    public var prx: Ice.ObjectPrx? = nil

    public init() {}

    public init(bo: Swift.Bool, by: Swift.UInt8, sh: Swift.Int16, i: Swift.Int32, l: Swift.Int64, f: Swift.Float, d: Swift.Double, str: Swift.String, ss: StringSeq, il: IntList, sd: StringDict, s: S1, cls: C?, prx: Ice.ObjectPrx?) {
        self.bo = bo
        self.by = by
        self.sh = sh
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.ss = ss
        self.il = il
        self.sd = sd
        self.s = s
        self.cls = cls
        self.prx = prx
    }
}

/// An `Ice.InputStream` extension to read `S2` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `S2` structured value from the stream.
    ///
    /// - returns: `S2` - The structured value read from the stream.
    func read() throws -> S2 {
        let v = S2()
        v.bo = try self.read()
        v.by = try self.read()
        v.sh = try self.read()
        v.i = try self.read()
        v.l = try self.read()
        v.f = try self.read()
        v.d = try self.read()
        v.str = try self.read()
        v.ss = try self.read()
        v.il = try self.read()
        v.sd = try StringDictHelper.read(from: self)
        v.s = try self.read()
        try self.read(C.self) { v.cls = $0 }
        v.prx = try self.read(Ice.ObjectPrx.self)
        return v
    }

    /// Read an optional `S2?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `S2?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> S2? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as S2
    }
}

/// An `Ice.OutputStream` extension to write `S2` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `S2` structured value to the stream.
    ///
    /// - parameter _: `S2` - The value to write to the stream.
    func write(_ v: S2) {
        self.write(v.bo)
        self.write(v.by)
        self.write(v.sh)
        self.write(v.i)
        self.write(v.l)
        self.write(v.f)
        self.write(v.d)
        self.write(v.str)
        self.write(v.ss)
        self.write(v.il)
        StringDictHelper.write(to: self, value: v.sd)
        self.write(v.s)
        self.write(v.cls)
        self.write(v.prx)
    }

    /// Write an optional `S2?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `S2?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: S2?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

/// :nodoc:
public class C_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return C.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_C() -> Ice.ValueTypeResolver {
        return C_TypeResolver()
    }
}

open class C: Ice.Value {
    public var i: Swift.Int32 = 0

    public required init() {}

    public init(i: Swift.Int32) {
        self.i = i
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return CTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return CTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.i = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: CTraits.staticId, compactId: -1, last: true)
        ostr.write(self.i)
        ostr.endSlice()
    }
}
