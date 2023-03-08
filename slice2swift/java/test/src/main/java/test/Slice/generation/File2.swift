//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `File2.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface `Interface2`.
public struct Interface2Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Interface2"]
    public static let staticId = "::Test::Interface2"
}

/// Interface2Prx overview.
///
/// Interface2Prx Methods:
///
///  - method: 
///
///  - methodAsync: 
public protocol Interface2Prx: Ice.ObjectPrx {}

private final class Interface2PrxI: Ice.ObjectPrxI, Interface2Prx {
    public override class func ice_staticId() -> Swift.String {
        return Interface2Traits.staticId
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
/// - parameter type: `Interface2Prx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `Interface2Prx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: Interface2Prx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> Interface2Prx? {
    return try Interface2PrxI.checkedCast(prx: prx, facet: facet, context: context) as Interface2PrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `Interface2Prx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `Interface2Prx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: Interface2Prx.Protocol, facet: Swift.String? = nil) -> Interface2Prx {
    return Interface2PrxI.uncheckedCast(prx: prx, facet: facet) as Interface2PrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `Interface2Prx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: Interface2Prx.Protocol) -> Swift.String {
    return Interface2Traits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `Interface2Prx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `Interface2Prx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `Interface2Prx?` - The extracted proxy
    func read(_ type: Interface2Prx.Protocol) throws -> Interface2Prx? {
        return try read() as Interface2PrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `Interface2Prx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `Interface2Prx` - The extracted proxy.
    func read(tag: Swift.Int32, type: Interface2Prx.Protocol) throws -> Interface2Prx? {
        return try read(tag: tag) as Interface2PrxI?
    }
}

/// Interface2Prx overview.
///
/// Interface2Prx Methods:
///
///  - method: 
///
///  - methodAsync: 
public extension Interface2Prx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func method(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "method",
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
    func methodAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "method",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `Interface2` servants.
public struct Interface2Disp: Ice.Disp {
    public let servant: Interface2
    private static let defaultObject = Ice.ObjectI<Interface2Traits>()

    public init(_ servant: Interface2) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? Interface2Disp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? Interface2Disp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? Interface2Disp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? Interface2Disp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "method":
            return try servant._iceD_method(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol Interface2 {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func method(current: Ice.Current) throws
}

/// Interface2 overview.
///
/// Interface2 Methods:
///
///  - method: 
public extension Interface2 {
    func _iceD_method(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.method(current: current)

        return inS.setResult()
    }
}
