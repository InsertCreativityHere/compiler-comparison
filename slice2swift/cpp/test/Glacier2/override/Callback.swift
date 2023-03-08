//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface `CallbackReceiver`.
public struct CallbackReceiverTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::CallbackReceiver"]
    public static let staticId = "::Test::CallbackReceiver"
}

/// Traits for Slice interface `Callback`.
public struct CallbackTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Callback"]
    public static let staticId = "::Test::Callback"
}

/// CallbackReceiverPrx overview.
///
/// CallbackReceiverPrx Methods:
///
///  - callback: 
///
///  - callbackAsync: 
///
///  - callbackWithPayload: 
///
///  - callbackWithPayloadAsync: 
public protocol CallbackReceiverPrx: Ice.ObjectPrx {}

private final class CallbackReceiverPrxI: Ice.ObjectPrxI, CallbackReceiverPrx {
    public override class func ice_staticId() -> Swift.String {
        return CallbackReceiverTraits.staticId
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
/// - parameter type: `CallbackReceiverPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `CallbackReceiverPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: CallbackReceiverPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> CallbackReceiverPrx? {
    return try CallbackReceiverPrxI.checkedCast(prx: prx, facet: facet, context: context) as CallbackReceiverPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `CallbackReceiverPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `CallbackReceiverPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: CallbackReceiverPrx.Protocol, facet: Swift.String? = nil) -> CallbackReceiverPrx {
    return CallbackReceiverPrxI.uncheckedCast(prx: prx, facet: facet) as CallbackReceiverPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `CallbackReceiverPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: CallbackReceiverPrx.Protocol) -> Swift.String {
    return CallbackReceiverTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `CallbackReceiverPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `CallbackReceiverPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `CallbackReceiverPrx?` - The extracted proxy
    func read(_ type: CallbackReceiverPrx.Protocol) throws -> CallbackReceiverPrx? {
        return try read() as CallbackReceiverPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `CallbackReceiverPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `CallbackReceiverPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: CallbackReceiverPrx.Protocol) throws -> CallbackReceiverPrx? {
        return try read(tag: tag) as CallbackReceiverPrxI?
    }
}

/// CallbackReceiverPrx overview.
///
/// CallbackReceiverPrx Methods:
///
///  - callback: 
///
///  - callbackAsync: 
///
///  - callbackWithPayload: 
///
///  - callbackWithPayloadAsync: 
public extension CallbackReceiverPrx {
    ///
    /// - parameter _: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func callback(_ iceP_token: Swift.Int32, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "callback",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_token)
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
    func callbackAsync(_ iceP_token: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "callback",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_token)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `Ice.ByteSeq`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func callbackWithPayload(_ iceP_payload: Ice.ByteSeq, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "callbackWithPayload",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_payload)
                          },
                          context: context)
    }

    ///
    /// - parameter _: `Ice.ByteSeq`
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
    func callbackWithPayloadAsync(_ iceP_payload: Ice.ByteSeq, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "callbackWithPayload",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_payload)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// CallbackPrx overview.
///
/// CallbackPrx Methods:
///
///  - initiateCallback: 
///
///  - initiateCallbackAsync: 
///
///  - initiateCallbackWithPayload: 
///
///  - initiateCallbackWithPayloadAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol CallbackPrx: Ice.ObjectPrx {}

private final class CallbackPrxI: Ice.ObjectPrxI, CallbackPrx {
    public override class func ice_staticId() -> Swift.String {
        return CallbackTraits.staticId
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
/// - parameter type: `CallbackPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `CallbackPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: CallbackPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> CallbackPrx? {
    return try CallbackPrxI.checkedCast(prx: prx, facet: facet, context: context) as CallbackPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `CallbackPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `CallbackPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: CallbackPrx.Protocol, facet: Swift.String? = nil) -> CallbackPrx {
    return CallbackPrxI.uncheckedCast(prx: prx, facet: facet) as CallbackPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `CallbackPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: CallbackPrx.Protocol) -> Swift.String {
    return CallbackTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `CallbackPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `CallbackPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `CallbackPrx?` - The extracted proxy
    func read(_ type: CallbackPrx.Protocol) throws -> CallbackPrx? {
        return try read() as CallbackPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `CallbackPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `CallbackPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: CallbackPrx.Protocol) throws -> CallbackPrx? {
        return try read(tag: tag) as CallbackPrxI?
    }
}

/// CallbackPrx overview.
///
/// CallbackPrx Methods:
///
///  - initiateCallback: 
///
///  - initiateCallbackAsync: 
///
///  - initiateCallbackWithPayload: 
///
///  - initiateCallbackWithPayloadAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension CallbackPrx {
    ///
    /// - parameter proxy: `CallbackReceiverPrx?`
    ///
    /// - parameter token: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func initiateCallback(proxy iceP_proxy: CallbackReceiverPrx?, token iceP_token: Swift.Int32, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "initiateCallback",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_proxy)
                              ostr.write(iceP_token)
                          },
                          context: context)
    }

    ///
    /// - parameter proxy: `CallbackReceiverPrx?`
    ///
    /// - parameter token: `Swift.Int32`
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
    func initiateCallbackAsync(proxy iceP_proxy: CallbackReceiverPrx?, token iceP_token: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "initiateCallback",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_proxy)
                                      ostr.write(iceP_token)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `CallbackReceiverPrx?`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func initiateCallbackWithPayload(_ iceP_proxy: CallbackReceiverPrx?, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "initiateCallbackWithPayload",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_proxy)
                          },
                          context: context)
    }

    ///
    /// - parameter _: `CallbackReceiverPrx?`
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
    func initiateCallbackWithPayloadAsync(_ iceP_proxy: CallbackReceiverPrx?, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "initiateCallbackWithPayload",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_proxy)
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


