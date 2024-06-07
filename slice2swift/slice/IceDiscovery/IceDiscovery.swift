//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceDiscovery.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface`LookupReply`.
public struct LookupReplyTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::IceDiscovery::LookupReply"]
    public static let staticId = "::IceDiscovery::LookupReply"
}

/// Traits for Slice interface`Lookup`.
public struct LookupTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::IceDiscovery::Lookup"]
    public static let staticId = "::IceDiscovery::Lookup"
}

/// The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
///
/// LookupReplyPrx Methods:
///
///  - foundObjectById: Reply to the findObjectById request.
///
///  - foundObjectByIdAsync: Reply to the findObjectById request.
///
///  - foundAdapterById: Reply to the findAdpaterById request.
///
///  - foundAdapterByIdAsync: Reply to the findAdpaterById request.
public protocol LookupReplyPrx: Ice.ObjectPrx {}

private final class LookupReplyPrxI: Ice.ObjectPrxI, LookupReplyPrx {
    public override class func ice_staticId() -> Swift.String {
        return LookupReplyTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: LookupReplyPrx.Protocol) throws -> LookupReplyPrx {
    try communicator.makeProxyImpl(proxyString) as LookupReplyPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `LookupReplyPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `LookupReplyPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: LookupReplyPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> LookupReplyPrx? {
    return try LookupReplyPrxI.checkedCast(prx: prx, facet: facet, context: context) as LookupReplyPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `LookupReplyPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `LookupReplyPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: LookupReplyPrx.Protocol, facet: Swift.String? = nil) -> LookupReplyPrx {
    return LookupReplyPrxI.uncheckedCast(prx: prx, facet: facet) as LookupReplyPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `LookupReplyPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: LookupReplyPrx.Protocol) -> Swift.String {
    return LookupReplyTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `LookupReplyPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `LookupReplyPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `LookupReplyPrx?` - The extracted proxy
    func read(_ type: LookupReplyPrx.Protocol) throws -> LookupReplyPrx? {
        return try read() as LookupReplyPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `LookupReplyPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `LookupReplyPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: LookupReplyPrx.Protocol) throws -> LookupReplyPrx? {
        return try read(tag: tag) as LookupReplyPrxI?
    }
}

/// The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
///
/// LookupReplyPrx Methods:
///
///  - foundObjectById: Reply to the findObjectById request.
///
///  - foundObjectByIdAsync: Reply to the findObjectById request.
///
///  - foundAdapterById: Reply to the findAdpaterById request.
///
///  - foundAdapterByIdAsync: Reply to the findAdpaterById request.
public extension LookupReplyPrx {
    /// Reply to the findObjectById request.
    ///
    /// - parameter id: `Ice.Identity` The identity of the object.
    ///
    /// - parameter prx: `Ice.ObjectPrx?` The proxy of the object. This proxy is never null.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func foundObjectById(id iceP_id: Ice.Identity, prx iceP_prx: Ice.ObjectPrx?, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "foundObjectById",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_id)
                              ostr.write(iceP_prx)
                          },
                          context: context)
    }

    /// Reply to the findObjectById request.
    ///
    /// - parameter id: `Ice.Identity` The identity of the object.
    ///
    /// - parameter prx: `Ice.ObjectPrx?` The proxy of the object. This proxy is never null.
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
    func foundObjectByIdAsync(id iceP_id: Ice.Identity, prx iceP_prx: Ice.ObjectPrx?, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "foundObjectById",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_id)
                                      ostr.write(iceP_prx)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Reply to the findAdpaterById request.
    ///
    /// - parameter id: `Swift.String` The adapter ID.
    ///
    /// - parameter prx: `Ice.ObjectPrx?` The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
    /// endpoints. This proxy is never null.
    ///
    /// - parameter isReplicaGroup: `Swift.Bool` True if the adapter is also a member of a replica group.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func foundAdapterById(id iceP_id: Swift.String, prx iceP_prx: Ice.ObjectPrx?, isReplicaGroup iceP_isReplicaGroup: Swift.Bool, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "foundAdapterById",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_id)
                              ostr.write(iceP_prx)
                              ostr.write(iceP_isReplicaGroup)
                          },
                          context: context)
    }

    /// Reply to the findAdpaterById request.
    ///
    /// - parameter id: `Swift.String` The adapter ID.
    ///
    /// - parameter prx: `Ice.ObjectPrx?` The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
    /// endpoints. This proxy is never null.
    ///
    /// - parameter isReplicaGroup: `Swift.Bool` True if the adapter is also a member of a replica group.
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
    func foundAdapterByIdAsync(id iceP_id: Swift.String, prx iceP_prx: Ice.ObjectPrx?, isReplicaGroup iceP_isReplicaGroup: Swift.Bool, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "foundAdapterById",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_id)
                                      ostr.write(iceP_prx)
                                      ostr.write(iceP_isReplicaGroup)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
///
/// LookupPrx Methods:
///
///  - findObjectById: Request to find an Ice object
///
///  - findObjectByIdAsync: Request to find an Ice object
///
///  - findAdapterById: Request to find an object adapter
///
///  - findAdapterByIdAsync: Request to find an object adapter
public protocol LookupPrx: Ice.ObjectPrx {}

private final class LookupPrxI: Ice.ObjectPrxI, LookupPrx {
    public override class func ice_staticId() -> Swift.String {
        return LookupTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: LookupPrx.Protocol) throws -> LookupPrx {
    try communicator.makeProxyImpl(proxyString) as LookupPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `LookupPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `LookupPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: LookupPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> LookupPrx? {
    return try LookupPrxI.checkedCast(prx: prx, facet: facet, context: context) as LookupPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `LookupPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `LookupPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: LookupPrx.Protocol, facet: Swift.String? = nil) -> LookupPrx {
    return LookupPrxI.uncheckedCast(prx: prx, facet: facet) as LookupPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `LookupPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: LookupPrx.Protocol) -> Swift.String {
    return LookupTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `LookupPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `LookupPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `LookupPrx?` - The extracted proxy
    func read(_ type: LookupPrx.Protocol) throws -> LookupPrx? {
        return try read() as LookupPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `LookupPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `LookupPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: LookupPrx.Protocol) throws -> LookupPrx? {
        return try read(tag: tag) as LookupPrxI?
    }
}

/// The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
///
/// LookupPrx Methods:
///
///  - findObjectById: Request to find an Ice object
///
///  - findObjectByIdAsync: Request to find an Ice object
///
///  - findAdapterById: Request to find an object adapter
///
///  - findAdapterByIdAsync: Request to find an object adapter
public extension LookupPrx {
    /// Request to find an Ice object
    ///
    /// - parameter domainId: `Swift.String` The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
    /// matching domain identifier.
    ///
    /// - parameter id: `Ice.Identity` The object identity.
    ///
    /// - parameter reply: `LookupReplyPrx?` The proxy of the LookupReply interface that should be used to send the reply if a matching
    /// object is found. The reply proxy is never null.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func findObjectById(domainId iceP_domainId: Swift.String, id iceP_id: Ice.Identity, reply iceP_reply: LookupReplyPrx?, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "findObjectById",
                          mode: .Idempotent,
                          write: { ostr in
                              ostr.write(iceP_domainId)
                              ostr.write(iceP_id)
                              ostr.write(iceP_reply)
                          },
                          context: context)
    }

