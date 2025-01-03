//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

@_documentation(visibility: internal)
public class BaseException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return BaseException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_BaseException() -> Ice.UserExceptionTypeResolver {
        return BaseException_TypeResolver()
    }
}

open class BaseException: Ice.UserException, @unchecked Sendable {
    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::BaseException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: BaseException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

@_documentation(visibility: internal)
public class InvalidPointException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return InvalidPointException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_InvalidPointException() -> Ice.UserExceptionTypeResolver {
        return InvalidPointException_TypeResolver()
    }
}

open class InvalidPointException: BaseException, @unchecked Sendable {
    public var index: Swift.Int32 = 0

    public required init() {
        super.init()
    }

    public init(index: Swift.Int32) {
        self.index = index
        super.init()
    }

    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::InvalidPointException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: InvalidPointException.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.index)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.index = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

@_documentation(visibility: internal)
public class InvalidLengthException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return InvalidLengthException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_InvalidLengthException() -> Ice.UserExceptionTypeResolver {
        return InvalidLengthException_TypeResolver()
    }
}

open class InvalidLengthException: BaseException, @unchecked Sendable {
    public var length: Swift.Int32 = 0

    public required init() {
        super.init()
    }

    public init(length: Swift.Int32) {
        self.length = length
        super.init()
    }

    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::InvalidLengthException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: InvalidLengthException.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.length)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.length = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

@_documentation(visibility: internal)
public class OtherException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return OtherException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_OtherException() -> Ice.UserExceptionTypeResolver {
        return OtherException_TypeResolver()
    }
}

open class OtherException: Ice.UserException, @unchecked Sendable {
    public var x: Swift.Int32 = 0
    public var y: Swift.Int32 = 0
    public var z: Swift.Int32 = 0
    public var b: Swift.Bool = false

    public required init() {}

    public init(x: Swift.Int32, y: Swift.Int32, z: Swift.Int32, b: Swift.Bool) {
        self.x = x
        self.y = y
        self.z = z
        self.b = b
    }

    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::Test::OtherException" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: OtherException.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.x)
        ostr.write(self.y)
        ostr.write(self.z)
        ostr.write(self.b)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.x = try istr.read()
        self.y = try istr.read()
        self.z = try istr.read()
        self.b = try istr.read()
        try istr.endSlice()
    }
}

public struct PointF {
    public var x: Swift.Float = 0.0
    public var y: Swift.Float = 0.0
    public var z: Swift.Float = 0.0

    public init() {}

    public init(x: Swift.Float, y: Swift.Float, z: Swift.Float) {
        self.x = x
        self.y = y
        self.z = z
    }
}

/// An `Ice.InputStream` extension to read `PointF` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `PointF` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> PointF {
        var v = PointF()
        v.x = try self.read()
        v.y = try self.read()
        v.z = try self.read()
        return v
    }

    /// Read an optional `PointF?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> PointF? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as PointF
    }
}

/// An `Ice.OutputStream` extension to write `PointF` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `PointF` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: PointF) {
        self.write(v.x)
        self.write(v.y)
        self.write(v.z)
    }

    /// Write an optional `PointF?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: PointF?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 12)
                write(v)
            }
        }
    }
}

public struct PointD {
    public var x: Swift.Double = 0.0
    public var y: Swift.Double = 0.0
    public var z: Swift.Double = 0.0

    public init() {}

    public init(x: Swift.Double, y: Swift.Double, z: Swift.Double) {
        self.x = x
        self.y = y
        self.z = z
    }
}

/// An `Ice.InputStream` extension to read `PointD` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `PointD` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> PointD {
        var v = PointD()
        v.x = try self.read()
        v.y = try self.read()
        v.z = try self.read()
        return v
    }

    /// Read an optional `PointD?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> PointD? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as PointD
    }
}

/// An `Ice.OutputStream` extension to write `PointD` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `PointD` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: PointD) {
        self.write(v.x)
        self.write(v.y)
        self.write(v.z)
    }

    /// Write an optional `PointD?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: PointD?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 24)
                write(v)
            }
        }
    }
}

public struct Point: Swift.Hashable {
    public var x: Swift.Int32 = 0
    public var y: Swift.Int32 = 0

    public init() {}

    public init(x: Swift.Int32, y: Swift.Int32) {
        self.x = x
        self.y = y
    }
}

/// An `Ice.InputStream` extension to read `Point` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Point` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> Point {
        var v = Point()
        v.x = try self.read()
        v.y = try self.read()
        return v
    }

    /// Read an optional `Point?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Point? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as Point
    }
}

/// An `Ice.OutputStream` extension to write `Point` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Point` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: Point) {
        self.write(v.x)
        self.write(v.y)
    }

    /// Write an optional `Point?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: Point?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 8)
                write(v)
            }
        }
    }
}

public typealias Points = [Point]

