//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `DefaultServantTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice
import PromiseKit

/// Traits for Slice interface `MyObject`.
public struct MyObjectTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyObject"]
    public static let staticId = "::Test::MyObject"
}

/// MyObjectPrx overview.
///
/// MyObjectPrx Methods:
///
///  - getName: 
///
///  - getNameAsync: 
public protocol MyObjectPrx: Ice.ObjectPrx {}

private final class MyObjectPrxI: Ice.ObjectPrxI, MyObjectPrx {
    public override class func ice_staticId() -> Swift.String {
        return MyObjectTraits.staticId
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
///  - getName: 
///
///  - getNameAsync: 
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
}


/// Dispatcher for `MyObject` servants.
public struct MyObjectDisp: Ice.Disp {
    public let servant: MyObject
    private static let defaultObject = Ice.ObjectI<MyObjectTraits>()

    public init(_ servant: MyObject) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "getName":
            return try servant._iceD_getName(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? MyObjectDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? MyObjectDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? MyObjectDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? MyObjectDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol MyObject {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String`
    func getName(current: Ice.Current) throws -> Swift.String
}

/// MyObject overview.
///
/// MyObject Methods:
///
///  - getName: 
public extension MyObject {
    func _iceD_getName(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getName(current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
        }
    }
}
