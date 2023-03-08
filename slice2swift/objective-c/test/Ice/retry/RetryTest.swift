//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `RetryTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface `Retry`.
public struct RetryTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Retry"]
    public static let staticId = "::Test::Retry"
}

/// RetryPrx overview.
///
/// RetryPrx Methods:
///
///  - op: 
///
///  - opAsync: 
///
///  - opIdempotent: 
///
///  - opIdempotentAsync: 
///
///  - opNotIdempotent: 
///
///  - opNotIdempotentAsync: 
///
///  - opSystemException: 
///
///  - opSystemExceptionAsync: 
///
///  - sleep: 
///
///  - sleepAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol RetryPrx: Ice.ObjectPrx {}

private final class RetryPrxI: Ice.ObjectPrxI, RetryPrx {
    public override class func ice_staticId() -> Swift.String {
        return RetryTraits.staticId
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
/// - parameter type: `RetryPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `RetryPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: RetryPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> RetryPrx? {
    return try RetryPrxI.checkedCast(prx: prx, facet: facet, context: context) as RetryPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `RetryPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `RetryPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: RetryPrx.Protocol, facet: Swift.String? = nil) -> RetryPrx {
    return RetryPrxI.uncheckedCast(prx: prx, facet: facet) as RetryPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `RetryPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: RetryPrx.Protocol) -> Swift.String {
    return RetryTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `RetryPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `RetryPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RetryPrx?` - The extracted proxy
    func read(_ type: RetryPrx.Protocol) throws -> RetryPrx? {
        return try read() as RetryPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `RetryPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RetryPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: RetryPrx.Protocol) throws -> RetryPrx? {
        return try read(tag: tag) as RetryPrxI?
    }
}

/// RetryPrx overview.
///
/// RetryPrx Methods:
///
///  - op: 
///
///  - opAsync: 
///
///  - opIdempotent: 
///
///  - opIdempotentAsync: 
///
///  - opNotIdempotent: 
///
///  - opNotIdempotentAsync: 
///
///  - opSystemException: 
///
///  - opSystemExceptionAsync: 
///
///  - sleep: 
///
///  - sleepAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension RetryPrx {
    ///
    /// - parameter _: `Swift.Bool`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func op(_ iceP_kill: Swift.Bool, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "op",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_kill)
                          },
                          context: context)
    }

    ///
    /// - parameter _: `Swift.Bool`
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
    func opAsync(_ iceP_kill: Swift.Bool, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "op",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_kill)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func opIdempotent(_ iceP_c: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "opIdempotent",
                                 mode: .Idempotent,
                                 write: { ostr in
                                     ostr.write(iceP_c)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
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
    /// - returns: `PromiseKit.Promise<Swift.Int32>` - The result of the operation
    func opIdempotentAsync(_ iceP_c: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "opIdempotent",
                                  mode: .Idempotent,
                                  write: { ostr in
                                      ostr.write(iceP_c)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: Swift.Int32 = try istr.read()
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func opNotIdempotent(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "opNotIdempotent",
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
    func opNotIdempotentAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "opNotIdempotent",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func opSystemException(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "opSystemException",
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
    func opSystemExceptionAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "opSystemException",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func sleep(_ iceP_delay: Swift.Int32, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "sleep",
                          mode: .Idempotent,
                          write: { ostr in
                              ostr.write(iceP_delay)
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
    func sleepAsync(_ iceP_delay: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "sleep",
                                  mode: .Idempotent,
                                  write: { ostr in
                                      ostr.write(iceP_delay)
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
                          mode: .Idempotent,
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
                                  mode: .Idempotent,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `Retry` servants.
public struct RetryDisp: Ice.Disp {
    public let servant: Retry
    private static let defaultObject = Ice.ObjectI<RetryTraits>()

    public init(_ servant: Retry) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? RetryDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? RetryDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? RetryDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? RetryDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "op":
            return try servant._iceD_op(incoming: request, current: current)
        case "opIdempotent":
            return try servant._iceD_opIdempotent(incoming: request, current: current)
        case "opNotIdempotent":
            return try servant._iceD_opNotIdempotent(incoming: request, current: current)
        case "opSystemException":
            return try servant._iceD_opSystemException(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        case "sleep":
            return try servant._iceD_sleep(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol Retry {
    ///
    /// - parameter kill: `Swift.Bool`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func op(kill: Swift.Bool, current: Ice.Current) throws

    ///
    /// - parameter c: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int32`
    func opIdempotent(c: Swift.Int32, current: Ice.Current) throws -> Swift.Int32

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func opNotIdempotent(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func opSystemException(current: Ice.Current) throws

    ///
    /// - parameter delay: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func sleep(delay: Swift.Int32, current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// Retry overview.
///
/// Retry Methods:
///
///  - op: 
///
///  - opIdempotent: 
///
///  - opNotIdempotent: 
///
///  - opSystemException: 
///
///  - sleep: 
///
///  - shutdown: 
public extension Retry {
    func _iceD_op(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_kill: Swift.Bool = try inS.read { istr in
            let iceP_kill: Swift.Bool = try istr.read()
            return iceP_kill
        }

        try self.op(kill: iceP_kill, current: current)

        return inS.setResult()
    }

    func _iceD_opIdempotent(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_c: Swift.Int32 = try inS.read { istr in
            let iceP_c: Swift.Int32 = try istr.read()
            return iceP_c
        }

        let iceP_returnValue = try self.opIdempotent(c: iceP_c, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_opNotIdempotent(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.opNotIdempotent(current: current)

        return inS.setResult()
    }

    func _iceD_opSystemException(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.opSystemException(current: current)

        return inS.setResult()
    }

    func _iceD_sleep(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_delay: Swift.Int32 = try inS.read { istr in
            let iceP_delay: Swift.Int32 = try istr.read()
            return iceP_delay
        }

        try self.sleep(delay: iceP_delay, current: current)

        return inS.setResult()
    }

    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }
}
