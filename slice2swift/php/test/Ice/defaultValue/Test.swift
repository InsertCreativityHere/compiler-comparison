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

public enum Color: Swift.UInt8 {
    /// red
    case red = 0
    /// green
    case green = 1
    /// blue
    case blue = 2
    public init() {
        self = .red
    }
}

/// An `Ice.InputStream` extension to read `Color` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `Color` - The enumarated value.
    func read() throws -> Color {
        let rawValue: Swift.UInt8 = try read(enumMaxValue: 2)
        guard let val = Color(rawValue: rawValue) else {
            throw Ice.MarshalException("invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `Color` - The enumerated value.
    func read(tag: Swift.Int32) throws -> Color? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as Color
    }
}

/// An `Ice.OutputStream` extension to write `Color` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `Color` - The enumerator to write.
    func write(_ v: Color) {
        write(enum: v.rawValue, maxValue: 2)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `Color` - The enumerator to write.
    func write(tag: Swift.Int32, value: Color?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 2)
    }
}

public enum NestedColor: Swift.UInt8 {
    /// red
    case red = 0
    /// green
    case green = 1
    /// blue
    case blue = 2
    public init() {
        self = .red
    }
}

/// An `Ice.InputStream` extension to read `NestedColor` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `NestedColor` - The enumarated value.
    func read() throws -> NestedColor {
        let rawValue: Swift.UInt8 = try read(enumMaxValue: 2)
        guard let val = NestedColor(rawValue: rawValue) else {
            throw Ice.MarshalException("invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `NestedColor` - The enumerated value.
    func read(tag: Swift.Int32) throws -> NestedColor? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as NestedColor
    }
}

/// An `Ice.OutputStream` extension to write `NestedColor` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `NestedColor` - The enumerator to write.
    func write(_ v: NestedColor) {
        write(enum: v.rawValue, maxValue: 2)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `NestedColor` - The enumerator to write.
    func write(tag: Swift.Int32, value: NestedColor?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 2)
    }
}

public struct Struct1 {
    public var boolFalse: Swift.Bool = false
    public var boolTrue: Swift.Bool = true
    public var b: Swift.UInt8 = 254
    public var s: Swift.Int16 = 16000
    public var i: Swift.Int32 = 3
    public var l: Swift.Int64 = 4
    public var f: Swift.Float = 5.1
    public var d: Swift.Double = 6.2
    public var str: Swift.String = "foo \\ \"bar\n \r\n\t\u{000b}\u{000c}\u{0007}\u{0008}? \u{0007} \u{0007}"
    public var c1: Color = Color.red
    public var c2: Color = Color.green
    public var c3: Color = Color.blue
    public var nc1: NestedColor = NestedColor.red
    public var nc2: NestedColor = NestedColor.green
    public var nc3: NestedColor = NestedColor.blue
    public var noDefault: Swift.String = ""
    public var zeroI: Swift.Int32 = 0
    public var zeroL: Swift.Int64 = 0
    public var zeroF: Swift.Float = 0
    public var zeroDotF: Swift.Float = 0
    public var zeroD: Swift.Double = 0
    public var zeroDotD: Swift.Double = 0

    public init() {}

    public init(boolFalse: Swift.Bool, boolTrue: Swift.Bool, b: Swift.UInt8, s: Swift.Int16, i: Swift.Int32, l: Swift.Int64, f: Swift.Float, d: Swift.Double, str: Swift.String, c1: Color, c2: Color, c3: Color, nc1: NestedColor, nc2: NestedColor, nc3: NestedColor, noDefault: Swift.String, zeroI: Swift.Int32, zeroL: Swift.Int64, zeroF: Swift.Float, zeroDotF: Swift.Float, zeroD: Swift.Double, zeroDotD: Swift.Double) {
        self.boolFalse = boolFalse
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3
        self.noDefault = noDefault
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD
    }
}

