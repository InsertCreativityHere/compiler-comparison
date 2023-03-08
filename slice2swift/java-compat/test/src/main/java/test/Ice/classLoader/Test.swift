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

/// Traits for Slice class `ConcreteClass`.
public struct ConcreteClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::ConcreteClass"]
    public static let staticId = "::Test::ConcreteClass"
}

/// Traits for Slice class `AbstractClass`.
public struct AbstractClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::AbstractClass"]
    public static let staticId = "::Test::AbstractClass"
}

/// :nodoc:
public class E_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return E.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_E() -> Ice.UserExceptionTypeResolver {
        return E_TypeResolver()
    }
}

open class E: Ice.UserException {
    public required init() {}

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::E"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: E.ice_staticId(), compactId: -1, last: true)
        ostr.endSlice()
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }
}

/// Traits for Slice interface `Initial`.
public struct InitialTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::Initial"]
    public static let staticId = "::Test::Initial"
}

/// AbstractClassPrx overview.
///
/// AbstractClassPrx Methods:
///
///  - op: 
///
///  - opAsync: 
public protocol AbstractClassPrx: Ice.ObjectPrx {}

private final class AbstractClassPrxI: Ice.ObjectPrxI, AbstractClassPrx {
    public override class func ice_staticId() -> Swift.String {
        return AbstractClassTraits.staticId
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
/// - parameter type: `AbstractClassPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `AbstractClassPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: AbstractClassPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> AbstractClassPrx? {
    return try AbstractClassPrxI.checkedCast(prx: prx, facet: facet, context: context) as AbstractClassPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `AbstractClassPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `AbstractClassPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: AbstractClassPrx.Protocol, facet: Swift.String? = nil) -> AbstractClassPrx {
    return AbstractClassPrxI.uncheckedCast(prx: prx, facet: facet) as AbstractClassPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `AbstractClassPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: AbstractClassPrx.Protocol) -> Swift.String {
    return AbstractClassTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `AbstractClassPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `AbstractClassPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `AbstractClassPrx?` - The extracted proxy
    func read(_ type: AbstractClassPrx.Protocol) throws -> AbstractClassPrx? {
        return try read() as AbstractClassPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `AbstractClassPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `AbstractClassPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: AbstractClassPrx.Protocol) throws -> AbstractClassPrx? {
        return try read(tag: tag) as AbstractClassPrxI?
    }
}

/// AbstractClassPrx overview.
///
/// AbstractClassPrx Methods:
///
///  - op: 
///
///  - opAsync: 
public extension AbstractClassPrx {
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

/// InitialPrx overview.
///
/// InitialPrx Methods:
///
///  - getConcreteClass: 
///
///  - getConcreteClassAsync: 
///
///  - getAbstractClass: 
///
///  - getAbstractClassAsync: 
///
///  - throwException: 
///
///  - throwExceptionAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public protocol InitialPrx: Ice.ObjectPrx {}

private final class InitialPrxI: Ice.ObjectPrxI, InitialPrx {
    public override class func ice_staticId() -> Swift.String {
        return InitialTraits.staticId
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
/// - parameter type: `InitialPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `InitialPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: Ice.ObjectPrx, type: InitialPrx.Protocol, facet: Swift.String? = nil, context: Ice.Context? = nil) throws -> InitialPrx? {
    return try InitialPrxI.checkedCast(prx: prx, facet: facet, context: context) as InitialPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `InitialPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `InitialPrx` - A proxy with the requested type
public func uncheckedCast(prx: Ice.ObjectPrx, type: InitialPrx.Protocol, facet: Swift.String? = nil) -> InitialPrx {
    return InitialPrxI.uncheckedCast(prx: prx, facet: facet) as InitialPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `InitialPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: InitialPrx.Protocol) -> Swift.String {
    return InitialTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `InitialPrx`.
public extension Ice.InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `InitialPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `InitialPrx?` - The extracted proxy
    func read(_ type: InitialPrx.Protocol) throws -> InitialPrx? {
        return try read() as InitialPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `InitialPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `InitialPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: InitialPrx.Protocol) throws -> InitialPrx? {
        return try read(tag: tag) as InitialPrxI?
    }
}

/// InitialPrx overview.
///
/// InitialPrx Methods:
///
///  - getConcreteClass: 
///
///  - getConcreteClassAsync: 
///
///  - getAbstractClass: 
///
///  - getAbstractClassAsync: 
///
///  - throwException: 
///
///  - throwExceptionAsync: 
///
///  - shutdown: 
///
///  - shutdownAsync: 
public extension InitialPrx {
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `ConcreteClass?`
    func getConcreteClass(context: Ice.Context? = nil) throws -> ConcreteClass? {
        return try _impl._invoke(operation: "getConcreteClass",
                                 mode: .Normal,
                                 read: { istr in
                                     var iceP_returnValue: ConcreteClass?
                                     try istr.read(ConcreteClass.self) { iceP_returnValue = $0 }
                                     try istr.readPendingValues()
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
    /// - returns: `PromiseKit.Promise<ConcreteClass?>` - The result of the operation
    func getConcreteClassAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<ConcreteClass?> {
        return _impl._invokeAsync(operation: "getConcreteClass",
                                  mode: .Normal,
                                  read: { istr in
                                      var iceP_returnValue: ConcreteClass?
                                      try istr.read(ConcreteClass.self) { iceP_returnValue = $0 }
                                      try istr.readPendingValues()
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
    /// - returns: `AbstractClass?`
    func getAbstractClass(context: Ice.Context? = nil) throws -> AbstractClass? {
        return try _impl._invoke(operation: "getAbstractClass",
                                 mode: .Normal,
                                 read: { istr in
                                     var iceP_returnValue: AbstractClass?
                                     try istr.read(AbstractClass.self) { iceP_returnValue = $0 }
                                     try istr.readPendingValues()
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
    /// - returns: `PromiseKit.Promise<AbstractClass?>` - The result of the operation
    func getAbstractClassAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<AbstractClass?> {
        return _impl._invokeAsync(operation: "getAbstractClass",
                                  mode: .Normal,
                                  read: { istr in
                                      var iceP_returnValue: AbstractClass?
                                      try istr.read(AbstractClass.self) { iceP_returnValue = $0 }
                                      try istr.readPendingValues()
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    func throwException(context: Ice.Context? = nil) throws {
        try _impl._invoke(operation: "throwException",
                          mode: .Normal,
                          userException:{ ex in
                              do  {
                                  throw ex
                              } catch let error as E {
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
    func throwExceptionAsync(context: Ice.Context? = nil, sentOn: Dispatch.DispatchQueue? = nil, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<Swift.Void> {
        return _impl._invokeAsync(operation: "throwException",
                                  mode: .Normal,
                                  userException:{ ex in
                                      do  {
                                          throw ex
                                      } catch let error as E {
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

/// :nodoc:
public class ConcreteClass_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return ConcreteClass.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_ConcreteClass() -> Ice.ValueTypeResolver {
        return ConcreteClass_TypeResolver()
    }
}

open class ConcreteClass: Ice.Value {
    public var i: Swift.Int32 = 0

    public required init() {}

    public init(i: Swift.Int32) {
        self.i = i
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return ConcreteClassTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return ConcreteClassTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.i = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: ConcreteClassTraits.staticId, compactId: -1, last: true)
        ostr.write(self.i)
        ostr.endSlice()
    }
}

/// :nodoc:
public class AbstractClass_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return AbstractClass.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_AbstractClass() -> Ice.ValueTypeResolver {
        return AbstractClass_TypeResolver()
    }
}

open class AbstractClass: Ice.Value {
    public required init() {}

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return AbstractClassTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return AbstractClassTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: AbstractClassTraits.staticId, compactId: -1, last: true)
        ostr.endSlice()
    }
}


/// Dispatcher for `AbstractClassOperations` servants.
public struct AbstractClassDisp: Ice.Disp {
    public let servant: AbstractClassOperations
    private static let defaultObject = Ice.ObjectI<AbstractClassTraits>()

    public init(_ servant: AbstractClassOperations) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "ice_id":
            return try (servant as? Object ?? AbstractClassDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? AbstractClassDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? AbstractClassDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? AbstractClassDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "op":
            return try servant._iceD_op(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol AbstractClassOperations {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func op(current: Ice.Current) throws
}


/// Dispatcher for `Initial` servants.
public struct InitialDisp: Ice.Disp {
    public let servant: Initial
    private static let defaultObject = Ice.ObjectI<InitialTraits>()

    public init(_ servant: Initial) {
        self.servant = servant
    }

    public func dispatch(request: Ice.Request, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        request.startOver()
        switch current.operation {
        case "getAbstractClass":
            return try servant._iceD_getAbstractClass(incoming: request, current: current)
        case "getConcreteClass":
            return try servant._iceD_getConcreteClass(incoming: request, current: current)
        case "ice_id":
            return try (servant as? Object ?? InitialDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            return try (servant as? Object ?? InitialDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            return try (servant as? Object ?? InitialDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            return try (servant as? Object ?? InitialDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        case "shutdown":
            return try servant._iceD_shutdown(incoming: request, current: current)
        case "throwException":
            return try servant._iceD_throwException(incoming: request, current: current)
        default:
            throw Ice.OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

public protocol Initial {
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `ConcreteClass?`
    func getConcreteClass(current: Ice.Current) throws -> ConcreteClass?

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `AbstractClass?`
    func getAbstractClass(current: Ice.Current) throws -> AbstractClass?

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func throwException(current: Ice.Current) throws

    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    func shutdown(current: Ice.Current) throws
}

/// AbstractClass overview.
///
/// AbstractClass Methods:
///
///  - op: 
public extension AbstractClassOperations {
    func _iceD_op(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.op(current: current)

        return inS.setResult()
    }
}

/// Initial overview.
///
/// Initial Methods:
///
///  - getConcreteClass: 
///
///  - getAbstractClass: 
///
///  - throwException: 
///
///  - shutdown: 
public extension Initial {
    func _iceD_getConcreteClass(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getConcreteClass(current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
            ostr.writePendingValues()
        }
    }

    func _iceD_getAbstractClass(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getAbstractClass(current: current)

        return inS.setResult{ ostr in
            ostr.write(iceP_returnValue)
            ostr.writePendingValues()
        }
    }

    func _iceD_throwException(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.throwException(current: current)

        return inS.setResult()
    }

    func _iceD_shutdown(incoming inS: Ice.Incoming, current: Ice.Current) throws -> PromiseKit.Promise<Ice.OutputStream>? {
        try inS.readEmptyParams()

        try self.shutdown(current: current)

        return inS.setResult()
    }
}
