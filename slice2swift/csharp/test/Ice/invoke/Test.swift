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
public class MyException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return MyException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_MyException() -> Ice.UserExceptionTypeResolver {
        return MyException_TypeResolver()
    }
}

open class MyException: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::MyException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: MyException.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface`MyClass`.
public struct MyClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyClass"]
    public static let staticId = "::Test::MyClass"
}

/// MyClassPrx overview.
///
/// MyClassPrx Methods:
///
///  - opOneway: 
///
///  - opOnewayAsync: 
///
///  - opString: 
///
///  - opStringAsync: 
///
///  - opException: 
///
///  - opExceptionAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol MyClassPrx: Ice.ObjectPrx {}

private final class MyClassPrxI: Ice.ObjectPrxI, MyClassPrx {
    public override class func ice_staticId() -> Swift.String {
        return MyClassTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: MyClassPrx.Protocol) throws -> MyClassPrx {
    try communicator.makeProxyImpl(proxyString) as MyClassPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `MyClassPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `MyClassPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: MyClassPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> MyClassPrx? {
    return try MyClassPrxI.checkedCast(prx: prx, facet: facet, context: context) as MyClassPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `MyClassPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `MyClassPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: MyClassPrx.Protocol, facet: Swift.String? = nil) -> MyClassPrx {
    return MyClassPrxI.uncheckedCast(prx: prx, facet: facet) as MyClassPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `MyClassPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: MyClassPrx.Protocol) -> Swift.String {
    return MyClassTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `MyClassPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `MyClassPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `MyClassPrx?` - The extracted proxy
    func read(_ type: MyClassPrx.Protocol) throws -> MyClassPrx? {
        return try read() as MyClassPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `MyClassPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `MyClassPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: MyClassPrx.Protocol) throws -> MyClassPrx? {
        return try read(tag: tag) as MyClassPrxI?
    }
}

/// MyClassPrx overview.
///
/// MyClassPrx Methods:
///
///  - opOneway: 
///
///  - opOnewayAsync: 
///
///  - opString: 
///
///  - opStringAsync: 
///
///  - opException: 
///
///  - opExceptionAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension MyClassPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func opOneway(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "opOneway",
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
    func opOnewayAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "opOneway",
                                  mode: .Normal,
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
    /// - returns: `(returnValue: Swift.String, s2: Swift.String)`:
    ///
    ///   - returnValue: `Swift.String`
    ///
    ///   - s2: `Swift.String`
    func opString(_ iceP_s1: Swift.String, context: Ice.Context? = nil) throws -> (returnValue: Swift.String, s2: Swift.String) {
        return try _impl._invoke(operation: "opString",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_s1)
                                 },
                                 read: { istr in
                                     let iceP_s2: Swift.String = try istr.read()
                                     let iceP_returnValue: Swift.String = try istr.read()
                                     return (iceP_returnValue, iceP_s2)
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
    /// - returns: `PromiseKit.Promise<(returnValue: Swift.String, s2: Swift.String)>` - The result of the operation
    func opStringAsync(_ iceP_s1: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: Swift.String, s2: Swift.String)> {
        return _impl._invokeAsync(operation: "opString",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_s1)
                                  },
                                  read: { istr in
                                      let iceP_s2: Swift.String = try istr.read()
                                      let iceP_returnValue: Swift.String = try istr.read()
                                      return (iceP_returnValue, iceP_s2)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func opException(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "opException",
                          mode: .Normal,
                          userException:{ ex in
                              do  {
                                  throw ex
                              } catch let error as MyException {
                                  throw error
                              } catch is Ice.UserException {}
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
    /// - returns: `PromiseKit.Promise<>` - The result of the operation
    func opExceptionAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "opException",
                                  mode: .Normal,
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as MyException {
                                          throw error
                                      } catch is Ice.UserException {}
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


/// Dispatcher for `MyClass` servants.
public struct MyClassDisp: Ice.Dispatcher {
    public let servant: MyClass
    private static let defaultObject = Ice.ObjectI<MyClassTraits>()

    public init(_ servant: MyClass) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "ice_id":
            (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? MyClassDisp.defaultObject)._iceD_ice_ping(request)
        case "opException":
            servant._iceD_opException(request)
        case "opOneway":
            servant._iceD_opOneway(request)
        case "opString":
            servant._iceD_opString(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol MyClass {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func opOneway(current: Ice.Current) throws

    ///
    /// - parameter s1: `Swift.String`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: Swift.String, s2: Swift.String)`:
    ///
    ///   - returnValue: `Swift.String`
    ///
    ///   - s2: `Swift.String`
    func opString(s1: Swift.String, current: Ice.Current) throws -> (returnValue: Swift.String, s2: Swift.String)

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func opException(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// MyClass overview.
///
/// MyClass Methods:
///
///  - opOneway: 
///
///  - opString: 
///
///  - opException: 
///
///  - shutdown: 
extension MyClass {
    public func _iceD_opOneway(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.opOneway(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_opString(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_s1: Swift.String = try istr.read()

            let (iceP_returnValue, iceP_s2) = try self.opString(s1: iceP_s1, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_s2)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_opException(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.opException(current: request.current)
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
}
