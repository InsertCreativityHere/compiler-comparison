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

/// Traits for Slice interface`TestLocatorRegistry`.
public struct TestLocatorRegistryTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::LocatorRegistry", "::Ice::Object", "::Test::TestLocatorRegistry"]
    public static let staticId = "::Test::TestLocatorRegistry"
}

/// Traits for Slice interface`ServerManager`.
public struct ServerManagerTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::ServerManager"]
    public static let staticId = "::Test::ServerManager"
}

/// Traits for Slice interface`Hello`.
public struct HelloTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Hello"]
    public static let staticId = "::Test::Hello"
}

/// Traits for Slice interface`TestIntf`.
public struct TestIntfTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::TestIntf"]
    public static let staticId = "::Test::TestIntf"
}

/// TestLocatorRegistryPrx overview.
///
/// TestLocatorRegistryPrx Methods:
///
///  - addObject: 
///
///  - addObjectAsync: 
public protocol TestLocatorRegistryPrx: Ice.LocatorRegistryPrx {}

private final class TestLocatorRegistryPrxI: Ice.ObjectPrxI, TestLocatorRegistryPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestLocatorRegistryTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: TestLocatorRegistryPrx.Protocol) throws -> TestLocatorRegistryPrx {
    try communicator.makeProxyImpl(proxyString) as TestLocatorRegistryPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `TestLocatorRegistryPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `TestLocatorRegistryPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: TestLocatorRegistryPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> TestLocatorRegistryPrx? {
    return try TestLocatorRegistryPrxI.checkedCast(prx: prx, facet: facet, context: context) as TestLocatorRegistryPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `TestLocatorRegistryPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `TestLocatorRegistryPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: TestLocatorRegistryPrx.Protocol, facet: Swift.String? = nil) -> TestLocatorRegistryPrx {
    return TestLocatorRegistryPrxI.uncheckedCast(prx: prx, facet: facet) as TestLocatorRegistryPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `TestLocatorRegistryPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: TestLocatorRegistryPrx.Protocol) -> Swift.String {
    return TestLocatorRegistryTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `TestLocatorRegistryPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `TestLocatorRegistryPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestLocatorRegistryPrx?` - The extracted proxy
    func read(_ type: TestLocatorRegistryPrx.Protocol) throws -> TestLocatorRegistryPrx? {
        return try read() as TestLocatorRegistryPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `TestLocatorRegistryPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `TestLocatorRegistryPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: TestLocatorRegistryPrx.Protocol) throws -> TestLocatorRegistryPrx? {
        return try read(tag: tag) as TestLocatorRegistryPrxI?
    }
}

/// TestLocatorRegistryPrx overview.
///
/// TestLocatorRegistryPrx Methods:
///
///  - addObject: 
///
///  - addObjectAsync: 
public extension TestLocatorRegistryPrx {
    ///
    /// - parameter _: `Ice.ObjectPrx?`
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func addObject(_ iceP_obj: Ice.ObjectPrx?, context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "addObject",
                          mode: .Normal,
                          write: { ostr in
                              ostr.write(iceP_obj)
                          },
                          context: context)
    }

