//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

public enum END: Swift.UInt8 {
    case alias = 0
    public init() {
        self = .alias
    }
}

/// An `Ice.InputStream` extension to read `END` enumerated values from the stream.
public extension Ice.InputStream {
    /// Read an enumerated value.
    ///
    /// - Returns:  The enumerated value.
    func read() throws -> END {
        let rawValue: Swift.UInt8 = try read(enumMaxValue: 0)
        guard let val = END(rawValue: rawValue) else {
            throw Ice.MarshalException("invalid enum value")
        }
        return val
    }

    /// Read an optional enumerated value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The enumerated value.
    func read(tag: Swift.Int32) throws -> END? {
        guard try readOptional(tag: tag, expectedFormat: .Size) else {
            return nil
        }
        return try read() as END
    }
}

/// An `Ice.OutputStream` extension to write `END` enumerated values to the stream.
public extension Ice.OutputStream {
    /// Writes an enumerated value to the stream.
    ///
    /// - Parameter v: The enumerator to write.
    func write(_ v: END) {
        write(enum: v.rawValue, maxValue: 0)
    }

    /// Writes an optional enumerated value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The enumerator to write.
    func write(tag: Swift.Int32, value: END?) {
        guard let v = value else {
            return
        }
        write(tag: tag, val: v.rawValue, maxValue: 0)
    }
}

public struct and: Swift.Hashable {
    public var begin: Swift.Int32 = 0

    public init() {}

    public init(begin: Swift.Int32) {
        self.begin = begin
    }
}

/// An `Ice.InputStream` extension to read `and` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `and` structured value from the stream.
    ///
    /// - Returns: The structured value read from the stream.
    func read() throws -> and {
        var v = and()
        v.begin = try self.read()
        return v
    }

    /// Read an optional `and?` structured value from the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> and? {
        guard try readOptional(tag: tag, expectedFormat: .VSize) else {
            return nil
        }
        try skipSize()
        return try read() as and
    }
}

/// An `Ice.OutputStream` extension to write `and` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `and` structured value to the stream.
    ///
    /// - Parameter v: The value to write to the stream.
    func write(_ v: and) {
        self.write(v.begin)
    }

    /// Write an optional `and?` structured value to the stream.
    ///
    /// - Parameter tag: The numeric tag associated with the value.
    /// - Parameter value: The value to write to the stream.
    func write(tag: Swift.Int32, value: and?) {
        if let v = value {
            if writeOptional(tag: tag, format: .VSize) {
                write(size: 4)
                write(v)
            }
        }
    }
}

/// Traits for Slice interface ``break``.
public struct breakTraits: Ice.SliceTraits {
    public static let staticIds = ["::BEGIN::break", "::Ice::Object"]
    public static let staticId = "::BEGIN::break"
}

/// Traits for Slice interface `elsif`.
public struct elsifTraits: Ice.SliceTraits {
    public static let staticIds = ["::BEGIN::break", "::BEGIN::elsif", "::Ice::Object"]
    public static let staticId = "::BEGIN::elsif"
}

public typealias rescue = [END]