/// An `Ice.InputStream` extension to read `Struct1` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Struct1` structured value from the stream.
    ///
    /// - returns: `Struct1` - The structured value read from the stream.
    func read() throws -> Struct1 {
        var v = Struct1()
        v.boolFalse = try self.read()
        v.boolTrue = try self.read()
        v.b = try self.read()
        v.s = try self.read()
        v.i = try self.read()
        v.l = try self.read()
        v.f = try self.read()
        v.d = try self.read()
        v.str = try self.read()
        v.c1 = try self.read()
        v.c2 = try self.read()
        v.c3 = try self.read()
        v.nc1 = try self.read()
        v.nc2 = try self.read()
        v.nc3 = try self.read()
        v.noDefault = try self.read()
        v.zeroI = try self.read()
        v.zeroL = try self.read()
        v.zeroF = try self.read()
        v.zeroDotF = try self.read()
        v.zeroD = try self.read()
        v.zeroDotD = try self.read()
        return v
    }

    /// Read an optional `Struct1?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `Struct1?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Struct1? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as Struct1
    }
}

/// An `Ice.OutputStream` extension to write `Struct1` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Struct1` structured value to the stream.
    ///
    /// - parameter _: `Struct1` - The value to write to the stream.
    func write(_ v: Struct1) {
        self.write(v.boolFalse)
        self.write(v.boolTrue)
        self.write(v.b)
        self.write(v.s)
        self.write(v.i)
        self.write(v.l)
        self.write(v.f)
        self.write(v.d)
        self.write(v.str)
        self.write(v.c1)
        self.write(v.c2)
        self.write(v.c3)
        self.write(v.nc1)
        self.write(v.nc2)
        self.write(v.nc3)
        self.write(v.noDefault)
        self.write(v.zeroI)
        self.write(v.zeroL)
        self.write(v.zeroF)
        self.write(v.zeroDotF)
        self.write(v.zeroD)
        self.write(v.zeroDotD)
    }

    /// Write an optional `Struct1?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `Struct1?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: Struct1?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}
public let ConstBool: Swift.Bool = true

public let ConstByte: Swift.UInt8 = 254

public let ConstShort: Swift.Int16 = 16000

public let ConstInt: Swift.Int32 = 3

public let ConstLong: Swift.Int64 = 4

public let ConstFloat: Swift.Float = 5.1

public let ConstDouble: Swift.Double = 6.2

public let ConstString: Swift.String = "foo \\ \"bar\n \r\n\t\u{000b}\u{000c}\u{0007}\u{0008}? \u{0007} \u{0007}"

public let ConstColor1: Color = Color.red

public let ConstColor2: Color = Color.green

public let ConstColor3: Color = Color.blue

public let ConstNestedColor1: NestedColor = NestedColor.red

public let ConstNestedColor2: NestedColor = NestedColor.green

public let ConstNestedColor3: NestedColor = NestedColor.blue

public let ConstZeroI: Swift.Int32 = 0

public let ConstZeroL: Swift.Int64 = 0

public let ConstZeroF: Swift.Float = 0

public let ConstZeroDotF: Swift.Float = 0

public let ConstZeroD: Swift.Double = 0

public let ConstZeroDotD: Swift.Double = 0


public struct Struct2 {
    public var boolTrue: Swift.Bool = ConstBool
    public var b: Swift.UInt8 = ConstByte
    public var s: Swift.Int16 = ConstShort
    public var i: Swift.Int32 = ConstInt
    public var l: Swift.Int64 = ConstLong
    public var f: Swift.Float = ConstFloat
    public var d: Swift.Double = ConstDouble
    public var str: Swift.String = ConstString
    public var c1: Color = ConstColor1
    public var c2: Color = ConstColor2
    public var c3: Color = ConstColor3
    public var nc1: NestedColor = ConstNestedColor1
    public var nc2: NestedColor = ConstNestedColor2
    public var nc3: NestedColor = ConstNestedColor3
    public var zeroI: Swift.Int32 = ConstZeroI
    public var zeroL: Swift.Int64 = ConstZeroL
    public var zeroF: Swift.Float = ConstZeroF
    public var zeroDotF: Swift.Float = ConstZeroDotF
    public var zeroD: Swift.Double = ConstZeroD
    public var zeroDotD: Swift.Double = ConstZeroDotD

