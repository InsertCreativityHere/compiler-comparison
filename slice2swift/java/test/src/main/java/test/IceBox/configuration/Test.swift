//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
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

/// Traits for Slice interface `TestIntf`.
public struct TestIntfTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestIntf"]
    public static let staticId = "::Test::TestIntf"
}

/// TestIntfPrx overview.
///
/// TestIntfPrx Methods:
///
///  - getProperty: 
///
///  - getPropertyAsync: 
///
///  - getArgs: 
///
///  - getArgsAsync: 
public protocol TestIntfPrx: Ice.ObjectPrx {}

private final class TestIntfPrxI: Ice.ObjectPrxI, TestIntfPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestIntfTraits.staticId
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
/// - parameter type: `TestIntfPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `TestIntfPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: TestIntfPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> TestIntfPrx? {
    return try TestIntfPrxI.checkedCast(prx: prx, facet: facet, context: context) as TestIntfPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `TestIntfPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `TestIntfPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: TestIntfPrx.Protocol, facet: Swift.String? = nil) -> TestIntfPrx {
    return TestIntfPrxI.uncheckedCast(prx: prx, facet: facet) as TestIntfPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `TestIntfPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: TestIntfPrx.Protocol) -> Swift.String {
    return TestIntfTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `TestIntfPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `TestIntfPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestIntfPrx?` - The extracted proxy
    func read(_ type: TestIntfPrx.Protocol) throws -> TestIntfPrx? {
        return try read() as TestIntfPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `TestIntfPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestIntfPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: TestIntfPrx.Protocol) throws -> TestIntfPrx? {
        return try read(tag: tag) as TestIntfPrxI?
    }
}

/// TestIntfPrx overview.
///
/// TestIntfPrx Methods:
///
///  - getProperty: 
///
///  - getPropertyAsync: 
///
///  - getArgs: 
///
///  - getArgsAsync: 
public extension TestIntfPrx {
    ///
    /// - parameter _: `Swift.String`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Swift.String`
    func getProperty(_ iceP_name: Swift.String, context: Ice.Context? = nil) throws -> Swift.String {
        return try _impl._invoke(operation: "getProperty",
                                 mode: .Normal,
                                 write: { ostr in
                                     ostr.write(iceP_name)
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
    func getPropertyAsync(_ iceP_name: Swift.String, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.String> {
        return _impl._invokeAsync(operation: "getProperty",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_name)
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
    ///
    /// - returns: `Ice.StringSeq`
    func getArgs(context: Ice.Context? = nil) throws -> Ice.StringSeq {
        return try _impl._invoke(operation: "getArgs",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: Ice.StringSeq = try istr.read()
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
    /// - returns: `PromiseKit.Promise<Ice.StringSeq>` - The result of the operation
    func getArgsAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Ice.StringSeq> {
        return _impl._invokeAsync(operation: "getArgs",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: Ice.StringSeq = try istr.read()
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `TestIntf` servants.
public struct TestIntfDisp: Ice.Disp {
    public let servant: TestIntf
    private static let defaultObject = Ice.ObjectI<TestIntfTraits>()

    public init(_ servant: TestIntf) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "getArgs":
            return try servant._iceD_getArgs(incoming: request, current: current)
        case "getProperty":
            return try servant._iceD_getProperty(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? TestIntfDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol TestIntf {
    ///
    /// - parameter name: `Swift.String`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Swift.String`
    func getProperty(name: Swift.String, current: Ice.Current) throws -> Swift.String

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Ice.StringSeq`
    func getArgs(current: Ice.Current) throws -> Ice.StringSeq
}

/// TestIntf overview.
///
/// TestIntf Methods:
///
///  - getProperty: 
///
///  - getArgs: 
public extension TestIntf {
    func _iceD_getProperty(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        let iceP_name: Swift.String = try inS.read { istr in
            let iceP_name: Swift.String = try istr.read()
            return iceP_name
        }

        let iceP_returnValue = try self.getProperty(name: iceP_name, current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_getArgs(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getArgs(current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
        }
    }
}