/// Helper class to read and write `rescue` sequence values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct rescueHelper {
    /// Read a `rescue` sequence from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The sequence read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> rescue {
        let sz = try istr.readAndCheckSeqSize(minSize: 1)
        var v = rescue()
        v.reserveCapacity(sz)
        for _ in 0 ..< sz {
            let j: END = try istr.read()
            v.append(j)
        }
        return v
    }

    /// Read an optional `rescue?` sequence from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The sequence read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> rescue? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `rescue` sequence to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: rescue) {
        ostr.write(size: v.count)
        for item in v {
            ostr.write(item)
        }
    }

    /// Write an optional `rescue?` sequence to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The sequence value to write to the stream.
    public static func write(to ostr: Ice.OutputStream,  tag: Swift.Int32, value v: rescue?) {
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

public typealias ensure = [Swift.String: END]

/// Helper class to read and write `ensure` dictionary values from
/// `Ice.InputStream` and `Ice.OutputStream`.
public struct ensureHelper {
    /// Read a `ensure` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream) throws -> ensure {
        let sz = try Swift.Int(istr.readSize())
        var v = ensure()
        for _ in 0 ..< sz {
            let key: Swift.String = try istr.read()
            let value: END = try istr.read()
            v[key] = value
        }
        return v
    }

    /// Read an optional `ensure?` dictionary from the stream.
    ///
    /// - Parameter istr: The stream to read from.
    /// - Parameter tag: The numeric tag associated with the value.
    ///
    /// - Returns: The dictionary read from the stream.
    public static func read(from istr: Ice.InputStream, tag: Swift.Int32) throws -> ensure? {
        guard try istr.readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try istr.skip(4)
        return try read(from: istr)
    }

    /// Write a `ensure` dictionary to the stream.
    ///
    /// - Parameter ostr: The stream to write to.
    /// - Parameter value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, value v: ensure) {
        ostr.write(size: v.count)
        for (key, value) in v {
            ostr.write(key)
            ostr.write(value)
        }
    }

    /// Write an optional `ensure?` dictionary to the stream.
    ///
    /// - Parameters:
    ///   - ostr: The stream to write to.
    ///   - tag: The numeric tag associated with the value.
    ///   - value: The dictionary value to write to the stream.
    public static func write(to ostr: Ice.OutputStream, tag: Swift.Int32, value v: ensure?) {
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

@_documentation(visibility: internal)
public class next_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return next.self
    }
}

public extension Ice.ClassResolver {
    @objc static func BEGIN_next() -> Ice.UserExceptionTypeResolver {
        return next_TypeResolver()
    }
}

open class next: Ice.UserException, @unchecked Sendable {
    public var new: Swift.Int32 = 0

    public required init() {}

    public init(new: Swift.Int32) {
        self.new = new
    }

    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::BEGIN::next" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: next.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.new)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.new = try istr.read()
        try istr.endSlice()
    }
}

@_documentation(visibility: internal)
public class nil_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return `nil`.self
    }
}

public extension Ice.ClassResolver {
    @objc static func BEGIN_nil() -> Ice.UserExceptionTypeResolver {
        return nil_TypeResolver()
    }
}

open class `nil`: next, @unchecked Sendable {
    public var not: Swift.Int32 = 0
    public var or: Swift.Int32 = 0

    public required init() {
        super.init()
    }

    public init(new: Swift.Int32, not: Swift.Int32, or: Swift.Int32) {
        self.not = not
        self.or = or
        super.init(new: new)
    }