    /// Request to find an Ice object
    ///
    /// - parameter domainId: `Swift.String` The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
    /// matching domain identifier.
    ///
    /// - parameter id: `Ice.Identity` The object identity.
    ///
    /// - parameter reply: `LookupReplyPrx?` The proxy of the LookupReply interface that should be used to send the reply if a matching
    /// object is found. The reply proxy is never null.
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
    func findObjectByIdAsync(domainId iceP_domainId: Swift.String, id iceP_id: Ice.Identity, reply iceP_reply: LookupReplyPrx?, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "findObjectById",
                                  mode: .Idempotent,
                                  write: { ostr in
                                      ostr.write(iceP_domainId)
                                      ostr.write(iceP_id)
                                      ostr.write(iceP_reply)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Request to find an object adapter
    ///
    /// - parameter domainId: `Swift.String` The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
    /// matching domain identifier.
    ///
    /// - parameter id: `Swift.String` The adapter ID.
    ///
    /// - parameter reply: `LookupReplyPrx?` The proxy of the LookupReply interface that should be used to send the reply if a matching
    /// adapter is found. The reply proxy is never null.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func findAdapterById(domainId iceP_domainId: Swift.String, id iceP_id: Swift.String, reply iceP_reply: LookupReplyPrx?, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "findAdapterById",
                          mode: .Idempotent,
                          write: { ostr in
                              ostr.write(iceP_domainId)
                              ostr.write(iceP_id)
                              ostr.write(iceP_reply)
                          },
                          context: context)
    }

