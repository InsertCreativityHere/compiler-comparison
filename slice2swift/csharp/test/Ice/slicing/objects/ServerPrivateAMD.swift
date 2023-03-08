//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `ServerPrivateAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// Traits for Slice class `SBSUnknownDerived`.
public struct SBSUnknownDerivedTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::SBSUnknownDerived", "::Test::SBase"]
    public static let staticId = "::Test::SBSUnknownDerived"
}

/// Traits for Slice class `SUnknown`.
public struct SUnknownTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::SUnknown"]
    public static let staticId = "::Test::SUnknown"
}

/// Traits for Slice class `D2`.
public struct D2Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::B", "::Test::D2"]
    public static let staticId = "::Test::D2"
}

/// Traits for Slice class `D4`.
public struct D4Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::B", "::Test::D4"]
    public static let staticId = "::Test::D4"
}

/// :nodoc:
public class UnknownDerivedException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return UnknownDerivedException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_UnknownDerivedException() -> Ice.UserExceptionTypeResolver {
        return UnknownDerivedException_TypeResolver()
    }
}

open class UnknownDerivedException: BaseException {
    public var sude: Swift.String = ""
    public var pd2: D2? = nil

    public required init() {
        super.init()
    }

    public init(sbe: Swift.String, pb: B?, sude: Swift.String, pd2: D2?) {
        self.sude = sude
        self.pd2 = pd2
        super.init(sbe: sbe, pb: pb)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::UnknownDerivedException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: UnknownDerivedException.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.sude)
        ostr.write(self.pd2)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.sude = try istr.read()
        try istr.read(D2.self) { self.pd2 = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// Traits for Slice class `MyClass`.
public struct MyClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::MyClass"]
    public static let staticId = "::Test::MyClass"
}

/// Traits for Slice class `PSUnknown`.
public struct PSUnknownTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::PBase", "::Test::PSUnknown", "::Test::Preserved"]
    public static let staticId = "::Test::PSUnknown"
}

/// Traits for Slice class `PSUnknown2`.
public struct PSUnknown2Traits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::PBase", "::Test::PSUnknown2", "::Test::Preserved"]
    public static let staticId = "::Test::PSUnknown2"
}

/// :nodoc:
public class PSUnknownException_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return PSUnknownException.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_PSUnknownException() -> Ice.UserExceptionTypeResolver {
        return PSUnknownException_TypeResolver()
    }
}

open class PSUnknownException: PreservedException {
    public var p: PSUnknown2? = nil

    public required init() {
        super.init()
    }

    public init(p: PSUnknown2?) {
        self.p = p
        super.init()
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::PSUnknownException"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: PSUnknownException.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.p)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.read(PSUnknown2.self) { self.p = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _usesClasses() -> Swift.Bool {
        return true
    }
}

/// :nodoc:
public class SBSUnknownDerived_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return SBSUnknownDerived.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_SBSUnknownDerived() -> Ice.ValueTypeResolver {
        return SBSUnknownDerived_TypeResolver()
    }
}

open class SBSUnknownDerived: SBase {
    public var sbsud: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(sb: Swift.String, sbsud: Swift.String) {
        self.sbsud = sbsud
        super.init(sb: sb)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return SBSUnknownDerivedTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return SBSUnknownDerivedTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.sbsud = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: SBSUnknownDerivedTraits.staticId, compactId: -1, last: false)
        ostr.write(self.sbsud)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}

/// :nodoc:
public class SUnknown_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return SUnknown.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_SUnknown() -> Ice.ValueTypeResolver {
        return SUnknown_TypeResolver()
    }
}

open class SUnknown: Ice.Value {
    public var su: Swift.String = ""
    public var cycle: SUnknown? = nil

    public required init() {}