    public init() {}

    public init(boolTrue: Swift.Bool, b: Swift.UInt8, s: Swift.Int16, i: Swift.Int32, l: Swift.Int64, f: Swift.Float, d: Swift.Double, str: Swift.String, c1: Color, c2: Color, c3: Color, nc1: NestedColor, nc2: NestedColor, nc3: NestedColor, zeroI: Swift.Int32, zeroL: Swift.Int64, zeroF: Swift.Float, zeroDotF: Swift.Float, zeroD: Swift.Double, zeroDotD: Swift.Double) {
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD
    }
}

/// An `Ice.InputStream` extension to read `Struct2` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Struct2` structured value from the stream.
    ///
    /// - returns: `Struct2` - The structured value read from the stream.
    func read() throws -> Struct2 {
        var v = Struct2()
        v.boolTrue = try self.read()
        v.b = try self.read()
        v.s = try self.read()
        v.i = try self.read()
        v.l = try self.read()
        v.f = try self.read()
        v.d = try self.read()
        v.str = try self.read()
        v.c1 = try self.read()
        v.c2 = try self.read()
        v.c3 = try self.read()
        v.nc1 = try self.read()
        v.nc2 = try self.read()
        v.nc3 = try self.read()
        v.zeroI = try self.read()
        v.zeroL = try self.read()
        v.zeroF = try self.read()
        v.zeroDotF = try self.read()
        v.zeroD = try self.read()
        v.zeroDotD = try self.read()
        return v
    }

    /// Read an optional `Struct2?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `Struct2?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Struct2? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as Struct2
    }
}

/// An `Ice.OutputStream` extension to write `Struct2` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Struct2` structured value to the stream.
    ///
    /// - parameter _: `Struct2` - The value to write to the stream.
    func write(_ v: Struct2) {
        self.write(v.boolTrue)
        self.write(v.b)
        self.write(v.s)
        self.write(v.i)
        self.write(v.l)
        self.write(v.f)
        self.write(v.d)
        self.write(v.str)
        self.write(v.c1)
        self.write(v.c2)
        self.write(v.c3)
        self.write(v.nc1)
        self.write(v.nc2)
        self.write(v.nc3)
        self.write(v.zeroI)
        self.write(v.zeroL)
        self.write(v.zeroF)
        self.write(v.zeroDotF)
        self.write(v.zeroD)
        self.write(v.zeroDotD)
    }

    /// Write an optional `Struct2?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `Struct2?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: Struct2?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

/// Traits for Slice class`Base`.
public struct BaseTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Base"]
    public static let staticId = "::Test::Base"
}

/// Traits for Slice class`Derived`.
public struct DerivedTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Base", "::Test::Derived"]
    public static let staticId = "::Test::Derived"
}

public typealias ByteSeq = Foundation.Data

public typealias IntSeq = [Swift.Int32]

public typealias IntStringDict = [Swift.Int32: Swift.String]

/// Helper class to read and write `IntStringDict` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct IntStringDictHelper {
    /// Read a `IntStringDict` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - returns: `IntStringDict` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> IntStringDict {
        let sz = try Swift.Int(istr.readSize())
        var v = IntStringDict()
        for _ in 0 ..< sz {
            let key: Swift.Int32 = try istr.read()
            let value: Swift.String = try istr.read()
            v[key] = value
        }
        return v
    }
    /// Read an optional `IntStringDict?` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `IntStringDict` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> IntStringDict? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Wite a `IntStringDict` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter value: `IntStringDict` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: IntStringDict) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Wite an optional `IntStringDict?` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `IntStringDict` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: IntStringDict?) {
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

