//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

/// Traits for Slice interface `Interface2`.
public struct Interface2Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Interface2"]
    public static let staticId = "::Test::Interface2"
}

public protocol Interface2Prx: Ice.ObjectPrx {}

private final class Interface2PrxI: Ice.ObjectPrxI, Interface2Prx {
    public override class func ice_staticId() -> Swift.String {
        return Interface2Traits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: Interface2Prx.Protocol) throws -> Interface2Prx {
    try communicator.makeProxyImpl(proxyString) as Interface2PrxI
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
public func checkedCast(prx: Ice.ObjectPrx, type: Interface2Prx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) async throws -> Interface2Prx? {
    return try await Interface2PrxI.checkedCast(prx: prx, facet: facet, context: context) as Interface2PrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - Parameters:
///   - prx: The proxy to be cast.
///   - type: The proxy type to cast to.
///   - facet: The optional name of the desired facet.
///
/// - Returns: A proxy with the requested type.
public func uncheckedCast(prx: Ice.ObjectPrx, type: Interface2Prx.Protocol, facet: Swift.String? = nil) -> Interface2Prx {
    return Interface2PrxI.uncheckedCast(prx: prx, facet: facet) as Interface2PrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// - Parameter type:  The proxy type to retrieve the type id.
///
/// - Returns: The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: Interface2Prx.Protocol) -> Swift.String {
    return Interface2Traits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxies of type
/// `Interface2Prx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(_ type: Interface2Prx.Protocol) throws -> Interface2Prx? {
        return try read() as Interface2PrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - Parameter tag:  The numeric tag associated with the value.
    /// - Parameter type: The type of the proxy to be extracted.
    ///
    /// - Returns: The extracted proxy.
    func read(tag: Swift.Int32, type: Interface2Prx.Protocol) throws -> Interface2Prx? {
        return try read(tag: tag) as Interface2PrxI?
    }
}

public extension Interface2Prx {
    func method(context: Ice.Context? = nil) async throws -> Swift.Void {
        return try await _impl._invoke(operation: "method",
                                       mode: .Normal,
                                       context: context)
    }
}


/// Dispatcher for `Interface2` servants.
public struct Interface2Disp: Ice.Dispatcher {
    public let servant: Interface2
    private static let defaultObject = Ice.ObjectI<Interface2Traits>()

    public init(_ servant: Interface2) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        switch request.current.operation {
        case "ice_id":
            try await (servant as? Ice.Object ?? Interface2Disp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            try await (servant as? Ice.Object ?? Interface2Disp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            try await (servant as? Ice.Object ?? Interface2Disp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            try await (servant as? Ice.Object ?? Interface2Disp.defaultObject)._iceD_ice_ping(request)
        case "method":
            try await servant._iceD_method(request)
        default:
            throw Ice.OperationNotExistException()
        }
    }
}

public protocol Interface2 {
    func method(current: Ice.Current) async throws
}

extension Interface2 {
    public func _iceD_method(_ request: Ice.IncomingRequest) async throws -> Ice.OutgoingResponse {
        
        _ = try request.inputStream.skipEmptyEncapsulation()
        try await self.method(current: request.current)
        return request.current.makeEmptyOutgoingResponse()
    }
}