/// Dispatcher for `CallbackReceiver` servants.
public struct CallbackReceiverDisp: Ice.Disp {
    public let servant: CallbackReceiver
    private static let defaultObject = Ice.ObjectI<CallbackReceiverTraits>()

    public init(_ servant: CallbackReceiver) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "callback":
            return try servant._iceD_callback(incoming: request, current: current)
        case "callbackWithPayload":
            return try servant._iceD_callbackWithPayload(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? CallbackReceiverDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? CallbackReceiverDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? CallbackReceiverDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? CallbackReceiverDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol CallbackReceiver {
    ///
    /// - parameter token: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func callback(token: Swift.Int32, current: Ice.Current) throws

    ///
    /// - parameter payload: `Ice.ByteSeq`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func callbackWithPayload(payload: Ice.ByteSeq, current: Ice.Current) throws
}


/// Dispatcher for `Callback` servants.
public struct CallbackDisp: Ice.Disp {
    public let servant: Callback
    private static let defaultObject = Ice.ObjectI<CallbackTraits>()

    public init(_ servant: Callback) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? CallbackDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? CallbackDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? CallbackDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? CallbackDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "initiateCallback":
            return try servant._iceD_initiateCallback(incoming: request, current: current)
        case "initiateCallbackWithPayload":
            return try servant._iceD_initiateCallbackWithPayload(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol Callback {
    ///
    /// - parameter proxy: `CallbackReceiverPrx?`
    ///
    /// - parameter token: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func initiateCallbackAsync(proxy: CallbackReceiverPrx?, token: Swift.Int32, current: Ice.Current) -> PromiseKit.Promise<Swift.Void>

    ///
    /// - parameter proxy: `CallbackReceiverPrx?`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func initiateCallbackWithPayloadAsync(proxy: CallbackReceiverPrx?, current: Ice.Current) -> PromiseKit.Promise<Swift.Void>

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// CallbackReceiver overview.
///
/// CallbackReceiver Methods:
///
///  - callback: 
///
///  - callbackWithPayload: 
public extension CallbackReceiver {
    func _iceD_callback(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_token: Swift.Int32 = try inS.read { istr in
            let iceP_token: Swift.Int32 = try istr.read()
            return iceP_token
        }

        try self.callback(token: iceP_token, current: current)

        return inS.setResult()
    }

    func _iceD_callbackWithPayload(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_payload: Ice.ByteSeq = try inS.read { istr in
            let iceP_payload: Ice.ByteSeq = try istr.read()
            return iceP_payload
        }

        try self.callbackWithPayload(payload: iceP_payload, current: current)

        return inS.setResult()
    }
}

/// Callback overview.
///
/// Callback Methods:
///
///  - initiateCallback: 
///
///  - initiateCallbackWithPayload: 
///
///  - shutdown: 
public extension Callback {
    func _iceD_initiateCallback(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let (iceP_proxy, iceP_token): (CallbackReceiverPrx?, Swift.Int32) = try inS.read { istr in
            let iceP_proxy: CallbackReceiverPrx? = try istr.read(CallbackReceiverPrx.self)
            let iceP_token: Swift.Int32 = try istr.read()
            return (iceP_proxy, iceP_token)
        }

        return inS.setResultPromise(initiateCallbackAsync(proxy: iceP_proxy, token: iceP_token, current: current))
    }

    func _iceD_initiateCallbackWithPayload(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_proxy: CallbackReceiverPrx? = try inS.read { istr in
            let iceP_proxy: CallbackReceiverPrx? = try istr.read(CallbackReceiverPrx.self)
            return iceP_proxy
        }

        return inS.setResultPromise(initiateCallbackWithPayloadAsync(proxy: iceP_proxy, current: current))
    }

    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }
}