public struct InnerStruct: Swift.Hashable {
    public var a: Swift.Int32 = 0

    public init() {}

    public init(a: Swift.Int32) {
        self.a = a
    }
}

/// An `Ice.InputStream` extension to read `InnerStruct` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `InnerStruct` structured value from the stream.
    ///
    /// - returns: `InnerStruct` - The structured value read from the stream.
    func read() throws -> InnerStruct {
        var v = InnerStruct()
        v.a = try self.read()
        return v
    }

    /// Read an optional `InnerStruct?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `InnerStruct?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> InnerStruct? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as InnerStruct
    }
}

/// An `Ice.OutputStream` extension to write `InnerStruct` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `InnerStruct` structured value to the stream.
    ///
    /// - parameter _: `InnerStruct` - The value to write to the stream.
    func write(_ v: InnerStruct) {
        self.write(v.a)
    }

    /// Write an optional `InnerStruct?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `InnerStruct?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: InnerStruct?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 4)
                write(v)
            }
        }
    }
}

public struct StructNoDefaults {
    public var bo: Swift.Bool = false
    public var b: Swift.UInt8 = 0
    public var s: Swift.Int16 = 0
    public var i: Swift.Int32 = 0
    public var l: Swift.Int64 = 0
    public var f: Swift.Float = 0.0
    public var d: Swift.Double = 0.0
    public var str: Swift.String = ""
    public var c1: Color = .red
    public var bs: ByteSeq = ByteSeq()
    public var `is`: IntSeq = IntSeq()
    public var st: InnerStruct = InnerStruct()
    public var dict: IntStringDict = IntStringDict()

    public init() {}

    public init(bo: Swift.Bool, b: Swift.UInt8, s: Swift.Int16, i: Swift.Int32, l: Swift.Int64, f: Swift.Float, d: Swift.Double, str: Swift.String, c1: Color, bs: ByteSeq, `is`: IntSeq, st: InnerStruct, dict: IntStringDict) {
        self.bo = bo
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.c1 = c1
        self.bs = bs
        self.`is` = `is`
        self.st = st
        self.dict = dict
    }
}

/// An `Ice.InputStream` extension to read `StructNoDefaults` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `StructNoDefaults` structured value from the stream.
    ///
    /// - returns: `StructNoDefaults` - The structured value read from the stream.
    func read() throws -> StructNoDefaults {
        var v = StructNoDefaults()
        v.bo = try self.read()
        v.b = try self.read()
        v.s = try self.read()
        v.i = try self.read()
        v.l = try self.read()
        v.f = try self.read()
        v.d = try self.read()
        v.str = try self.read()
        v.c1 = try self.read()
        v.bs = try self.read()
        v.`is` = try self.read()
        v.st = try self.read()
        v.dict = try IntStringDictHelper.read(from: self)
        return v
    }

    /// Read an optional `StructNoDefaults?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `StructNoDefaults?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> StructNoDefaults? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as StructNoDefaults
    }
}

/// An `Ice.OutputStream` extension to write `StructNoDefaults` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `StructNoDefaults` structured value to the stream.
    ///
    /// - parameter _: `StructNoDefaults` - The value to write to the stream.
    func write(_ v: StructNoDefaults) {
        self.write(v.bo)
        self.write(v.b)
        self.write(v.s)
        self.write(v.i)
        self.write(v.l)
        self.write(v.f)
        self.write(v.d)
        self.write(v.str)
        self.write(v.c1)
        self.write(v.bs)
        self.write(v.`is`)
        self.write(v.st)
        IntStringDictHelper.write(to: self, value: v.dict)
    }

    /// Write an optional `StructNoDefaults?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `StructNoDefaults?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: StructNoDefaults?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}

