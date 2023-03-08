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
import PromiseKit

public typealias SerialSmall = Foundation.Data

public typealias SerialLarge = Foundation.Data

public typealias SerialStruct = Foundation.Data

/// Traits for Slice interface `MyClass`.
public struct MyClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyClass"]
    public static let staticId = "::Test::MyClass"
}

public typealias SLS = [SerialLarge]

/// Helper class to read and write `SLS` sequence values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct SLSHelper {
    /// Read a `SLS` sequence from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - returns: `SLS` - The sequence read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> SLS {
        let sz = try istr.readAndCheckSeqSize(minSize: 1)
        var v = SLS()
        v.reserveCapacity(sz)
        for _ in 0 ..< sz {
            let j: SerialLarge = try istr.read()
            v.append(j)
        }
        return v
    }
    /// Read an optional `SLS?` sequence from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `SLS` - The sequence read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> SLS? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Wite a `SLS` sequence to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter value: `SLS` - The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: SLS) {
        ostr.write(size: v.count)
        for item in v {
            ostr.write(item)
        }
    }

    /// Wite an optional `SLS?` sequence to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `SLS` The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream,  tag: Swift.Int32, value v: SLS?) {
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

public typealias SLSS = [SLS]

/// Helper class to read and write `SLSS` sequence values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct SLSSHelper {
    /// Read a `SLSS` sequence from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - returns: `SLSS` - The sequence read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> SLSS {
        let sz = try istr.readAndCheckSeqSize(minSize: 1)
        var v = SLSS()
        v.reserveCapacity(sz)
        for _ in 0 ..< sz {
            let j: SLS = try SLSHelper.read(from: istr)
            v.append(j)
        }
        return v
    }
    /// Read an optional `SLSS?` sequence from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `SLSS` - The sequence read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> SLSS? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Wite a `SLSS` sequence to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter value: `SLSS` - The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: SLSS) {
        ostr.write(size: v.count)
        for item in v {
            SLSHelper.write(to: ostr, value: item)
        }
    }

    /// Wite an optional `SLSS?` sequence to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `SLSS` The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream,  tag: Swift.Int32, value v: SLSS?) {
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

public typealias SLD = [Swift.Int32: SerialLarge]

/// Helper class to read and write `SLD` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct SLDHelper {
    /// Read a `SLD` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - returns: `SLD` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> SLD {
        let sz = try Swift.Int(istr.readSize())
        var v = SLD()
        for _ in 0 ..< sz {
            let key: Swift.Int32 = try istr.read()
            let value: SerialLarge = try istr.read()
            v[key] = value
        }
        return v
    }
    /// Read an optional `SLD?` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `SLD` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> SLD? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Wite a `SLD` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter value: `SLD` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: SLD) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Wite an optional `SLD?` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `SLD` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: SLD?) {
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

public typealias SLSD = [Swift.Int32: SLS]

/// Helper class to read and write `SLSD` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct SLSDHelper {
    /// Read a `SLSD` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - returns: `SLSD` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> SLSD {
        let sz = try Swift.Int(istr.readSize())
        var v = SLSD()
        for _ in 0 ..< sz {
            let key: Swift.Int32 = try istr.read()
            let value: SLS = try SLSHelper.read(from: istr)
            v[key] = value
        }
        return v
    }
    /// Read an optional `SLSD?` dictionary from the stream.
    ///
    /// - parameter istr: `Ice.InputStream` - The stream to read from.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `SLSD` - The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> SLSD? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Wite a `SLSD` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter value: `SLSD` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: SLSD) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            SLSHelper.write(to: ostr, value: value)
        }
    }

    /// Wite an optional `SLSD?` dictionary to the stream.
    ///
    /// - parameter ostr: `Ice.OuputStream` - The stream to write to.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `SLSD` - The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: SLSD?) {
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

public struct Foo: Swift.Hashable {
    public var SLmem: SerialLarge = SerialLarge()
    public var SLSmem: SLS = SLS()

    public init() {}

    public init(SLmem: SerialLarge, SLSmem: SLS) {
        self.SLmem = SLmem
        self.SLSmem = SLSmem
    }
}

/// An `Ice.InputStream` extension to read `Foo` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `Foo` structured value from the stream.
    ///
    /// - returns: `Foo` - The structured value read from the stream.
    func read() throws -> Foo {
        var v = Foo()
        v.SLmem = try self.read()
        v.SLSmem = try SLSHelper.read(from: self)
        return v
    }

    /// Read an optional `Foo?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `Foo?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> Foo? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as Foo
    }
}

/// An `Ice.OutputStream` extension to write `Foo` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `Foo` structured value to the stream.
    ///
    /// - parameter _: `Foo` - The value to write to the stream.
    func write(_ v: Foo) {
        self.write(v.SLmem)
        SLSHelper.write(to: self, value: v.SLSmem)
    }

    /// Write an optional `Foo?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `Foo?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: Foo?) {
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
public class Bar_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return Bar.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_Bar() -> Ice.UserExceptionTypeResolver {
        return Bar_TypeResolver()
    }
}