    /// Request to find an object adapter
    ///
    /// - parameter domainId: `Swift.String` The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
    /// matching domain identifier.
    ///
    /// - parameter id: `Swift.String` The adapter ID.
    ///
    /// - parameter reply: `LookupReplyPrx?` The proxy of the LookupReply interface that should be used to send the reply if a matching
    /// adapter is found. The reply proxy is never null.
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
    func findAdapterByIdAsync(domainId iceP_domainId: Swift.String, id iceP_id: Swift.String, reply iceP_reply: LookupReplyPrx?, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "findAdapterById",
                                  mode: .Idempotent,
                                  write: { ostr in
                                      ostr.write(iceP_domainId)
                                      ostr.write(iceP_id)
                                      ostr.write(iceP_reply)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `LookupReply` servants.
public struct LookupReplyDisp: Ice.Dispatcher {
    public let servant: LookupReply
    private static let defaultObject = Ice.ObjectI<LookupReplyTraits>()

    public init(_ servant: LookupReply) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "foundAdapterById":
            servant._iceD_foundAdapterById(request)
        case "foundObjectById":
            servant._iceD_foundObjectById(request)
        case "ice_id":
            (servant as? Ice.Object ?? LookupReplyDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? LookupReplyDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? LookupReplyDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? LookupReplyDisp.defaultObject)._iceD_ice_ping(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

/// The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
public protocol LookupReply {
    /// Reply to the findObjectById request.
    ///
    /// - parameter id: `Ice.Identity` The identity of the object.
    ///
    /// - parameter prx: `Ice.ObjectPrx?` The proxy of the object. This proxy is never null.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func foundObjectById(id: Ice.Identity, prx: Ice.ObjectPrx?, current: Ice.Current) throws

    /// Reply to the findAdpaterById request.
    ///
    /// - parameter id: `Swift.String` The adapter ID.
    ///
    /// - parameter prx: `Ice.ObjectPrx?` The adapter proxy (a dummy proxy created by the adapter). The proxy provides the adapter
    /// endpoints. This proxy is never null.
    ///
    /// - parameter isReplicaGroup: `Swift.Bool` True if the adapter is also a member of a replica group.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func foundAdapterById(id: Swift.String, prx: Ice.ObjectPrx?, isReplicaGroup: Swift.Bool, current: Ice.Current) throws
}


/// Dispatcher for `Lookup` servants.
public struct LookupDisp: Ice.Dispatcher {
    public let servant: Lookup
    private static let defaultObject = Ice.ObjectI<LookupTraits>()

    public init(_ servant: Lookup) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "findAdapterById":
            servant._iceD_findAdapterById(request)
        case "findObjectById":
            servant._iceD_findObjectById(request)
        case "ice_id":
            (servant as? Ice.Object ?? LookupDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? LookupDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? LookupDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? LookupDisp.defaultObject)._iceD_ice_ping(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

/// The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
public protocol Lookup {
    /// Request to find an Ice object
    ///
    /// - parameter domainId: `Swift.String` The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
    /// matching domain identifier.
    ///
    /// - parameter id: `Ice.Identity` The object identity.
    ///
    /// - parameter reply: `LookupReplyPrx?` The proxy of the LookupReply interface that should be used to send the reply if a matching
    /// object is found. The reply proxy is never null.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func findObjectById(domainId: Swift.String, id: Ice.Identity, reply: LookupReplyPrx?, current: Ice.Current) throws

    /// Request to find an object adapter
    ///
    /// - parameter domainId: `Swift.String` The IceDiscovery domain identifier. An IceDiscovery client only replies to requests with a
    /// matching domain identifier.
    ///
    /// - parameter id: `Swift.String` The adapter ID.
    ///
    /// - parameter reply: `LookupReplyPrx?` The proxy of the LookupReply interface that should be used to send the reply if a matching
    /// adapter is found. The reply proxy is never null.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func findAdapterById(domainId: Swift.String, id: Swift.String, reply: LookupReplyPrx?, current: Ice.Current) throws
}

/// The LookupReply interface is used by IceDiscovery clients to answer requests received on the Lookup interface.
///
/// LookupReply Methods:
///
///  - foundObjectById: Reply to the findObjectById request.
///
///  - foundAdapterById: Reply to the findAdpaterById request.
extension LookupReply {
    public func _iceD_foundObjectById(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_id: Ice.Identity = try istr.read()
            let iceP_prx: Ice.ObjectPrx? = try istr.read(Ice.ObjectPrx.self)

            try self.foundObjectById(id: iceP_id, prx: iceP_prx, current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_foundAdapterById(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_id: Swift.String = try istr.read()
            let iceP_prx: Ice.ObjectPrx? = try istr.read(Ice.ObjectPrx.self)
            let iceP_isReplicaGroup: Swift.Bool = try istr.read()

            try self.foundAdapterById(id: iceP_id, prx: iceP_prx, isReplicaGroup: iceP_isReplicaGroup, current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}

/// The Lookup interface is used by IceDiscovery clients to look for objects and adapters using UDP multicast.
///
/// Lookup Methods:
///
///  - findObjectById: Request to find an Ice object
///
///  - findAdapterById: Request to find an object adapter
extension Lookup {
    public func _iceD_findObjectById(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_domainId: Swift.String = try istr.read()
            let iceP_id: Ice.Identity = try istr.read()
            let iceP_reply: LookupReplyPrx? = try istr.read(LookupReplyPrx.self)

            try self.findObjectById(domainId: iceP_domainId, id: iceP_id, reply: iceP_reply, current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_findAdapterById(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_domainId: Swift.String = try istr.read()
            let iceP_id: Swift.String = try istr.read()
            let iceP_reply: LookupReplyPrx? = try istr.read(LookupReplyPrx.self)

            try self.findAdapterById(domainId: iceP_domainId, id: iceP_id, reply: iceP_reply, current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