/// Traits for Slice class`ClassNoDefaultsBase`.
public struct ClassNoDefaultsBaseTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::ClassNoDefaultsBase"]
    public static let staticId = "::Test::ClassNoDefaultsBase"
}

/// Traits for Slice class`ClassNoDefaults`.
public struct ClassNoDefaultsTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::ClassNoDefaults", "::Test::ClassNoDefaultsBase"]
    public static let staticId = "::Test::ClassNoDefaults"
}

/// :nodoc:
public class Base_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return Base.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_Base() -> Ice.ValueTypeResolver {
        return Base_TypeResolver()
    }
}

open class Base: Ice.Value {
    public var boolFalse: Swift.Bool = false
    public var boolTrue: Swift.Bool = true
    public var b: Swift.UInt8 = 1
    public var s: Swift.Int16 = 2
    public var i: Swift.Int32 = 3
    public var l: Swift.Int64 = 4
    public var f: Swift.Float = 5.1
    public var d: Swift.Double = 6.2
    public var str: Swift.String = "foo \\ \"bar\n \r\n\t\u{000b}\u{000c}\u{0007}\u{0008}? \u{0007} \u{0007}"
    public var noDefault: Swift.String = ""
    public var zeroI: Swift.Int32 = 0
    public var zeroL: Swift.Int64 = 0
    public var zeroF: Swift.Float = 0
    public var zeroDotF: Swift.Float = 0
    public var zeroD: Swift.Double = 0
    public var zeroDotD: Swift.Double = 0

    public required init() {}

    public init(boolFalse: Swift.Bool, boolTrue: Swift.Bool, b: Swift.UInt8, s: Swift.Int16, i: Swift.Int32, l: Swift.Int64, f: Swift.Float, d: Swift.Double, str: Swift.String, noDefault: Swift.String, zeroI: Swift.Int32, zeroL: Swift.Int64, zeroF: Swift.Float, zeroDotF: Swift.Float, zeroD: Swift.Double, zeroDotD: Swift.Double) {
        self.boolFalse = boolFalse
        self.boolTrue = boolTrue
        self.b = b
        self.s = s
        self.i = i
        self.l = l
        self.f = f
        self.d = d
        self.str = str
        self.noDefault = noDefault
        self.zeroI = zeroI
        self.zeroL = zeroL
        self.zeroF = zeroF
        self.zeroDotF = zeroDotF
        self.zeroD = zeroD
        self.zeroDotD = zeroDotD
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return BaseTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return BaseTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.boolFalse = try istr.read()
        self.boolTrue = try istr.read()
        self.b = try istr.read()
        self.s = try istr.read()
        self.i = try istr.read()
        self.l = try istr.read()
        self.f = try istr.read()
        self.d = try istr.read()
        self.str = try istr.read()
        self.noDefault = try istr.read()
        self.zeroI = try istr.read()
        self.zeroL = try istr.read()
        self.zeroF = try istr.read()
        self.zeroDotF = try istr.read()
        self.zeroD = try istr.read()
        self.zeroDotD = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: BaseTraits.staticId, compactId: -1, last: true)
        ostr.write(self.boolFalse)
        ostr.write(self.boolTrue)
        ostr.write(self.b)
        ostr.write(self.s)
        ostr.write(self.i)
        ostr.write(self.l)
        ostr.write(self.f)
        ostr.write(self.d)
        ostr.write(self.str)
        ostr.write(self.noDefault)
        ostr.write(self.zeroI)
        ostr.write(self.zeroL)
        ostr.write(self.zeroF)
        ostr.write(self.zeroDotF)
        ostr.write(self.zeroD)
        ostr.write(self.zeroDotD)
        ostr.endSlice()
    }
}

/// :nodoc:
public class Derived_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return Derived.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_Derived() -> Ice.ValueTypeResolver {
        return Derived_TypeResolver()
    }
}