    ///
    /// - parameter _: `Ice.ObjectPrx?`
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
    func addObjectAsync(_ iceP_obj: Ice.ObjectPrx?, context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "addObject",
                                  mode: .Normal,
                                  write: { ostr in
                                      ostr.write(iceP_obj)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// ServerManagerPrx overview.
///
/// ServerManagerPrx Methods:
///
///  - startServer: 
///
///  - startServerAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol ServerManagerPrx: Ice.ObjectPrx {}

private final class ServerManagerPrxI: Ice.ObjectPrxI, ServerManagerPrx {
    public override class func ice_staticId() -> Swift.String {
        return ServerManagerTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: ServerManagerPrx.Protocol) throws -> ServerManagerPrx {
    try communicator.makeProxyImpl(proxyString) as ServerManagerPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `ServerManagerPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `ServerManagerPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: ServerManagerPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> ServerManagerPrx? {
    return try ServerManagerPrxI.checkedCast(prx: prx, facet: facet, context: context) as ServerManagerPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `ServerManagerPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `ServerManagerPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: ServerManagerPrx.Protocol, facet: Swift.String? = nil) -> ServerManagerPrx {
    return ServerManagerPrxI.uncheckedCast(prx: prx, facet: facet) as ServerManagerPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `ServerManagerPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: ServerManagerPrx.Protocol) -> Swift.String {
    return ServerManagerTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `ServerManagerPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `ServerManagerPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ServerManagerPrx?` - The extracted proxy
    func read(_ type: ServerManagerPrx.Protocol) throws -> ServerManagerPrx? {
        return try read() as ServerManagerPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `ServerManagerPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `ServerManagerPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: ServerManagerPrx.Protocol) throws -> ServerManagerPrx? {
        return try read(tag: tag) as ServerManagerPrxI?
    }
}

/// ServerManagerPrx overview.
///
/// ServerManagerPrx Methods:
///
///  - startServer: 
///
///  - startServerAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension ServerManagerPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func startServer(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "startServer",
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
    func startServerAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "startServer",
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
}

/// HelloPrx overview.
///
/// HelloPrx Methods:
///
///  - sayHello: 
///
///  - sayHelloAsync: 
public protocol HelloPrx: Ice.ObjectPrx {}

private final class HelloPrxI: Ice.ObjectPrxI, HelloPrx {
    public override class func ice_staticId() -> Swift.String {
        return HelloTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: HelloPrx.Protocol) throws -> HelloPrx {
    try communicator.makeProxyImpl(proxyString) as HelloPrxI
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `HelloPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `HelloPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: HelloPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> HelloPrx? {
    return try HelloPrxI.checkedCast(prx: prx, facet: facet, context: context) as HelloPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `HelloPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `HelloPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: HelloPrx.Protocol, facet: Swift.String? = nil) -> HelloPrx {
    return HelloPrxI.uncheckedCast(prx: prx, facet: facet) as HelloPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `HelloPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: HelloPrx.Protocol) -> Swift.String {
    return HelloTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `HelloPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `HelloPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `HelloPrx?` - The extracted proxy
    func read(_ type: HelloPrx.Protocol) throws -> HelloPrx? {
        return try read() as HelloPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `HelloPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `HelloPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: HelloPrx.Protocol) throws -> HelloPrx? {
        return try read(tag: tag) as HelloPrxI?
    }
}

/// HelloPrx overview.
///
/// HelloPrx Methods:
///
///  - sayHello: 
///
///  - sayHelloAsync: 
public extension HelloPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func sayHello(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "sayHello",
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
    func sayHelloAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "sayHello",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// TestIntfPrx overview.
///
/// TestIntfPrx Methods:
///
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - getHello: 
///
///  - getHelloAsync: 
///
///  - migrateHello: 
///
///  - migrateHelloAsync: 
public protocol TestIntfPrx: Ice.ObjectPrx {}

private final class TestIntfPrxI: Ice.ObjectPrxI, TestIntfPrx {
    public override class func ice_staticId() -> Swift.String {
        return TestIntfTraits.staticId
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
public func makeProxy(communicator: Ice.Communicator, proxyString: String, type: TestIntfPrx.Protocol) throws -> TestIntfPrx {
    try communicator.makeProxyImpl(proxyString) as TestIntfPrxI
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
///  - shutdown: 
///
///  - shutdownAsync: 
///
///  - getHello: 
///
///  - getHelloAsync: 
///
///  - migrateHello: 
///
///  - migrateHelloAsync: 
public extension TestIntfPrx {
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
    /// - returns: `HelloPrx?`
    func getHello(context: Ice.Context? = nil) throws -> HelloPrx? {
        return try _impl._invoke(operation: "getHello",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: HelloPrx? = try istr.read(HelloPrx.self)
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
    /// - returns: `PromiseKit.Promise<HelloPrx?>` - The result of the operation
    func getHelloAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<HelloPrx?> {
        return _impl._invokeAsync(operation: "getHello",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: HelloPrx? = try istr.read(HelloPrx.self)
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func migrateHello(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "migrateHello",
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
    func migrateHelloAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "migrateHello",
                                  mode: .Normal,
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `TestLocatorRegistry` servants.
public struct TestLocatorRegistryDisp: Ice.Dispatcher {
    public let servant: TestLocatorRegistry
    private static let defaultObject = Ice.ObjectI<TestLocatorRegistryTraits>()

    public init(_ servant: TestLocatorRegistry) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "addObject":
            servant._iceD_addObject(request)
        case "ice_id":
            (servant as? Ice.Object ?? TestLocatorRegistryDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? TestLocatorRegistryDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? TestLocatorRegistryDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? TestLocatorRegistryDisp.defaultObject)._iceD_ice_ping(request)
        case "setAdapterDirectProxy":
            servant._iceD_setAdapterDirectProxy(request)
        case "setReplicatedAdapterDirectProxy":
            servant._iceD_setReplicatedAdapterDirectProxy(request)
        case "setServerProcessProxy":
            servant._iceD_setServerProcessProxy(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol TestLocatorRegistry: Ice.LocatorRegistry {
    ///
    /// - parameter obj: `Ice.ObjectPrx?`
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func addObject(obj: Ice.ObjectPrx?, current: Ice.Current) throws
}


/// Dispatcher for `ServerManager` servants.
public struct ServerManagerDisp: Ice.Dispatcher {
    public let servant: ServerManager
    private static let defaultObject = Ice.ObjectI<ServerManagerTraits>()

    public init(_ servant: ServerManager) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "ice_id":
            (servant as? Ice.Object ?? ServerManagerDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? ServerManagerDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? ServerManagerDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? ServerManagerDisp.defaultObject)._iceD_ice_ping(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        case "startServer":
            servant._iceD_startServer(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol ServerManager {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func startServer(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}


/// Dispatcher for `Hello` servants.
public struct HelloDisp: Ice.Dispatcher {
    public let servant: Hello
    private static let defaultObject = Ice.ObjectI<HelloTraits>()

    public init(_ servant: Hello) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "ice_id":
            (servant as? Ice.Object ?? HelloDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? HelloDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? HelloDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? HelloDisp.defaultObject)._iceD_ice_ping(request)
        case "sayHello":
            servant._iceD_sayHello(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol Hello {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func sayHello(current: Ice.Current) throws
}


/// Dispatcher for `TestIntf` servants.
public struct TestIntfDisp: Ice.Dispatcher {
    public let servant: TestIntf
    private static let defaultObject = Ice.ObjectI<TestIntfTraits>()

    public init(_ servant: TestIntf) {
        self.servant = servant
    }

    public func dispatch(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        switch request.current.operation {
        case "getHello":
            servant._iceD_getHello(request)
        case "ice_id":
            (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_id(request)
        case "ice_ids":
            (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ids(request)
        case "ice_isA":
            (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_isA(request)
        case "ice_ping":
            (servant as? Ice.Object ?? TestIntfDisp.defaultObject)._iceD_ice_ping(request)
        case "migrateHello":
            servant._iceD_migrateHello(request)
        case "shutdown":
            servant._iceD_shutdown(request)
        default:
            PromiseKit.Promise(error: Ice.OperationNotExistException())
        }
    }
}

public protocol TestIntf {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `HelloPrx?`
    func getHello(current: Ice.Current) throws -> HelloPrx?

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func migrateHello(current: Ice.Current) throws
}

/// TestLocatorRegistry overview.
///
/// TestLocatorRegistry Methods:
///
///  - addObject: 
extension TestLocatorRegistry {
    public func _iceD_addObject(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            let istr = request.inputStream
            _ = try istr.startEncapsulation()
            let iceP_obj: Ice.ObjectPrx? = try istr.read(Ice.ObjectPrx.self)

            try self.addObject(obj: iceP_obj, current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}

/// ServerManager overview.
///
/// ServerManager Methods:
///
///  - startServer: 
///
///  - shutdown: 
extension ServerManager {
    public func _iceD_startServer(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.startServer(current: request.current)
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

/// Hello overview.
///
/// Hello Methods:
///
///  - sayHello: 
extension Hello {
    public func _iceD_sayHello(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.sayHello(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}

/// TestIntf overview.
///
/// TestIntf Methods:
///
///  - shutdown: 
///
///  - getHello: 
///
///  - migrateHello: 
extension TestIntf {
    public func _iceD_shutdown(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.shutdown(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_getHello(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            let iceP_returnValue = try self.getHello(current: request.current)
            let ostr = request.current.startReplyStream()
            ostr.startEncapsulation(encoding: request.current.encoding, format: .DefaultFormat)
            ostr.write(iceP_returnValue)
            ostr.endEncapsulation()
            return PromiseKit.Promise.value(Ice.OutgoingResponse(ostr))
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }

    public func _iceD_migrateHello(_ request: Ice.IncomingRequest) -> PromiseKit.Promise<Ice.OutgoingResponse> {
        do {
            _ = try request.inputStream.skipEmptyEncapsulation()

            try self.migrateHello(current: request.current)
            return PromiseKit.Promise.value(request.current.makeEmptyOutgoingResponse())
        } catch {
            return PromiseKit.Promise(error: error)
        }
    }
}
