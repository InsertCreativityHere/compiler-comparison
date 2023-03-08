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
public let ByteConst1: Swift.UInt8 = 10

public let ShortConst1: Swift.Int16 = 20

public let IntConst1: Swift.Int32 = 30

public let LongConst1: Swift.Int64 = 40

public let ByteConst2: Swift.UInt8 = 126

public let ShortConst2: Swift.Int16 = 32766

public let IntConst2: Swift.Int32 = 2147483647

public let LongConst2: Swift.Int64 = 2147483646


public enum ByteEnum: Swift.UInt8 {
    /// benum1
    case benum1 = 0
    /// benum2
    case benum2 = 1
    /// benum3
    case benum3 = 10
    /// benum4
    case benum4 = 11
    /// benum5
    case benum5 = 20
    /// benum6
    case benum6 = 21
    /// benum7
    case benum7 = 30
    /// benum8
    case benum8 = 31
    /// benum9
    case benum9 = 40
    /// benum10
    case benum10 = 41
    /// benum11
    case benum11 = 126
    public init() {
        self = .benum1
    }
}

/// An `Ice.InputStream` extension to read `ByteEnum` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `ByteEnum` - The enumarated value.
    func read() throws -> ByteEnum {
        let rawValue: Swift.UInt8 = try read(enumMaxValue: 126)
        guard let val = ByteEnum(rawValue: rawValue) else {
            throw Ice.MarshalException(reason: "invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `ByteEnum` - The enumerated value.
    func read(tag: Swift.Int32) throws -> ByteEnum? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as ByteEnum
    }
}

/// An `Ice.OutputStream` extension to write `ByteEnum` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `ByteEnum` - The enumerator to write.
    func write(_ v: ByteEnum) {
        write(enum: v.rawValue, maxValue: 126)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `ByteEnum` - The enumerator to write.
    func write(tag: Swift.Int32, value: ByteEnum?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 126)
    }
}

public enum ShortEnum: Swift.Int32 {
    /// senum1
    case senum1 = 3
    /// senum2
    case senum2 = 4
    /// senum3
    case senum3 = 10
    /// senum4
    case senum4 = 11
    /// senum5
    case senum5 = 20
    /// senum6
    case senum6 = 21
    /// senum7
    case senum7 = 30
    /// senum8
    case senum8 = 31
    /// senum9
    case senum9 = 40
    /// senum10
    case senum10 = 41
    /// senum11
    case senum11 = 32766
    public init() {
        self = .senum1
    }
}

/// An `Ice.InputStream` extension to read `ShortEnum` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `ShortEnum` - The enumarated value.
    func read() throws -> ShortEnum {
        let rawValue: Swift.Int32 = try read(enumMaxValue: 32766)
        guard let val = ShortEnum(rawValue: rawValue) else {
            throw Ice.MarshalException(reason: "invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `ShortEnum` - The enumerated value.
    func read(tag: Swift.Int32) throws -> ShortEnum? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as ShortEnum
    }
}

/// An `Ice.OutputStream` extension to write `ShortEnum` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `ShortEnum` - The enumerator to write.
    func write(_ v: ShortEnum) {
        write(enum: v.rawValue, maxValue: 32766)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `ShortEnum` - The enumerator to write.
    func write(tag: Swift.Int32, value: ShortEnum?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 32766)
    }
}

public enum IntEnum: Swift.Int32 {
    /// ienum1
    case ienum1 = 0
    /// ienum2
    case ienum2 = 1
    /// ienum3
    case ienum3 = 10
    /// ienum4
    case ienum4 = 11
    /// ienum5
    case ienum5 = 20
    /// ienum6
    case ienum6 = 21
    /// ienum7
    case ienum7 = 30
    /// ienum8
    case ienum8 = 31
    /// ienum9
    case ienum9 = 40
    /// ienum10
    case ienum10 = 41
    /// ienum11
    case ienum11 = 2147483647
    /// ienum12
    case ienum12 = 2147483646
    public init() {
        self = .ienum1
    }
}