    /// - Returns: The Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String { "::BEGIN::nil" }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: `nil`.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.not)
        ostr.write(self.or)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.not = try istr.read()
        self.or = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// Traits for Slice interface `extend`.
public struct extendTraits: Ice.SliceTraits {
    public static let staticIds = ["::BEGIN::extend", "::Ice::Object"]
    public static let staticId = "::BEGIN::extend"
}
public let redo: Swift.Int32 = 1


public protocol breakPrx: Ice.ObjectPrx {}

private final class breakPrxI: Ice.ObjectPrxI, breakPrx {
    public override class func ice_staticId() -> Swift.String {
        return breakTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
///
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
///
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: breakPrx.Protocol) throws -> breakPrx {
    try communicator.makeProxyImpl(proxyString) as breakPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///   - context: The optional context dictionary for the remote invocation.
///
/// - Returns: A proxy with the requested type or nil if the objet does not support this type.
///
/// - Throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: breakPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> breakPrx? {
    return try await breakPrxI.checkedCast(prx: prx, facet: facet, context: context) as breakPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: breakPrx.Protocol, facet: Swift.String? = nil) -> breakPrx {
    return breakPrxI.uncheckedCast(prx: prx, facet: facet) as breakPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: breakPrx.Protocol) -> Swift.String {
    return breakTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `breakPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: breakPrx.Protocol) throws -> breakPrx? {
        return try read() as breakPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: breakPrx.Protocol) throws -> breakPrx? {
        return try read(tag: tag) as breakPrxI?
    }
}

public extension breakPrx {
    func `case`(clone iceP_clone: Swift.Int32, def iceP_def: Swift.Int32, context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "case",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_clone)
                                           ostr.write(iceP_def)
                                       },
                                       context: context)
    }

    func to_a(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "to_a",
                                       mode: .Normal,
                                       context: context)
    }

    func instance_variable_set(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "instance_variable_set",
                                       mode: .Normal,
                                       context: context)
    }

    func instance_variables(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "instance_variables",
                                       mode: .Normal,
                                       context: context)
    }
}

public protocol elsifPrx: breakPrx {}

private final class elsifPrxI: Ice.ObjectPrxI, elsifPrx {
    public override class func ice_staticId() -> Swift.String {
        return elsifTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
///
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
///
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: elsifPrx.Protocol) throws -> elsifPrx {
    try communicator.makeProxyImpl(proxyString) as elsifPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///   - context: The optional context dictionary for the remote invocation.
///
/// - Returns: A proxy with the requested type or nil if the objet does not support this type.
///
/// - Throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: elsifPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> elsifPrx? {
    return try await elsifPrxI.checkedCast(prx: prx, facet: facet, context: context) as elsifPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: elsifPrx.Protocol, facet: Swift.String? = nil) -> elsifPrx {
    return elsifPrxI.uncheckedCast(prx: prx, facet: facet) as elsifPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: elsifPrx.Protocol) -> Swift.String {
    return elsifTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `elsifPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: elsifPrx.Protocol) throws -> elsifPrx? {
        return try read() as elsifPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: elsifPrx.Protocol) throws -> elsifPrx? {
        return try read(tag: tag) as elsifPrxI?
    }
}

public extension elsifPrx {}

public protocol extendPrx: Ice.ObjectPrx {}

private final class extendPrxI: Ice.ObjectPrxI, extendPrx {
    public override class func ice_staticId() -> Swift.String {
        return extendTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
///
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
///
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: extendPrx.Protocol) throws -> extendPrx {
    try communicator.makeProxyImpl(proxyString) as extendPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///   - context: The optional context dictionary for the remote invocation.
///
/// - Returns: A proxy with the requested type or nil if the objet does not support this type.
///
/// - Throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: extendPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> extendPrx? {
    return try await extendPrxI.checkedCast(prx: prx, facet: facet, context: context) as extendPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: extendPrx.Protocol, facet: Swift.String? = nil) -> extendPrx {
    return extendPrxI.uncheckedCast(prx: prx, facet: facet) as extendPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: extendPrx.Protocol) -> Swift.String {
    return extendTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `extendPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: extendPrx.Protocol) throws -> extendPrx? {
        return try read() as extendPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: extendPrx.Protocol) throws -> extendPrx? {
        return try read(tag: tag) as extendPrxI?
    }
}

public extension extendPrx {
    func `for`(freeze iceP_freeze: display?, hash iceP_hash: elsifPrx?, if iceP_if: breakPrx?, inspect iceP_inspect: display?, method iceP_method: elsifPrx?, methods iceP_methods: Swift.Int32, context: Ice.Context? = nil) async throws -> END {
        return try await _impl._invoke(operation: "for",
                                       mode: .Normal,
                                       write: { ostr in
                                           ostr.write(iceP_freeze)
                                           ostr.write(iceP_hash)
                                           ostr.write(iceP_if)
                                           ostr.write(iceP_inspect)
                                           ostr.write(iceP_method)
                                           ostr.write(iceP_methods)
                                           ostr.writePendingValues()
                                       },
                                       read: { istr in
                                           let iceP_returnValue: END = try istr.read()
                                           return iceP_returnValue
                                       },
                                       userException:{ ex in
                                           do  {
                                               throw ex
                                           } catch let error as `nil` {
                                               throw error
                                           } catch is Ice.UserException {}
                                       },
                                       context: context)
    }
}

@_documentation(visibility: internal)
public class display_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return display.self
    }
}

public extension Ice.ClassResolver {
    @objc static func BEGIN_display() -> Ice.ValueTypeResolver {
        return display_TypeResolver()
    }
}

open class display: Ice.Value {
    public var when: Swift.Int32 = 0
    public var `do`: Swift.Int32 = 0
    public var dup: breakPrx? = nil
    public var `else`: Swift.Int32 = 0

    public required init() {}

    public init(when: Swift.Int32, `do`: Swift.Int32, dup: breakPrx?, `else`: Swift.Int32) {
        self.when = when
        self.`do` = `do`
        self.dup = dup
        self.`else` = `else`
    }

    /// - Returns: The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String { "::BEGIN::display" }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.when = try istr.read()
        self.`do` = try istr.read()
        self.dup = try istr.read(breakPrx.self)
        self.`else` = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: display.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.when)
        ostr.write(self.`do`)
        ostr.write(self.dup)
        ostr.write(self.`else`)
        ostr.endSlice()
    }
}


/// Dispatcher for ``break`` servants.
public struct breakDisp: Ice.Dispatcher {
    public let servant: `break`
    private static let defaultObject = Ice.ObjectI<breakTraits>()

    public init(_ servant: `break`) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "case":
            try await servant._iceD_case(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? breakDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? breakDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? breakDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? breakDisp.defaultObject)._iceD_ice_ping(request)
        case "instance_variable_set":
            try await servant._iceD_instance_variable_set(request)
        case "instance_variables":
            try await servant._iceD_instance_variables(request)
        case "to_a":
            try await servant._iceD_to_a(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol `break` {
    func `case`(clone: Swift.Int32, def: Swift.Int32, current: Ice.Current) async throws

    func to_a(current: Ice.Current) async throws

    func instance_variable_set(current: Ice.Current) async throws

    func instance_variables(current: Ice.Current) async throws
}


/// Dispatcher for `elsif` servants.
public struct elsifDisp: Ice.Dispatcher {
    public let servant: elsif
    private static let defaultObject = Ice.ObjectI<elsifTraits>()

    public init(_ servant: elsif) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "case":
            try await servant._iceD_case(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? elsifDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? elsifDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? elsifDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? elsifDisp.defaultObject)._iceD_ice_ping(request)
        case "instance_variable_set":
            try await servant._iceD_instance_variable_set(request)
        case "instance_variables":
            try await servant._iceD_instance_variables(request)
        case "to_a":
            try await servant._iceD_to_a(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol elsif: `break` {}


/// Dispatcher for `extend` servants.
public struct extendDisp: Ice.Dispatcher {
    public let servant: extend
    private static let defaultObject = Ice.ObjectI<extendTraits>()

    public init(_ servant: extend) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "for":
            try await servant._iceD_for(request)
        case "ice_id":
            try await (servant as? Ice.Object ?? extendDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? extendDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? extendDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? extendDisp.defaultObject)._iceD_ice_ping(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol extend {
    func `for`(freeze: display?, hash: elsifPrx?, if: breakPrx?, inspect: display?, method: elsifPrx?, methods: Swift.Int32, current: Ice.Current) async throws -> END
}

extension `break` {
    public func _iceD_case(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        let iceP_clone: Swift.Int32 = try istr.read()
        let iceP_def: Swift.Int32 = try istr.read()
        try await self.`case`(clone: iceP_clone, def: iceP_def, current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_to_a(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.to_a(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_instance_variable_set(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.instance_variable_set(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }

    public func _iceD_instance_variables(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.instance_variables(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}

extension elsif {}

extension extend {
    public func _iceD_for(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        let istr = request.inputStream
        _ = try istr.startEncapsulation()
        var iceP_freeze: display?
        try istr.read(display.self) { iceP_freeze = $0 }
        let iceP_hash: elsifPrx? = try istr.read(elsifPrx.self)
        let iceP_if: breakPrx? = try istr.read(breakPrx.self)
        var iceP_inspect: display?
        try istr.read(display.self) { iceP_inspect = $0 }
        let iceP_method: elsifPrx? = try istr.read(elsifPrx.self)
        let iceP_methods: Swift.Int32 = try istr.read()
        try istr.readPendingValues()
        let result = try await self.`for`(freeze: iceP_freeze, hash: iceP_hash, if: iceP_if, inspect: iceP_inspect, method: iceP_method, methods: iceP_methods, current: request.current)
        return request.current.makeOutgoingResponse(result, formatType: nil) { ostr, value in 
            let iceP_returnValue = value
            ostr.write(iceP_returnValue)
        }
    }
}
