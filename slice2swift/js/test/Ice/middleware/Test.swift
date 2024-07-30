//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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

/// Traits for Slice interface`Echo`.
public struct EchoTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Echo"]
    public static let staticId = "::Test::Echo"
}

/// Traits for Slice interface`MyObject`.
public struct MyObjectTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyObject"]
    public static let staticId = "::Test::MyObject"
}

/// EchoPrx overview.
///
/// EchoPrx Methods:
///
///  - setConnection: 
///
///  - setConnectionAsync: 
///
///  - startBatch: 
///
///  - startBatchAsync: 
///
///  - flushBatch: 
///
///  - flushBatchAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - supportsCompress: 
///
///  - supportsCompressAsync: 
public protocol EchoPrx: Ice.ObjectPrx {}

private final class EchoPrxI: Ice.ObjectPrxI, EchoPrx {
    public override class func ice_staticId() -> Swift.String {
        return EchoTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: EchoPrx.Protocol) throws -> EchoPrx {
    try communicator.makeProxyImpl(proxyString) as EchoPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `EchoPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `EchoPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: EchoPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> EchoPrx? {
    return try EchoPrxI.checkedCast(prx: prx, facet: facet, context: context) as EchoPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `EchoPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `EchoPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: EchoPrx.Protocol, facet: Swift.String? = nil) -> EchoPrx {
    return EchoPrxI.uncheckedCast(prx: prx, facet: facet) as EchoPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// parameter type: `EchoPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: EchoPrx.Protocol) -> Swift.String {
    return EchoTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `EchoPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `EchoPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `EchoPrx?` - The extracted proxy
    func read(_ type: EchoPrx.Protocol) throws -> EchoPrx? {
        return try read() as EchoPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `EchoPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `EchoPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: EchoPrx.Protocol) throws -> EchoPrx? {
        return try read(tag: tag) as EchoPrxI?
    }
}

/// EchoPrx overview.
///
/// EchoPrx Methods:
///
///  - setConnection: 
///
///  - setConnectionAsync: 
///
///  - startBatch: 
///
///  - startBatchAsync: 
///
///  - flushBatch: 
///
///  - flushBatchAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - supportsCompress: 
///
///  - supportsCompressAsync: 
public extension EchoPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func setConnection(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "setConnection",
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
    func setConnectionAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "setConnection",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func startBatch(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "startBatch",
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
    func startBatchAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "startBatch",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func flushBatch(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "flushBatch",
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
    func flushBatchAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "flushBatch",
                                  mode: .Normal,
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

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Bool`
    func supportsCompress(context: Ice.Context? = nil) throws -> Swift.Bool {
        return try _impl._invoke(operation: "supportsCompress",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: Swift.Bool = try istr.read()
                                     return iceP_returnValue
                                 },
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
    /// - returns: `PromiseKit.Promise<Swift.Bool>` - The result of the operation
    func supportsCompressAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Bool> {
        return _impl._invokeAsync(operation: "supportsCompress",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: Swift.Bool = try istr.read()
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// MyObjectPrx overview.
///
/// MyObjectPrx Methods:
///
///  - getName: 
///
///  - getNameAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol MyObjectPrx: Ice.ObjectPrx {}

private final class MyObjectPrxI: Ice.ObjectPrxI, MyObjectPrx {
    public override class func ice_staticId() -> Swift.String {
        return MyObjectTraits.staticId
    }
}

/// Makes a new proxy from a communicator and a proxy string.
///
/// - Parameters:
///    - communicator: The communicator of the new proxy.
///    - proxyString: The proxy string to parse.
///    - type: The type of the new proxy.
/// - Throws: `Ice.ParseException` if the proxy string is invalid.
/// - Returns: A new proxy with the requested type.
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: MyObjectPrx.Protocol) throws -> MyObjectPrx {
    try communicator.makeProxyImpl(proxyString) as MyObjectPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `MyObjectPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `MyObjectPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: MyObjectPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> MyObjectPrx? {
    return try MyObjectPrxI.checkedCast(prx: prx, facet: facet, context: context) as MyObjectPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `MyObjectPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `MyObjectPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: MyObjectPrx.Protocol, facet: Swift.String? = nil) -> MyObjectPrx {
    return MyObjectPrxI.uncheckedCast(prx: prx, facet: facet) as MyObjectPrxI
}

/// Returns the Slice type id of the interface associated with this proxy type.
///
/// parameter type: `MyObjectPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface associated with this proxy type.
public func ice_staticId(_ type: MyObjectPrx.Protocol) -> Swift.String {
    return MyObjectTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `MyObjectPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `MyObjectPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `MyObjectPrx?` - The extracted proxy
    func read(_ type: MyObjectPrx.Protocol) throws -> MyObjectPrx? {
        return try read() as MyObjectPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `MyObjectPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `MyObjectPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: MyObjectPrx.Protocol) throws -> MyObjectPrx? {
        return try read(tag: tag) as MyObjectPrxI?
    }
}

/// MyObjectPrx overview.
///
/// MyObjectPrx Methods:
///
///  - getName: 
///
///  - getNameAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension MyObjectPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String`
    func getName(context: Ice.Context? = nil) throws -> Swift.String {
        return try _impl._invoke(operation: "getName",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: Swift.String = try istr.read()
                                     return iceP_returnValue
                                 },
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
    /// - returns: `PromiseKit.Promise<Swift.String>` - The result of the operation
    func getNameAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.String> {
        return _impl._invokeAsync(operation: "getName",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: Swift.String = try istr.read()
                                      return iceP_returnValue
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


/// Dispatcher for `Echo` servants.
public struct EchoDisp: Ice.Dispatcher {
    public let servant: Echo
    private static let defaultObject = Ice.ObjectI<EchoTraits>()

    public init(_ servant: Echo) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "flushBatch":
            servant._iceD_flushBatch(request)
        case "ice_id":
            (servant as? Ice.Object ?? EchoDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? EchoDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? EchoDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? EchoDisp.defaultObject)._iceD_ice_ping(request)
        case "setConnection":
            servant._iceD_setConnection(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        case "startBatch":
            servant._iceD_startBatch(request)
        case "supportsCompress":
            servant._iceD_supportsCompress(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol Echo {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func setConnection(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func startBatch(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func flushBatch(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Bool`
    func supportsCompress(current: Ice.Current) throws -> Swift.Bool
}


/// Dispatcher for `MyObject` servants.
public struct MyObjectDisp: Ice.Dispatcher {
    public let servant: MyObject
    private static let defaultObject = Ice.ObjectI<MyObjectTraits>()

    public init(_ servant: MyObject) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "getName":
            servant._iceD_getName(request)
        case "ice_id":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_ping(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol MyObject {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String`
    func getName(current: Ice.Current) throws -> Swift.String

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// Echo overview.
///
/// Echo Methods:
///
///  - setConnection: 
///
///  - startBatch: 
///
///  - flushBatch: 
///
///  - shutdown: 
///
///  - supportsCompress: 
extension Echo {
    public func _iceD_setConnection(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.setConnection(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_startBatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.startBatch(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_flushBatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.flushBatch(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_shutdown(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.shutdown(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_supportsCompress(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            let iceP_returnValue = try self.supportsCompress(current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}

/// MyObject overview.
///
/// MyObject Methods:
///
///  - getName: 
///
///  - shutdown: 
extension MyObject {
    public func _iceD_getName(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            let iceP_returnValue = try self.getName(current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_shutdown(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.shutdown(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
