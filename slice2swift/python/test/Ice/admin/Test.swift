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

/// Traits for Slice interface`RemoteCommunicator`.
public struct RemoteCommunicatorTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::RemoteCommunicator"]
    public static let staticId = "::Test::RemoteCommunicator"
}

/// Traits for Slice interface`RemoteCommunicatorFactory`.
public struct RemoteCommunicatorFactoryTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::RemoteCommunicatorFactory"]
    public static let staticId = "::Test::RemoteCommunicatorFactory"
}

/// Traits for Slice interface`TestFacet`.
public struct TestFacetTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestFacet"]
    public static let staticId = "::Test::TestFacet"
}

/// RemoteCommunicatorPrx overview.
///
/// RemoteCommunicatorPrx Methods:
///
///  - getAdmin: 
///
///  - getAdminAsync: 
///
///  - getChanges: 
///
///  - getChangesAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - waitForShutdown: 
///
///  - waitForShutdownAsync: 
///
///  - destroy: 
///
///  - destroyAsync: 
public protocol RemoteCommunicatorPrx: Ice.ObjectPrx {}

private final class RemoteCommunicatorPrxI: Ice.ObjectPrxI, RemoteCommunicatorPrx {
    public override class func ice_staticId() -> Swift.String {
        return RemoteCommunicatorTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: RemoteCommunicatorPrx.Protocol) throws -> RemoteCommunicatorPrx {
    try communicator.makeProxyImpl(proxyString) as RemoteCommunicatorPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `RemoteCommunicatorPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `RemoteCommunicatorPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: RemoteCommunicatorPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> RemoteCommunicatorPrx? {
    return try RemoteCommunicatorPrxI.checkedCast(prx: prx, facet: facet, context: context) as RemoteCommunicatorPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `RemoteCommunicatorPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `RemoteCommunicatorPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: RemoteCommunicatorPrx.Protocol, facet: Swift.String? = nil) -> RemoteCommunicatorPrx {
    return RemoteCommunicatorPrxI.uncheckedCast(prx: prx, facet: facet) as RemoteCommunicatorPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `RemoteCommunicatorPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: RemoteCommunicatorPrx.Protocol) -> Swift.String {
    return RemoteCommunicatorTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `RemoteCommunicatorPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `RemoteCommunicatorPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RemoteCommunicatorPrx?` - The extracted proxy
    func read(_ type: RemoteCommunicatorPrx.Protocol) throws -> RemoteCommunicatorPrx? {
        return try read() as RemoteCommunicatorPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `RemoteCommunicatorPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RemoteCommunicatorPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: RemoteCommunicatorPrx.Protocol) throws -> RemoteCommunicatorPrx? {
        return try read(tag: tag) as RemoteCommunicatorPrxI?
    }
}

/// RemoteCommunicatorPrx overview.
///
/// RemoteCommunicatorPrx Methods:
///
///  - getAdmin: 
///
///  - getAdminAsync: 
///
///  - getChanges: 
///
///  - getChangesAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - waitForShutdown: 
///
///  - waitForShutdownAsync: 
///
///  - destroy: 
///
///  - destroyAsync: 
public extension RemoteCommunicatorPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `Ice.ObjectPrx?`
    func getAdmin(context: Ice.Context? = nil) throws -> Ice.ObjectPrx? {
        return try _impl._invoke(operation: "getAdmin",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: Ice.ObjectPrx? = try istr.read(Ice.ObjectPrx.self)
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
    /// - returns: `PromiseKit.Promise<Ice.ObjectPrx?>` - The result of the operation
    func getAdminAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Ice.ObjectPrx?> {
        return _impl._invokeAsync(operation: "getAdmin",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: Ice.ObjectPrx? = try istr.read(Ice.ObjectPrx.self)
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
    /// - returns: `Ice.PropertyDict`
    func getChanges(context: Ice.Context? = nil) throws -> Ice.PropertyDict {
        return try _impl._invoke(operation: "getChanges",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: Ice.PropertyDict = try Ice.PropertyDictHelper.read(from: istr)
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
    /// - returns: `PromiseKit.Promise<Ice.PropertyDict>` - The result of the operation
    func getChangesAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Ice.PropertyDict> {
        return _impl._invokeAsync(operation: "getChanges",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: Ice.PropertyDict = try Ice.PropertyDictHelper.read(from: istr)
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

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func waitForShutdown(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "waitForShutdown",
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
    func waitForShutdownAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "waitForShutdown",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func destroy(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "destroy",
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
    func destroyAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "destroy",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// RemoteCommunicatorFactoryPrx overview.
///
/// RemoteCommunicatorFactoryPrx Methods:
///
///  - createCommunicator: 
///
///  - createCommunicatorAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol RemoteCommunicatorFactoryPrx: Ice.ObjectPrx {}

private final class RemoteCommunicatorFactoryPrxI: Ice.ObjectPrxI, RemoteCommunicatorFactoryPrx {
    public override class func ice_staticId() -> Swift.String {
        return RemoteCommunicatorFactoryTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: RemoteCommunicatorFactoryPrx.Protocol) throws -> RemoteCommunicatorFactoryPrx {
    try communicator.makeProxyImpl(proxyString) as RemoteCommunicatorFactoryPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `RemoteCommunicatorFactoryPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `RemoteCommunicatorFactoryPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: RemoteCommunicatorFactoryPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> RemoteCommunicatorFactoryPrx? {
    return try RemoteCommunicatorFactoryPrxI.checkedCast(prx: prx, facet: facet, context: context) as RemoteCommunicatorFactoryPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `RemoteCommunicatorFactoryPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `RemoteCommunicatorFactoryPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: RemoteCommunicatorFactoryPrx.Protocol, facet: Swift.String? = nil) -> RemoteCommunicatorFactoryPrx {
    return RemoteCommunicatorFactoryPrxI.uncheckedCast(prx: prx, facet: facet) as RemoteCommunicatorFactoryPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `RemoteCommunicatorFactoryPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: RemoteCommunicatorFactoryPrx.Protocol) -> Swift.String {
    return RemoteCommunicatorFactoryTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `RemoteCommunicatorFactoryPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `RemoteCommunicatorFactoryPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RemoteCommunicatorFactoryPrx?` - The extracted proxy
    func read(_ type: RemoteCommunicatorFactoryPrx.Protocol) throws -> RemoteCommunicatorFactoryPrx? {
        return try read() as RemoteCommunicatorFactoryPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `RemoteCommunicatorFactoryPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RemoteCommunicatorFactoryPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: RemoteCommunicatorFactoryPrx.Protocol) throws -> RemoteCommunicatorFactoryPrx? {
        return try read(tag: tag) as RemoteCommunicatorFactoryPrxI?
    }
}

/// RemoteCommunicatorFactoryPrx overview.
///
/// RemoteCommunicatorFactoryPrx Methods:
///
///  - createCommunicator: 
///
///  - createCommunicatorAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension RemoteCommunicatorFactoryPrx {
    ///
    /// - parameter _: `Ice.PropertyDict`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `RemoteCommunicatorPrx?`
    func createCommunicator(_ iceP_props: Ice.PropertyDict, context: Ice.Context? = nil) throws -> RemoteCommunicatorPrx? {
        return try _impl._invoke(operation: "createCommunicator",
                                 mode: .Normal,
                                 write: { ostr in
                                     Ice.PropertyDictHelper.write(to: ostr, value: iceP_props)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: RemoteCommunicatorPrx? = try istr.read(RemoteCommunicatorPrx.self)
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    ///
    /// - parameter _: `Ice.PropertyDict`
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
    /// - returns: `PromiseKit.Promise<RemoteCommunicatorPrx?>` - The result of the operation
    func createCommunicatorAsync(_ iceP_props: Ice.PropertyDict, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<RemoteCommunicatorPrx?> {
        return _impl._invokeAsync(operation: "createCommunicator",
                                  mode: .Normal,
                                  write: { ostr in
                                      Ice.PropertyDictHelper.write(to: ostr, value: iceP_props)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: RemoteCommunicatorPrx? = try istr.read(RemoteCommunicatorPrx.self)
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

/// TestFacetPrx overview.
///
/// TestFacetPrx Methods:
///
///  - op: 
///
///  - opAsync: 
public protocol TestFacetPrx: Ice.ObjectPrx {}

private final class TestFacetPrxI: Ice.ObjectPrxI, TestFacetPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestFacetTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: TestFacetPrx.Protocol) throws -> TestFacetPrx {
    try communicator.makeProxyImpl(proxyString) as TestFacetPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `TestFacetPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `TestFacetPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: TestFacetPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> TestFacetPrx? {
    return try TestFacetPrxI.checkedCast(prx: prx, facet: facet, context: context) as TestFacetPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `TestFacetPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `TestFacetPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: TestFacetPrx.Protocol, facet: Swift.String? = nil) -> TestFacetPrx {
    return TestFacetPrxI.uncheckedCast(prx: prx, facet: facet) as TestFacetPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `TestFacetPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: TestFacetPrx.Protocol) -> Swift.String {
    return TestFacetTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `TestFacetPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `TestFacetPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestFacetPrx?` - The extracted proxy
    func read(_ type: TestFacetPrx.Protocol) throws -> TestFacetPrx? {
        return try read() as TestFacetPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `TestFacetPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestFacetPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: TestFacetPrx.Protocol) throws -> TestFacetPrx? {
        return try read(tag: tag) as TestFacetPrxI?
    }
}

/// TestFacetPrx overview.
///
/// TestFacetPrx Methods:
///
///  - op: 
///
///  - opAsync: 
public extension TestFacetPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func op(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "op",
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
    func opAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "op",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `RemoteCommunicator` servants.
public struct RemoteCommunicatorDisp: Ice.Dispatcher {
    public let servant: RemoteCommunicator
    private static let defaultObject = Ice.ObjectI<RemoteCommunicatorTraits>()

    public init(_ servant: RemoteCommunicator) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "destroy":
            servant._iceD_destroy(request)
        case "getAdmin":
            servant._iceD_getAdmin(request)
        case "getChanges":
            servant._iceD_getChanges(request)
        case "ice_id":
            (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? RemoteCommunicatorDisp.defaultObject)._iceD_ice_ping(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        case "waitForShutdown":
            servant._iceD_waitForShutdown(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol RemoteCommunicator {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Ice.ObjectPrx?`
    func getAdmin(current: Ice.Current) throws -> Ice.ObjectPrx?

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `Ice.PropertyDict`
    func getChanges(current: Ice.Current) throws -> Ice.PropertyDict

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func waitForShutdown(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func destroy(current: Ice.Current) throws
}


/// Dispatcher for `RemoteCommunicatorFactory` servants.
public struct RemoteCommunicatorFactoryDisp: Ice.Dispatcher {
    public let servant: RemoteCommunicatorFactory
    private static let defaultObject = Ice.ObjectI<RemoteCommunicatorFactoryTraits>()

    public init(_ servant: RemoteCommunicatorFactory) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "createCommunicator":
            servant._iceD_createCommunicator(request)
        case "ice_id":
            (servant as? Ice.Object ?? RemoteCommunicatorFactoryDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? RemoteCommunicatorFactoryDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? RemoteCommunicatorFactoryDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? RemoteCommunicatorFactoryDisp.defaultObject)._iceD_ice_ping(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol RemoteCommunicatorFactory {
    ///
    /// - parameter props: `Ice.PropertyDict`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `RemoteCommunicatorPrx?`
    func createCommunicator(props: Ice.PropertyDict, current: Ice.Current) throws -> RemoteCommunicatorPrx?

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}


/// Dispatcher for `TestFacet` servants.
public struct TestFacetDisp: Ice.Dispatcher {
    public let servant: TestFacet
    private static let defaultObject = Ice.ObjectI<TestFacetTraits>()

    public init(_ servant: TestFacet) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "ice_id":
            (servant as? Ice.Object ?? TestFacetDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? TestFacetDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? TestFacetDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? TestFacetDisp.defaultObject)._iceD_ice_ping(request)
        case "op":
            servant._iceD_op(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol TestFacet {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func op(current: Ice.Current) throws
}

/// RemoteCommunicator overview.
///
/// RemoteCommunicator Methods:
///
///  - getAdmin: 
///
///  - getChanges: 
///
///  - shutdown: 
///
///  - waitForShutdown: 
///
///  - destroy: 
extension RemoteCommunicator {
    public func _iceD_getAdmin(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            let iceP_returnValue = try self.getAdmin(current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_getChanges(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            let iceP_returnValue = try self.getChanges(current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            Ice.PropertyDictHelper.write(to: ostr, value: iceP_returnValue)
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

    public func _iceD_waitForShutdown(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.waitForShutdown(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_destroy(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.destroy(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}

/// RemoteCommunicatorFactory overview.
///
/// RemoteCommunicatorFactory Methods:
///
///  - createCommunicator: 
///
///  - shutdown: 
extension RemoteCommunicatorFactory {
    public func _iceD_createCommunicator(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_props: Ice.PropertyDict = try Ice.PropertyDictHelper.read(from: istr)

            let iceP_returnValue = try self.createCommunicator(props: iceP_props, current: request.current)
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

/// TestFacet overview.
///
/// TestFacet Methods:
///
///  - op: 
extension TestFacet {
    public func _iceD_op(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.op(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
