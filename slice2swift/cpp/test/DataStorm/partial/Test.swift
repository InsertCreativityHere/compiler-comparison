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

@_documentation(visibility: internal)
public class Stock_TypeResolver: Ice.ValueTypeResolver {
    public override func type() -> Ice.Value.Type {
        return Stock.self
    }
}

public extension Ice.ClassResolver {
    @objc static func Test_Stock() -> Ice.ValueTypeResolver {
        return Stock_TypeResolver()
    }
}

open class Stock: Ice.Value {
    public var price: Swift.Float = 0.0
    public var lastBid: Swift.Float = 0.0
    public var lastAsk: Swift.Float = 0.0

    public required init() {}

    public init(price: Swift.Float, lastBid: Swift.Float, lastAsk: Swift.Float) {
        self.price = price
        self.lastBid = lastBid
        self.lastAsk = lastAsk
    }

    /// - Returns: The Slice type ID of the interface supported by this object.
    open override class func ice_staticId() -> Swift.String { "::Test::Stock" }

    open override func _iceReadImpl(from istr: Ice.InputStream) throws {
        _ = try istr.startSlice()
        self.price = try istr.read()
        self.lastBid = try istr.read()
        self.lastAsk = try istr.read()
        try istr.endSlice()
    }

    open override func _iceWriteImpl(to ostr: Ice.OutputStream) {
        ostr.startSlice(typeId: Stock.ice_staticId(), compactId: -1, last: true)
        ostr.write(self.price)
        ostr.write(self.lastBid)
        ostr.write(self.lastAsk)
        ostr.endSlice()
    }
}
