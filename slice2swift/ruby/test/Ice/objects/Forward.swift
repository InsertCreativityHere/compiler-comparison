//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Forward.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice class`F1`.
public struct F1Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::F1"]
    public static let staticId = "::Test::F1"
}

/// Traits for Slice interface`F2`.
public struct F2Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::F2"]
    public static let staticId = "::Test::F2"
}

/// F2Prx overview.
///
/// F2Prx Methods:
///
///  - op: 
///
///  - opAsync: 
public protocol F2Prx: Ice.ObjectPrx {}

private final class F2PrxI: Ice.ObjectPrxI, F2Prx {
    public override class func ice_staticId() -> Swift.String {
        return F2Traits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
/// - Throws: `Ice.ProxyParseException` if the proxy string is invalid.
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: F2Prx.Protocol) throws -> F2Prx {
    try communicator.makeProxyImpl(proxyString) as F2PrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `F2Prx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `F2Prx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: F2Prx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> F2Prx? {
    return try F2PrxI.checkedCast(prx: prx, facet: facet, context: context) as F2PrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `F2Prx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `F2Prx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: F2Prx.Protocol, facet: Swift.String? = nil) -> F2Prx {
    return F2PrxI.uncheckedCast(prx: prx, facet: facet) as F2PrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `F2Prx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: F2Prx.Protocol) -> Swift.String {
    return F2Traits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `F2Prx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `F2Prx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `F2Prx?` - The extracted proxy
    func read(_ type: F2Prx.Protocol) throws -> F2Prx? {
        return try read() as F2PrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `F2Prx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `F2Prx` - The extracted proxy.
    func read(tag: Swift.Int32, type: F2Prx.Protocol) throws -> F2Prx? {
        return try read(tag: tag) as F2PrxI?
    }
}

/// F2Prx overview.
///
/// F2Prx Methods:
///
///  - op: 
///
///  - opAsync: 
public extension F2Prx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func op(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "op",
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
    func opAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "op",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// :nodoc:
public class F1_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return F1.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_F1() -> Ice.ValueTypeResolver {
        return F1_TypeResolver()
    }
}

open class F1: Ice.Value {
    public var name: Swift.String = ""

    public required init() {}

    public init(name: Swift.String) {
        self.name = name
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return F1Traits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return F1Traits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.name = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: F1Traits.staticId, compactId: -1, last: true)
        ostr.write(self.name)
        ostr.endSlice()
    }
}


/// Dispatcher for `F2` servants.
public struct F2Disp: Ice.Dispatcher {
    public let servant: F2
    private static let defaultObject = Ice.ObjectI<F2Traits>()

    public init(_ servant: F2) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "ice_id":
            (servant as? Ice.Object ?? F2Disp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? F2Disp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? F2Disp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? F2Disp.defaultObject)._iceD_ice_ping(request)
        case "op":
            servant._iceD_op(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol F2 {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func op(current: Ice.Current) throws
}

/// F2 overview.
///
/// F2 Methods:
///
///  - op: 
extension F2 {
    public func _iceD_op(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.op(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
