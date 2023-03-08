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

/// :nodoc:
public class UnknownDerived_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return UnknownDerived.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_UnknownDerived() -> Ice.UserExceptionTypeResolver {
        return UnknownDerived_TypeResolver()
    }
}

open class UnknownDerived: Base {
    public var ud: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(b: Swift.String, ud: Swift.String) {
        self.ud = ud
        super.init(b: b)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::UnknownDerived"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: UnknownDerived.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.ud)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.ud = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// :nodoc:
public class UnknownIntermediate_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return UnknownIntermediate.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_UnknownIntermediate() -> Ice.UserExceptionTypeResolver {
        return UnknownIntermediate_TypeResolver()
    }
}

open class UnknownIntermediate: Base {
    public var ui: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(b: Swift.String, ui: Swift.String) {
        self.ui = ui
        super.init(b: b)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::UnknownIntermediate"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: UnknownIntermediate.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.ui)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.ui = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// :nodoc:
public class UnknownMostDerived1_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return UnknownMostDerived1.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_UnknownMostDerived1() -> Ice.UserExceptionTypeResolver {
        return UnknownMostDerived1_TypeResolver()
    }
}

open class UnknownMostDerived1: KnownIntermediate {
    public var umd1: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(b: Swift.String, ki: Swift.String, umd1: Swift.String) {
        self.umd1 = umd1
        super.init(b: b, ki: ki)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::UnknownMostDerived1"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: UnknownMostDerived1.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.umd1)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.umd1 = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// :nodoc:
public class UnknownMostDerived2_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return UnknownMostDerived2.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_UnknownMostDerived2() -> Ice.UserExceptionTypeResolver {
        return UnknownMostDerived2_TypeResolver()
    }
}

open class UnknownMostDerived2: UnknownIntermediate {
    public var umd2: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(b: Swift.String, ui: Swift.String, umd2: Swift.String) {
        self.umd2 = umd2
        super.init(b: b, ui: ui)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::UnknownMostDerived2"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: UnknownMostDerived2.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.umd2)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.umd2 = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// Traits for Slice class `SPreservedClass`.
public struct SPreservedClassTraits: Ice.SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Test::BaseClass", "::Test::SPreservedClass"]
    public static let staticId = "::Test::SPreservedClass"
}

/// :nodoc:
public class SPreserved1_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return SPreserved1.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_SPreserved1() -> Ice.UserExceptionTypeResolver {
        return SPreserved1_TypeResolver()
    }
}

open class SPreserved1: KnownPreservedDerived {
    public var p1: BaseClass? = nil

    public required init() {
        super.init()
    }

    public init(b: Swift.String, kp: Swift.String, kpd: Swift.String, p1: BaseClass?) {
        self.p1 = p1
        super.init(b: b, kp: kp, kpd: kpd)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::SPreserved1"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: SPreserved1.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.p1)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.read(BaseClass.self) { self.p1 = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _usesClasses() -> Swift.Bool {
        return true
    }
}

/// :nodoc:
public class SPreserved2_TypeResolver: Ice.UserExceptionTypeResolver {
    public override func type() -> Ice.UserException.Type {
        return SPreserved2.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_SPreserved2() -> Ice.UserExceptionTypeResolver {
        return SPreserved2_TypeResolver()
    }
}

open class SPreserved2: SPreserved1 {
    public var p2: BaseClass? = nil

    public required init() {
        super.init()
    }

    public init(b: Swift.String, kp: Swift.String, kpd: Swift.String, p1: BaseClass?, p2: BaseClass?) {
        self.p2 = p2
        super.init(b: b, kp: kp, kpd: kpd, p1: p1)
    }

    /// Returns the Slice type ID of this exception.
    ///
    /// - returns: `Swift.String` - the Slice type ID of this exception.
    open override class func ice_staticId() -> Swift.String {
        return "::Test::SPreserved2"
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: SPreserved2.ice_staticId(), compactId: -1, last: false)
        ostr.write(self.p2)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        try istr.read(BaseClass.self) { self.p2 = $0 }
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }
}

/// :nodoc:
public class SPreservedClass_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return SPreservedClass.self
    }
}

public extension Ice.ClassResolver {
    @objc static func IceSlicingExceptionsServerAMDTest_SPreservedClass() -> Ice.ValueTypeResolver {
        return SPreservedClass_TypeResolver()
    }
}

open class SPreservedClass: BaseClass {
    public var spc: Swift.String = ""

    public required init() {
        super.init()
    }

    public init(bc: Swift.String, spc: Swift.String) {
        self.spc = spc
        super.init(bc: bc)
    }

    /// Returns the Slice type ID of the most-derived interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the most-derived interface supported by this object
    open override func ice_id() -> Swift.String {
        return SPreservedClassTraits.staticId
    }

    /// Returns the Slice type ID of the interface supported by this object.
    ///
    /// - returns: `String` - The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String {
        return SPreservedClassTraits.staticId
    }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.spc = try istr.read()
        try istr.endSlice()
        try super._iceReadImpl(from: istr);
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: SPreservedClassTraits.staticId, compactId: -1, last: false)
        ostr.write(self.spc)
        ostr.endSlice()
        super._iceWriteImpl(to: ostr);
    }
}