open class Bar: Ice.UserException {
    public var SLmem: SerialLarge = SerialLarge()
    public var SLSmem: SLS = SLS()

    public required init() {}

    public init(SLmem: SerialLarge, SLSmem: SLS) {
        self.SLmem = SLmem
        self.SLSmem = SLSmem
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::Bar"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: Bar.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.SLmem)
        SLSHelper.write(to: ostr, value: self.SLSmem)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.SLmem = try istr.read()
        self.SLSmem = try SLSHelper.read(from: istr)
        try istr.endSlice()
    }
}

/// Traits for Slice class `Baz`.
public struct BazTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Baz"]
    public static let staticId = "::Test::Baz"
}

/// MyClassPrx overview.
///
/// MyClassPrx Methods:
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - opSerialSmallJava: 
///
///  - opSerialSmallJavaAsync: 
///
///  - opSerialLargeJava: 
///
///  - opSerialLargeJavaAsync: 
///
///  - opSerialStructJava: 
///
///  - opSerialStructJavaAsync: 
public protocol MyClassPrx: Ice.ObjectPrx {}

private final class MyClassPrxI: Ice.ObjectPrxI, MyClassPrx {
    public override class func ice_staticId() -> Swift.String {
        return MyClassTraits.staticId
    }
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `MyClassPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `MyClassPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: MyClassPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> MyClassPrx? {
    return try MyClassPrxI.checkedCast(prx: prx, facet: facet, context: context) as MyClassPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `MyClassPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `MyClassPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: MyClassPrx.Protocol, facet: Swift.String? = nil) -> MyClassPrx {
    return MyClassPrxI.uncheckedCast(prx: prx, facet: facet) as MyClassPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `MyClassPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: MyClassPrx.Protocol) -> Swift.String {
    return MyClassTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `MyClassPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `MyClassPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `MyClassPrx?` - The extracted proxy
    func read(_ type: MyClassPrx.Protocol) throws -> MyClassPrx? {
        return try read() as MyClassPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `MyClassPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `MyClassPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: MyClassPrx.Protocol) throws -> MyClassPrx? {
        return try read(tag: tag) as MyClassPrxI?
    }
}

/// MyClassPrx overview.
///
/// MyClassPrx Methods:
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - opSerialSmallJava: 
///
///  - opSerialSmallJavaAsync: 
///
///  - opSerialLargeJava: 
///
///  - opSerialLargeJavaAsync: 
///
///  - opSerialStructJava: 
///
///  - opSerialStructJavaAsync: 
public extension MyClassPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func shutdown(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "shutdown",
                          mode: .Normal,
                          context: context)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func shutdownAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "shutdown",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `SerialSmall`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: SerialSmall, o: SerialSmall)`:
    ///
    ///   - returnValue: `SerialSmall`
    ///
    ///   - o: `SerialSmall`
    func opSerialSmallJava(_ iceP_i: SerialSmall, context: Ice.Context? = nil) throws -> (returnValue: SerialSmall, o: SerialSmall) {
        return try _impl._invoke(operation: "opSerialSmallJava",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_i)
                                 },
                                 read: { istr in
                                     let iceP_o: SerialSmall = try istr.read()
                                     let iceP_returnValue: SerialSmall = try istr.read()
                                     return (iceP_returnValue, iceP_o)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `SerialSmall`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<(returnValue: SerialSmall, o: SerialSmall)>` - The result of the operation
    func opSerialSmallJavaAsync(_ iceP_i: SerialSmall, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: SerialSmall, o: SerialSmall)> {
        return _impl._invokeAsync(operation: "opSerialSmallJava",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_i)
                                  },
                                  read: { istr in
                                      let iceP_o: SerialSmall = try istr.read()
                                      let iceP_returnValue: SerialSmall = try istr.read()
                                      return (iceP_returnValue, iceP_o)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `SerialLarge`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: SerialLarge, o: SerialLarge)`:
    ///
    ///   - returnValue: `SerialLarge`
    ///
    ///   - o: `SerialLarge`
    func opSerialLargeJava(_ iceP_i: SerialLarge, context: Ice.Context? = nil) throws -> (returnValue: SerialLarge, o: SerialLarge) {
        return try _impl._invoke(operation: "opSerialLargeJava",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_i)
                                 },
                                 read: { istr in
                                     let iceP_o: SerialLarge = try istr.read()
                                     let iceP_returnValue: SerialLarge = try istr.read()
                                     return (iceP_returnValue, iceP_o)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `SerialLarge`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<(returnValue: SerialLarge, o: SerialLarge)>` - The result of the operation
    func opSerialLargeJavaAsync(_ iceP_i: SerialLarge, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: SerialLarge, o: SerialLarge)> {
        return _impl._invokeAsync(operation: "opSerialLargeJava",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_i)
                                  },
                                  read: { istr in
                                      let iceP_o: SerialLarge = try istr.read()
                                      let iceP_returnValue: SerialLarge = try istr.read()
                                      return (iceP_returnValue, iceP_o)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `SerialStruct`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: SerialStruct, o: SerialStruct)`:
    ///
    ///   - returnValue: `SerialStruct`
    ///
    ///   - o: `SerialStruct`
    func opSerialStructJava(_ iceP_i: SerialStruct, context: Ice.Context? = nil) throws -> (returnValue: SerialStruct, o: SerialStruct) {
        return try _impl._invoke(operation: "opSerialStructJava",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_i)
                                 },
                                 read: { istr in
                                     let iceP_o: SerialStruct = try istr.read()
                                     let iceP_returnValue: SerialStruct = try istr.read()
                                     return (iceP_returnValue, iceP_o)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `SerialStruct`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch the sent callback.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch the sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<(returnValue: SerialStruct, o: SerialStruct)>` - The result of the operation
    func opSerialStructJavaAsync(_ iceP_i: SerialStruct, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: SerialStruct, o: SerialStruct)> {
        return _impl._invokeAsync(operation: "opSerialStructJava",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_i)
                                  },
                                  read: { istr in
                                      let iceP_o: SerialStruct = try istr.read()
                                      let iceP_returnValue: SerialStruct = try istr.read()
                                      return (iceP_returnValue, iceP_o)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// :nodoc:
public class Baz_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return Baz.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_Baz() -> Ice.ValueTypeResolver {
        return Baz_TypeResolver()
    }
}

open class Baz: Ice.Value {
    public var SLmem: SerialLarge = SerialLarge()
    public var SLSmem: SLS = SLS()

    public required init() {}

    public init(SLmem: SerialLarge, SLSmem: SLS) {
        self.SLmem = SLmem
        self.SLSmem = SLSmem
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return BazTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return BazTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.SLmem = try istr.read()
        self.SLSmem = try SLSHelper.read(from: istr)
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: BazTraits.staticId, compactId: -1, last: true)
        ostr.write(self.SLmem)
        SLSHelper.write(to: ostr, value: self.SLSmem)
        ostr.endSlice()
    }
}


/// Dispatcher for `MyClass` servants.
public struct MyClassDisp: Ice.Disp {
    public let servant: MyClass
    private static let defaultObject = Ice.ObjectI<MyClassTraits>()

    public init(_ servant: MyClass) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? MyClassDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? MyClassDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? MyClassDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? MyClassDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "opSerialLargeJava":
            return try servant._iceD_opSerialLargeJava(incoming: request, current: current)
        case "opSerialSmallJava":
            return try servant._iceD_opSerialSmallJava(incoming: request, current: current)
        case "opSerialStructJava":
            return try servant._iceD_opSerialStructJava(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol MyClass {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws

    ///
    /// - parameter i: `SerialSmall`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: SerialSmall, o: SerialSmall)`:
    ///
    ///   - returnValue: `SerialSmall`
    ///
    ///   - o: `SerialSmall`
    func opSerialSmallJava(i: SerialSmall, current: Ice.Current) throws -> (returnValue: SerialSmall, o: SerialSmall)

    ///
    /// - parameter i: `SerialLarge`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: SerialLarge, o: SerialLarge)`:
    ///
    ///   - returnValue: `SerialLarge`
    ///
    ///   - o: `SerialLarge`
    func opSerialLargeJava(i: SerialLarge, current: Ice.Current) throws -> (returnValue: SerialLarge, o: SerialLarge)

    ///
    /// - parameter i: `SerialStruct`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: SerialStruct, o: SerialStruct)`:
    ///
    ///   - returnValue: `SerialStruct`
    ///
    ///   - o: `SerialStruct`
    func opSerialStructJava(i: SerialStruct, current: Ice.Current) throws -> (returnValue: SerialStruct, o: SerialStruct)
}

/// MyClass overview.
///
/// MyClass Methods:
///
///  - shutdown: 
///
///  - opSerialSmallJava: 
///
///  - opSerialLargeJava: 
///
///  - opSerialStructJava: 
public extension MyClass {
    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }

    func _iceD_opSerialSmallJava(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_i: SerialSmall = try inS.read { istr in
            let iceP_i: SerialSmall = try istr.read()
            return iceP_i
        }

        let (iceP_returnValue, iceP_o) = try self.opSerialSmallJava(i: iceP_i, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_o)
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_opSerialLargeJava(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_i: SerialLarge = try inS.read { istr in
            let iceP_i: SerialLarge = try istr.read()
            return iceP_i
        }

        let (iceP_returnValue, iceP_o) = try self.opSerialLargeJava(i: iceP_i, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_o)
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_opSerialStructJava(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_i: SerialStruct = try inS.read { istr in
            let iceP_i: SerialStruct = try istr.read()
            return iceP_i
        }

        let (iceP_returnValue, iceP_o) = try self.opSerialStructJava(i: iceP_i, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_o)
            ostr.write(iceP_returnValue)
        }
    }
}
