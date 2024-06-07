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
public class InvalidInputException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return InvalidInputException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_InvalidInputException() -> Ice.UserExceptionTypeResolver {
        return InvalidInputException_TypeResolver()
    }
}

open class InvalidInputException: Ice.UserException {
    public var message: Swift.String = ""

    public required init() {}

    public init(message: Swift.String) {
        self.message = message
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::InvalidInputException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: InvalidInputException.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.message)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.message = try istr.read()
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
///  - add: 
///
///  - addAsync: 
///
///  - addWithRetry: 
///
///  - addWithRetryAsync: 
///
///  - badAdd: 
///
///  - badAddAsync: 
///
///  - notExistAdd: 
///
///  - notExistAddAsync: 
///
///  - amdAdd: 
///
///  - amdAddAsync: 
///
///  - amdAddWithRetry: 
///
///  - amdAddWithRetryAsync: 
///
///  - amdBadAdd: 
///
///  - amdBadAddAsync: 
///
///  - amdNotExistAdd: 
///
///  - amdNotExistAddAsync: 
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
///  - add: 
///
///  - addAsync: 
///
///  - addWithRetry: 
///
///  - addWithRetryAsync: 
///
///  - badAdd: 
///
///  - badAddAsync: 
///
///  - notExistAdd: 
///
///  - notExistAddAsync: 
///
///  - amdAdd: 
///
///  - amdAddAsync: 
///
///  - amdAddWithRetry: 
///
///  - amdAddWithRetryAsync: 
///
///  - amdBadAdd: 
///
///  - amdBadAddAsync: 
///
///  - amdNotExistAdd: 
///
///  - amdNotExistAddAsync: 
public extension MyObjectPrx {
    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func add(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "add",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func addAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "add",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
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
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func addWithRetry(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "addWithRetry",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func addWithRetryAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "addWithRetry",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
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
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func badAdd(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "badAdd",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 userException:{ ex in
                                     do  {
                                         throw ex
                                     } catch let error as InvalidInputException {
                                         throw error
                                     } catch is Ice.UserException {}
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func badAddAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "badAdd",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: Swift.Int32 = try istr.read()
                                      return iceP_returnValue
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as InvalidInputException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func notExistAdd(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "notExistAdd",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func notExistAddAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "notExistAdd",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
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
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func amdAdd(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "amdAdd",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func amdAddAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "amdAdd",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
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
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func amdAddWithRetry(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "amdAddWithRetry",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func amdAddWithRetryAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "amdAddWithRetry",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
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
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func amdBadAdd(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "amdBadAdd",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 userException:{ ex in
                                     do  {
                                         throw ex
                                     } catch let error as InvalidInputException {
                                         throw error
                                     } catch is Ice.UserException {}
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func amdBadAddAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "amdBadAdd",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: Swift.Int32 = try istr.read()
                                      return iceP_returnValue
                                  },
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as InvalidInputException {
                                          throw error
                                      } catch is Ice.UserException {}
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.Int32`
    func amdNotExistAdd(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil) throws -> Swift.Int32 {
        return try _impl._invoke(operation: "amdNotExistAdd",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_x)
                                     ostr.write(iceP_y)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: Swift.Int32 = try istr.read()
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
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
    func amdNotExistAddAsync(x iceP_x: Swift.Int32, y iceP_y: Swift.Int32, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Int32> {
        return _impl._invokeAsync(operation: "amdNotExistAdd",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_x)
                                      ostr.write(iceP_y)
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
        case "add":
            servant._iceD_add(request)
        case "addWithRetry":
            servant._iceD_addWithRetry(request)
        case "amdAdd":
            servant._iceD_amdAdd(request)
        case "amdAddWithRetry":
            servant._iceD_amdAddWithRetry(request)
        case "amdBadAdd":
            servant._iceD_amdBadAdd(request)
        case "amdNotExistAdd":
            servant._iceD_amdNotExistAdd(request)
        case "badAdd":
            servant._iceD_badAdd(request)
        case "ice_id":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? MyObjectDisp.defaultObject)._iceD_ice_ping(request)
        case "notExistAdd":
            servant._iceD_notExistAdd(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol MyObject {
    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int32`
    func add(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) throws -> Swift.Int32

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int32`
    func addWithRetry(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) throws -> Swift.Int32

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int32`
    func badAdd(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) throws -> Swift.Int32

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.Int32`
    func notExistAdd(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) throws -> Swift.Int32

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PromiseKit.Promise<Swift.Int32>` - The result of the operation
    func amdAddAsync(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) -> PromiseKit.Promise<Swift.Int32>

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PromiseKit.Promise<Swift.Int32>` - The result of the operation
    func amdAddWithRetryAsync(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) -> PromiseKit.Promise<Swift.Int32>

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PromiseKit.Promise<Swift.Int32>` - The result of the operation
    func amdBadAddAsync(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) -> PromiseKit.Promise<Swift.Int32>

    ///
    /// - parameter x: `Swift.Int32`
    ///
    /// - parameter y: `Swift.Int32`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `PromiseKit.Promise<Swift.Int32>` - The result of the operation
    func amdNotExistAddAsync(x: Swift.Int32, y: Swift.Int32, current: Ice.Current) -> PromiseKit.Promise<Swift.Int32>
}

/// MyObject overview.
///
/// MyObject Methods:
///
///  - add: 
///
///  - addWithRetry: 
///
///  - badAdd: 
///
///  - notExistAdd: 
///
///  - amdAdd: 
///
///  - amdAddWithRetry: 
///
///  - amdBadAdd: 
///
///  - amdNotExistAdd: 
extension MyObject {
    public func _iceD_add(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()

            let iceP_returnValue = try self.add(x: iceP_x, y: iceP_y, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_addWithRetry(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()

            let iceP_returnValue = try self.addWithRetry(x: iceP_x, y: iceP_y, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_badAdd(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()

            let iceP_returnValue = try self.badAdd(x: iceP_x, y: iceP_y, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_notExistAdd(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()

            let iceP_returnValue = try self.notExistAdd(x: iceP_x, y: iceP_y, current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_amdAdd(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()
            return self.amdAddAsync(
                x: iceP_x, y: iceP_y, current: request.current
            ).map(on: nil) { result in 
                request.current.makeOutgoingResponse(result, formatType:.DefaultFormat) { ostr, value in 
                    let iceP_returnValue = value
                    ostr.write(iceP_returnValue)
                }
            }
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_amdAddWithRetry(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()
            return self.amdAddWithRetryAsync(
                x: iceP_x, y: iceP_y, current: request.current
            ).map(on: nil) { result in 
                request.current.makeOutgoingResponse(result, formatType:.DefaultFormat) { ostr, value in 
                    let iceP_returnValue = value
                    ostr.write(iceP_returnValue)
                }
            }
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_amdBadAdd(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()
            return self.amdBadAddAsync(
                x: iceP_x, y: iceP_y, current: request.current
            ).map(on: nil) { result in 
                request.current.makeOutgoingResponse(result, formatType:.DefaultFormat) { ostr, value in 
                    let iceP_returnValue = value
                    ostr.write(iceP_returnValue)
                }
            }
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_amdNotExistAdd(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_x: Swift.Int32 = try istr.read()
            let iceP_y: Swift.Int32 = try istr.read()
            return self.amdNotExistAddAsync(
                x: iceP_x, y: iceP_y, current: request.current
            ).map(on: nil) { result in 
                request.current.makeOutgoingResponse(result, formatType:.DefaultFormat) { ostr, value in 
                    let iceP_returnValue = value
                    ostr.write(iceP_returnValue)
                }
            }
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
