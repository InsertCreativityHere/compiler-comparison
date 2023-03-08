//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Event.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface `Event`.
public struct EventTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Event"]
    public static let staticId = "::Test::Event"
}

/// EventPrx overview.
///
/// EventPrx Methods:
///
///  - pub: 
///
///  - pubAsync: 
public protocol EventPrx: Ice.ObjectPrx {}

private final class EventPrxI: Ice.ObjectPrxI, EventPrx {
    public override class func ice_staticId() -> Swift.String {
        return EventTraits.staticId
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
/// - parameter type: `EventPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `EventPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: EventPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> EventPrx? {
    return try EventPrxI.checkedCast(prx: prx, facet: facet, context: context) as EventPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `EventPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `EventPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: EventPrx.Protocol, facet: Swift.String? = nil) -> EventPrx {
    return EventPrxI.uncheckedCast(prx: prx, facet: facet) as EventPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `EventPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: EventPrx.Protocol) -> Swift.String {
    return EventTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `EventPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `EventPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `EventPrx?` - The extracted proxy
    func read(_ type: EventPrx.Protocol) throws -> EventPrx? {
        return try read() as EventPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `EventPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `EventPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: EventPrx.Protocol) throws -> EventPrx? {
        return try read(tag: tag) as EventPrxI?
    }
}

/// EventPrx overview.
///
/// EventPrx Methods:
///
///  - pub: 
///
///  - pubAsync: 
public extension EventPrx {
    ///
    /// - parameter _: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func pub(_ iceP_counter: Swift.Int32, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "pub",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_counter)
                          },
                          context: context)
    }

    ///
    /// - parameter _: `Swift.Int32`
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
    func pubAsync(_ iceP_counter: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "pub",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_counter)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `Event` servants.
public struct EventDisp: Ice.Disp {
    public let servant: Event
    private static let defaultObject = Ice.ObjectI<EventTraits>()

    public init(_ servant: Event) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? EventDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? EventDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? EventDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? EventDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "pub":
            return try servant._iceD_pub(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol Event {
    ///
    /// - parameter counter: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func pub(counter: Swift.Int32, current: Ice.Current) throws
}

/// Event overview.
///
/// Event Methods:
///
///  - pub: 
public extension Event {
    func _iceD_pub(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_counter: Swift.Int32 = try inS.read { istr in
            let iceP_counter: Swift.Int32 = try istr.read()
            return iceP_counter
        }

        try self.pub(counter: iceP_counter, current: current)

        return inS.setResult()
    }
}