open class Derived: Base {
    public var c1: Color = Color.red
    public var c2: Color = Color.green
    public var c3: Color = Color.blue
    public var nc1: NestedColor = NestedColor.red
    public var nc2: NestedColor = NestedColor.green
    public var nc3: NestedColor = NestedColor.blue

    public required init() {
        super.init()
    }

    public init(boolFalse: Swift.Bool, boolTrue: Swift.Bool, b: Swift.UInt8, s: Swift.Int16, i: Swift.Int32, l: Swift.Int64, f: Swift.Float, d: Swift.Double, str: Swift.String, noDefault: Swift.String, zeroI: Swift.Int32, zeroL: Swift.Int64, zeroF: Swift.Float, zeroDotF: Swift.Float, zeroD: Swift.Double, zeroDotD: Swift.Double, c1: Color, c2: Color, c3: Color, nc1: NestedColor, nc2: NestedColor, nc3: NestedColor) {
        self.c1 = c1
        self.c2 = c2
        self.c3 = c3
        self.nc1 = nc1
        self.nc2 = nc2
        self.nc3 = nc3
        super.init(boolFalse: boolFalse, boolTrue: boolTrue, b: b, s: s, i: i, l: l, f: f, d: d, str: str, noDefault: noDefault, zeroI: zeroI, zeroL: zeroL, zeroF: zeroF, zeroDotF: zeroDotF, zeroD: zeroD, zeroDotD: zeroDotD)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return DerivedTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return DerivedTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.c1 = try istr.read()
        self.c2 = try istr.read()
        self.c3 = try istr.read()
        self.nc1 = try istr.read()
        self.nc2 = try istr.read()
        self.nc3 = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: DerivedTraits.staticId, compactId: -1, last: false)
        ostr.write(self.c1)
        ostr.write(self.c2)
        ostr.write(self.c3)
        ostr.write(self.nc1)
        ostr.write(self.nc2)
        ostr.write(self.nc3)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}

/// :nodoc:
public class ClassNoDefaultsBase_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return ClassNoDefaultsBase.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_ClassNoDefaultsBase() -> Ice.ValueTypeResolver {
        return ClassNoDefaultsBase_TypeResolver()
    }
}

open class ClassNoDefaultsBase: Ice.Value {
    public var str: Swift.String = ""
    public var c1: Color = .red
    public var bs: ByteSeq = ByteSeq()

    public required init() {}

    public init(str: Swift.String, c1: Color, bs: ByteSeq) {
        self.str = str
        self.c1 = c1
        self.bs = bs
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return ClassNoDefaultsBaseTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return ClassNoDefaultsBaseTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.str = try istr.read()
        self.c1 = try istr.read()
        self.bs = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: ClassNoDefaultsBaseTraits.staticId, compactId: -1, last: true)
        ostr.write(self.str)
        ostr.write(self.c1)
        ostr.write(self.bs)
        ostr.endSlice()
    }
}

/// :nodoc:
public class ClassNoDefaults_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return ClassNoDefaults.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_ClassNoDefaults() -> Ice.ValueTypeResolver {
        return ClassNoDefaults_TypeResolver()
    }
}

open class ClassNoDefaults: ClassNoDefaultsBase {
    public var st: InnerStruct = InnerStruct()
    public var dict: IntStringDict = IntStringDict()

    public required init() {
        super.init()
    }

    public init(str: Swift.String, c1: Color, bs: ByteSeq, st: InnerStruct, dict: IntStringDict) {
        self.st = st
        self.dict = dict
        super.init(str: str, c1: c1, bs: bs)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return ClassNoDefaultsTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return ClassNoDefaultsTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.st = try istr.read()
        self.dict = try IntStringDictHelper.read(from: istr)
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: ClassNoDefaultsTraits.staticId, compactId: -1, last: false)
        ostr.write(self.st)
        IntStringDictHelper.write(to: ostr, value: self.dict)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}