/// Helper class to read and write `Points` sequence values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct PointsHelper {
    /// Read a `Points` sequence from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The sequence read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> Points {
        let sz = try istr.readAndCheckSeqSize(minSize: 8)
        var v = Points()
        v.reserveCapacity(sz)
        for _ in 0 ..< sz {
            let j: Point = try istr.read()
            v.append(j)
        }
        return v
    }

    /// Read an optional `Points?` sequence from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The sequence read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> Points? {
        guard try istr.readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try istr.skipSize()
        return try read(from: istr)
    }

    /// Write a `Points` sequence to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: Points) {
        ostr.write(size: v.count)
        for item in v {
            ostr.write(item)
        }
    }

    /// Write an optional `Points?` sequence to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream,  tag: Swift.Int32, value v: Points?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptionalVSize(tag: tag, len: val.count, elemSize: 8) {
            write(to: ostr, value: val)
        }
    }
}

public struct Polyline {
    public var vertices: Points = Points()

    public init() {}

    public init(vertices: Points) {
        self.vertices = vertices
    }
}

/// An `Ice.InputStream` extension to read `Polyline` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Polyline` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> Polyline {
        var v = Polyline()
        v.vertices = try PointsHelper.read(from: self)
        return v
    }

    /// Read an optional `Polyline?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Polyline? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as Polyline
    }
}

/// An `Ice.OutputStream` extension to write `Polyline` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Polyline` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: Polyline) {
        PointsHelper.write(to: self, value: v.vertices)
    }

    /// Write an optional `Polyline?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: Polyline?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

public struct Color: Swift.Hashable {
    public var r: Swift.Int32 = 0
    public var g: Swift.Int32 = 0
    public var b: Swift.Int32 = 0
    public var a: Swift.Int32 = 0

    public init() {}

    public init(r: Swift.Int32, g: Swift.Int32, b: Swift.Int32, a: Swift.Int32) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
}

/// An `Ice.InputStream` extension to read `Color` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Color` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> Color {
        var v = Color()
        v.r = try self.read()
        v.g = try self.read()
        v.b = try self.read()
        v.a = try self.read()
        return v
    }

    /// Read an optional `Color?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Color? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as Color
    }
}

/// An `Ice.OutputStream` extension to write `Color` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Color` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: Color) {
        self.write(v.r)
        self.write(v.g)
        self.write(v.b)
        self.write(v.a)
    }

    /// Write an optional `Color?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: Color?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 16)
                write(v)
            }
        }
    }
}

public typealias StringColorMap = [Swift.Int32: Color]

/// Helper class to read and write `StringColorMap` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct StringColorMapHelper {
    /// Read a `StringColorMap` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> StringColorMap {
        let sz = try Swift.Int(istr.readSize())
        var v = StringColorMap()
        for _ in 0 ..< sz {
            let key: Swift.Int32 = try istr.read()
            let value: Color = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `StringColorMap?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> StringColorMap? {
        guard try istr.readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try istr.skipSize()
        return try read(from: istr)
    }

    /// Write a `StringColorMap` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: StringColorMap) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `StringColorMap?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: StringColorMap?) {
        guard let val = v else {
            return
        }
        if ostr.writeOptionalVSize(tag: tag, len: val.count, elemSize: 20) {
            write(to: ostr, value: val)
        }
    }
}

public struct ColorPalette {
    public var colors: StringColorMap = StringColorMap()

    public init() {}

    public init(colors: StringColorMap) {
        self.colors = colors
    }
}

/// An `Ice.InputStream` extension to read `ColorPalette` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `ColorPalette` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> ColorPalette {
        var v = ColorPalette()
        v.colors = try StringColorMapHelper.read(from: self)
        return v
    }

    /// Read an optional `ColorPalette?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> ColorPalette? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as ColorPalette
    }
}

/// An `Ice.OutputStream` extension to write `ColorPalette` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `ColorPalette` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: ColorPalette) {
        StringColorMapHelper.write(to: self, value: v.colors)
    }

    /// Write an optional `ColorPalette?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: ColorPalette?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

public class Draw {
    public var backgroundColor: Color = Color()
    public var pen: Pen? = nil
    public var shared: Swift.Bool = false

    public init() {}

    public init(backgroundColor: Color, pen: Pen?, shared: Swift.Bool) {
        self.backgroundColor = backgroundColor
        self.pen = pen
        self.shared = shared
    }
}

/// An `Ice.InputStream` extension to read `Draw` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Draw` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> Draw {
        let v = Draw()
        v.backgroundColor = try self.read()
        try self.read(Pen.self) { v.pen = $0 }
        v.shared = try self.read()
        return v
    }

    /// Read an optional `Draw?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Draw? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as Draw
    }
}

/// An `Ice.OutputStream` extension to write `Draw` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Draw` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: Draw) {
        self.write(v.backgroundColor)
        self.write(v.pen)
        self.write(v.shared)
    }

    /// Write an optional `Draw?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: Draw?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

@_documentation(visibility: internal)
public class Pen_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return Pen.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_Pen() -> Ice.ValueTypeResolver {
        return Pen_TypeResolver()
    }
}

open class Pen: Ice.Value {
    public var thickness: Swift.Int32 = 0
    public var color: Color = Color()

    public required init() {}

    public init(thickness: Swift.Int32, color: Color) {
        self.thickness = thickness
        self.color = color
    }

    /// - Returns: The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String { "::Test::Pen" }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.thickness = try istr.read()
        self.color = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: Pen.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.thickness)
        ostr.write(self.color)
        ostr.endSlice()
    }
}