    public init(su: Swift.String, cycle: SUnknown?) {
        self.su = su
        self.cycle = cycle
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return SUnknownTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return SUnknownTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.su = try istr.read()
        try istr.read(SUnknown.self) { self.cycle = $0 }
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: SUnknownTraits.staticId, compactId: -1, last: true)
        ostr.write(self.su)
        ostr.write(self.cycle)
        ostr.endSlice()
    }
}

/// :nodoc:
public class D2_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return D2.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_D2() -> Ice.ValueTypeResolver {
        return D2_TypeResolver()
    }
}

open class D2: B {
    public var sd2: Swift.String = ""
    public var pd2: B? = nil

    public required init() {
        super.init()
    }

    public init(sb: Swift.String, pb: B?, sd2: Swift.String, pd2: B?) {
        self.sd2 = sd2
        self.pd2 = pd2
        super.init(sb: sb, pb: pb)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return D2Traits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return D2Traits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.sd2 = try istr.read()
        try istr.read(B.self) { self.pd2 = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: D2Traits.staticId, compactId: -1, last: false)
        ostr.write(self.sd2)
        ostr.write(self.pd2)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}

/// :nodoc:
public class D4_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return D4.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_D4() -> Ice.ValueTypeResolver {
        return D4_TypeResolver()
    }
}

open class D4: B {
    public var p1: B? = nil
    public var p2: B? = nil

    public required init() {
        super.init()
    }

    public init(sb: Swift.String, pb: B?, p1: B?, p2: B?) {
        self.p1 = p1
        self.p2 = p2
        super.init(sb: sb, pb: pb)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return D4Traits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return D4Traits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.read(B.self) { self.p1 = $0 }
        try istr.read(B.self) { self.p2 = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: D4Traits.staticId, compactId: -1, last: false)
        ostr.write(self.p1)
        ostr.write(self.p2)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}

/// :nodoc:
public class MyClass_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return MyClass.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_MyClass() -> Ice.ValueTypeResolver {
        return MyClass_TypeResolver()
    }
}

open class MyClass: Ice.Value {
    public var i: Swift.Int32 = 0

    public required init() {}

    public init(i: Swift.Int32) {
        self.i = i
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return MyClassTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return MyClassTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.i = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: MyClassTraits.staticId, compactId: -1, last: true)
        ostr.write(self.i)
        ostr.endSlice()
    }
}

/// :nodoc:
public class PSUnknown_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return PSUnknown.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_PSUnknown() -> Ice.ValueTypeResolver {
        return PSUnknown_TypeResolver()
    }
}

open class PSUnknown: Preserved {
    public var psu: Swift.String = ""
    public var graph: PNode? = nil
    public var cl: MyClass? = nil

    public required init() {
        super.init()
    }

    public init(pi: Swift.Int32, ps: Swift.String, psu: Swift.String, graph: PNode?, cl: MyClass?) {
        self.psu = psu
        self.graph = graph
        self.cl = cl
        super.init(pi: pi, ps: ps)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return PSUnknownTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return PSUnknownTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.psu = try istr.read()
        try istr.read(PNode.self) { self.graph = $0 }
        try istr.read(MyClass.self) { self.cl = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: PSUnknownTraits.staticId, compactId: -1, last: false)
        ostr.write(self.psu)
        ostr.write(self.graph)
        ostr.write(self.cl)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}

/// :nodoc:
public class PSUnknown2_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return PSUnknown2.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_PSUnknown2() -> Ice.ValueTypeResolver {
        return PSUnknown2_TypeResolver()
    }
}

open class PSUnknown2: Preserved {
    public var pb: PBase? = nil

    public required init() {
        super.init()
    }

    public init(pi: Swift.Int32, ps: Swift.String, pb: PBase?) {
        self.pb = pb
        super.init(pi: pi, ps: ps)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return PSUnknown2Traits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return PSUnknown2Traits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.read(PBase.self) { self.pb = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: PSUnknown2Traits.staticId, compactId: -1, last: false)
        ostr.write(self.pb)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}