/// An `Ice.InputStream` extension to read `IntEnum` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `IntEnum` - The enumarated value.
    func read() throws -> IntEnum {
        let rawValue: Swift.Int32 = try read(enumMaxValue: 2147483647)
        guard let val = IntEnum(rawValue: rawValue) else {
            throw Ice.MarshalException(reason: "invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `IntEnum` - The enumerated value.
    func read(tag: Swift.Int32) throws -> IntEnum? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as IntEnum
    }
}

/// An `Ice.OutputStream` extension to write `IntEnum` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `IntEnum` - The enumerator to write.
    func write(_ v: IntEnum) {
        write(enum: v.rawValue, maxValue: 2147483647)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `IntEnum` - The enumerator to write.
    func write(tag: Swift.Int32, value: IntEnum?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 2147483647)
    }
}

public enum SimpleEnum: Swift.UInt8 {
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

/// An `Ice.InputStream` extension to read `SimpleEnum` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - returns: `SimpleEnum` - The enumarated value.
    func read() throws -> SimpleEnum {
        let rawValue: Swift.UInt8 = try read(enumMaxValue: 2)
        guard let val = SimpleEnum(rawValue: rawValue) else {
            throw Ice.MarshalException(reason: "invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `SimpleEnum` - The enumerated value.
    func read(tag: Swift.Int32) throws -> SimpleEnum? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as SimpleEnum
    }
}

/// An `Ice.OutputStream` extension to write `SimpleEnum` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// parameter _: `SimpleEnum` - The enumerator to write.
    func write(_ v: SimpleEnum) {
        write(enum: v.rawValue, maxValue: 2)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// parameter _: `SimpleEnum` - The enumerator to write.
    func write(tag: Swift.Int32, value: SimpleEnum?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 2)
    }
}

/// Traits for Slice interface `TestIntf`.
public struct TestIntfTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestIntf"]
    public static let staticId = "::Test::TestIntf"
}

/// TestIntfPrx overview.
///
/// TestIntfPrx Methods:
///
///  - opByte: 
///
///  - opByteAsync: 
///
///  - opShort: 
///
///  - opShortAsync: 
///
///  - opInt: 
///
///  - opIntAsync: 
///
///  - opSimple: 
///
///  - opSimpleAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol TestIntfPrx: Ice.ObjectPrx {}

