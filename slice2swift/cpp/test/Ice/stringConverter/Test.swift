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

/// :nodoc:
public class BadEncodingException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return BadEncodingException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_BadEncodingException() -> Ice.UserExceptionTypeResolver {
        return BadEncodingException_TypeResolver()
    }
}

open class BadEncodingException: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::BadEncodingException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: BadEncodingException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface`MyObject`.
public struct MyObjectTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyObject"]
    public static let staticId = "::Test::MyObject"
}

/// MyObjectPrx overview.
///
/// MyObjectPrx Methods:
///
///  - widen: 
///
///  - widenAsync: 
///
///  - narrow: 
///
///  - narrowAsync: 
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
/// - Throws: `Ice.ProxyParseException` if the proxy string is invalid.
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

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `MyObjectPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
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
///  - widen: 
///
///  - widenAsync: 
///
///  - narrow: 
///
///  - narrowAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension MyObjectPrx {
    ///
    /// - parameter _: `Swift.String`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String`
    func widen(_ iceP_msg: Swift.String, context: Ice.Context? = nil) throws -> Swift.String {
        return try _impl._invoke(operation: "widen",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_msg)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.String = try istr.read()
                                     return iceP_returnValue
                                 },
                                 userException:{ ex in
                                     do  {
                                         throw ex
                                     } catch let error as BadEncodingException {
                                         throw error
                                     } catch is Ice.UserException {}
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `Swift.String`
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
    func widenAsync(_ iceP_msg: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.String> {
        return _impl._invokeAsync(operation: "widen",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_msg)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: Swift.String = try istr.read()
                                      return iceP_returnValue
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as BadEncodingException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter _: `Swift.String`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String`
    func narrow(_ iceP_wmsg: Swift.String, context: Ice.Context? = nil) throws -> Swift.String {
        return try _impl._invoke(operation: "narrow",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_wmsg)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.String = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `Swift.String`
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
    func narrowAsync(_ iceP_wmsg: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.String> {
        return _impl._invokeAsync(operation: "narrow",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_wmsg)
                                  },
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


/// Dispatcher for `MyObject` servants.
public struct MyObjectDisp: Ice.Dispatcher {
    public let servant: MyObject
    private static let defaultObject = Ice.ObjectI<MyObjectTraits>()

    public init(_ servant: MyObject) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "ice_id":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_ping(request)
        case "narrow":
            servant._iceD_narrow(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        case "widen":
            servant._iceD_widen(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol MyObject {
    ///
    /// - parameter msg: `Swift.String`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String`
    func widen(msg: Swift.String, current: Ice.Current) throws -> Swift.String

    ///
    /// - parameter wmsg: `Swift.String`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String`
    func narrow(wmsg: Swift.String, current: Ice.Current) throws -> Swift.String

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// MyObject overview.
///
/// MyObject Methods:
///
///  - widen: 
///
///  - narrow: 
///
///  - shutdown: 
extension MyObject {
    public func _iceD_widen(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_msg: Swift.String = try istr.read()

            let iceP_returnValue = try self.widen(msg: iceP_msg, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_narrow(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_wmsg: Swift.String = try istr.read()

            let iceP_returnValue = try self.narrow(wmsg: iceP_wmsg, current: request.current)
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