private final class TestIntfPrxI: Ice.ObjectPrxI, TestIntfPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestIntfTraits.staticId
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
/// - parameter type: `TestIntfPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `TestIntfPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: TestIntfPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> TestIntfPrx? {
    return try TestIntfPrxI.checkedCast(prx: prx, facet: facet, context: context) as TestIntfPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `TestIntfPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `TestIntfPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: TestIntfPrx.Protocol, facet: Swift.String? = nil) -> TestIntfPrx {
    return TestIntfPrxI.uncheckedCast(prx: prx, facet: facet) as TestIntfPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `TestIntfPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: TestIntfPrx.Protocol) -> Swift.String {
    return TestIntfTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `TestIntfPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `TestIntfPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestIntfPrx?` - The extracted proxy
    func read(_ type: TestIntfPrx.Protocol) throws -> TestIntfPrx? {
        return try read() as TestIntfPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `TestIntfPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestIntfPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: TestIntfPrx.Protocol) throws -> TestIntfPrx? {
        return try read(tag: tag) as TestIntfPrxI?
    }
}

/// TestIntfPrx overview.
///
/// TestIntfPrx Methods:
///
///  - opByte: 
///
///  - opByteAsync: 
///
///  - opShort: 
///
///  - opShortAsync: 
///
///  - opInt: 
///
///  - opIntAsync: 
///
///  - opSimple: 
///
///  - opSimpleAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension TestIntfPrx {
    ///
    /// - parameter _: `ByteEnum`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: ByteEnum, b2: ByteEnum)`:
    ///
    ///   - returnValue: `ByteEnum`
    ///
    ///   - b2: `ByteEnum`
    func opByte(_ iceP_b1: ByteEnum, context: Ice.Context? = nil) throws -> (returnValue: ByteEnum, b2: ByteEnum) {
        return try _impl._invoke(operation: "opByte",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_b1)
                                 },
                                 read: { istr in
                                     let iceP_b2: ByteEnum = try istr.read()
                                     let iceP_returnValue: ByteEnum = try istr.read()
                                     return (iceP_returnValue, iceP_b2)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `ByteEnum`
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
    /// - returns: `PromiseKit.Promise<(returnValue: ByteEnum, b2: ByteEnum)>` - The result of the operation
    func opByteAsync(_ iceP_b1: ByteEnum, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: ByteEnum, b2: ByteEnum)> {
        return _impl._invokeAsync(operation: "opByte",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_b1)
                                  },
                                  read: { istr in
                                      let iceP_b2: ByteEnum = try istr.read()
                                      let iceP_returnValue: ByteEnum = try istr.read()
                                      return (iceP_returnValue, iceP_b2)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `ShortEnum`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: ShortEnum, s2: ShortEnum)`:
    ///
    ///   - returnValue: `ShortEnum`
    ///
    ///   - s2: `ShortEnum`
    func opShort(_ iceP_s1: ShortEnum, context: Ice.Context? = nil) throws -> (returnValue: ShortEnum, s2: ShortEnum) {
        return try _impl._invoke(operation: "opShort",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_s1)
                                 },
                                 read: { istr in
                                     let iceP_s2: ShortEnum = try istr.read()
                                     let iceP_returnValue: ShortEnum = try istr.read()
                                     return (iceP_returnValue, iceP_s2)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `ShortEnum`
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
    /// - returns: `PromiseKit.Promise<(returnValue: ShortEnum, s2: ShortEnum)>` - The result of the operation
    func opShortAsync(_ iceP_s1: ShortEnum, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: ShortEnum, s2: ShortEnum)> {
        return _impl._invokeAsync(operation: "opShort",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_s1)
                                  },
                                  read: { istr in
                                      let iceP_s2: ShortEnum = try istr.read()
                                      let iceP_returnValue: ShortEnum = try istr.read()
                                      return (iceP_returnValue, iceP_s2)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `IntEnum`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: IntEnum, i2: IntEnum)`:
    ///
    ///   - returnValue: `IntEnum`
    ///
    ///   - i2: `IntEnum`
    func opInt(_ iceP_i1: IntEnum, context: Ice.Context? = nil) throws -> (returnValue: IntEnum, i2: IntEnum) {
        return try _impl._invoke(operation: "opInt",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_i1)
                                 },
                                 read: { istr in
                                     let iceP_i2: IntEnum = try istr.read()
                                     let iceP_returnValue: IntEnum = try istr.read()
                                     return (iceP_returnValue, iceP_i2)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `IntEnum`
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
    /// - returns: `PromiseKit.Promise<(returnValue: IntEnum, i2: IntEnum)>` - The result of the operation
    func opIntAsync(_ iceP_i1: IntEnum, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: IntEnum, i2: IntEnum)> {
        return _impl._invokeAsync(operation: "opInt",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_i1)
                                  },
                                  read: { istr in
                                      let iceP_i2: IntEnum = try istr.read()
                                      let iceP_returnValue: IntEnum = try istr.read()
                                      return (iceP_returnValue, iceP_i2)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `SimpleEnum`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: SimpleEnum, s2: SimpleEnum)`:
    ///
    ///   - returnValue: `SimpleEnum`
    ///
    ///   - s2: `SimpleEnum`
    func opSimple(_ iceP_s1: SimpleEnum, context: Ice.Context? = nil) throws -> (returnValue: SimpleEnum, s2: SimpleEnum) {
        return try _impl._invoke(operation: "opSimple",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_s1)
                                 },
                                 read: { istr in
                                     let iceP_s2: SimpleEnum = try istr.read()
                                     let iceP_returnValue: SimpleEnum = try istr.read()
                                     return (iceP_returnValue, iceP_s2)
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `SimpleEnum`
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
    /// - returns: `PromiseKit.Promise<(returnValue: SimpleEnum, s2: SimpleEnum)>` - The result of the operation
    func opSimpleAsync(_ iceP_s1: SimpleEnum, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: SimpleEnum, s2: SimpleEnum)> {
        return _impl._invokeAsync(operation: "opSimple",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_s1)
                                  },
                                  read: { istr in
                                      let iceP_s2: SimpleEnum = try istr.read()
                                      let iceP_returnValue: SimpleEnum = try istr.read()
                                      return (iceP_returnValue, iceP_s2)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

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
}


/// Dispatcher for `TestIntf` servants.
public struct TestIntfDisp: Ice.Disp {
    public let servant: TestIntf
    private static let defaultObject = Ice.ObjectI<TestIntfTraits>()

    public init(_ servant: TestIntf) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "opByte":
            return try servant._iceD_opByte(incoming: request, current: current)
        case "opInt":
            return try servant._iceD_opInt(incoming: request, current: current)
        case "opShort":
            return try servant._iceD_opShort(incoming: request, current: current)
        case "opSimple":
            return try servant._iceD_opSimple(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol TestIntf {
    ///
    /// - parameter b1: `ByteEnum`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: ByteEnum, b2: ByteEnum)`:
    ///
    ///   - returnValue: `ByteEnum`
    ///
    ///   - b2: `ByteEnum`
    func opByte(b1: ByteEnum, current: Ice.Current) throws -> (returnValue: ByteEnum, b2: ByteEnum)

    ///
    /// - parameter s1: `ShortEnum`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: ShortEnum, s2: ShortEnum)`:
    ///
    ///   - returnValue: `ShortEnum`
    ///
    ///   - s2: `ShortEnum`
    func opShort(s1: ShortEnum, current: Ice.Current) throws -> (returnValue: ShortEnum, s2: ShortEnum)

    ///
    /// - parameter i1: `IntEnum`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: IntEnum, i2: IntEnum)`:
    ///
    ///   - returnValue: `IntEnum`
    ///
    ///   - i2: `IntEnum`
    func opInt(i1: IntEnum, current: Ice.Current) throws -> (returnValue: IntEnum, i2: IntEnum)

    ///
    /// - parameter s1: `SimpleEnum`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: SimpleEnum, s2: SimpleEnum)`:
    ///
    ///   - returnValue: `SimpleEnum`
    ///
    ///   - s2: `SimpleEnum`
    func opSimple(s1: SimpleEnum, current: Ice.Current) throws -> (returnValue: SimpleEnum, s2: SimpleEnum)

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// TestIntf overview.
///
/// TestIntf Methods:
///
///  - opByte: 
///
///  - opShort: 
///
///  - opInt: 
///
///  - opSimple: 
///
///  - shutdown: 
public extension TestIntf {
    func _iceD_opByte(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_b1: ByteEnum = try inS.read { istr in
            let iceP_b1: ByteEnum = try istr.read()
            return iceP_b1
        }

        let (iceP_returnValue, iceP_b2) = try self.opByte(b1: iceP_b1, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_b2)
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_opShort(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_s1: ShortEnum = try inS.read { istr in
            let iceP_s1: ShortEnum = try istr.read()
            return iceP_s1
        }

        let (iceP_returnValue, iceP_s2) = try self.opShort(s1: iceP_s1, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_s2)
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_opInt(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_i1: IntEnum = try inS.read { istr in
            let iceP_i1: IntEnum = try istr.read()
            return iceP_i1
        }

        let (iceP_returnValue, iceP_i2) = try self.opInt(i1: iceP_i1, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_i2)
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_opSimple(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_s1: SimpleEnum = try inS.read { istr in
            let iceP_s1: SimpleEnum = try istr.read()
            return iceP_s1
        }

        let (iceP_returnValue, iceP_s2) = try self.opSimple(s1: iceP_s1, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_s2)
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }
}
