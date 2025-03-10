// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

/* eslint-disable */
/* jshint ignore: start */

import { Ice } from "ice";


export const Test = {};

Test.BaseException = class extends Ice.UserException
{
    constructor(_cause = "")
    {
        super(_cause);
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::Test::BaseException";
    }

    _mostDerivedType()
    {
        return Test.BaseException;
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.BaseException",
    Test.BaseException);

Test.InvalidPointException = class extends Test.BaseException
{
    constructor(index = 0, _cause = "")
    {
        super(_cause);
        this.index = index;
    }

    static get _parent()
    {
        return Test.BaseException;
    }

    static get _ice_id()
    {
        return "::Test::InvalidPointException";
    }

    _mostDerivedType()
    {
        return Test.InvalidPointException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.index);
    }

    _readMemberImpl(istr)
    {
        this.index = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.InvalidPointException",
    Test.InvalidPointException);

Test.InvalidLengthException = class extends Test.BaseException
{
    constructor(length = 0, _cause = "")
    {
        super(_cause);
        this.length = length;
    }

    static get _parent()
    {
        return Test.BaseException;
    }

    static get _ice_id()
    {
        return "::Test::InvalidLengthException";
    }

    _mostDerivedType()
    {
        return Test.InvalidLengthException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.length);
    }

    _readMemberImpl(istr)
    {
        this.length = istr.readInt();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.InvalidLengthException",
    Test.InvalidLengthException);

Test.OtherException = class extends Ice.UserException
{
    constructor(x = 0, y = 0, z = 0, b = false, _cause = "")
    {
        super(_cause);
        this.x = x;
        this.y = y;
        this.z = z;
        this.b = b;
    }

    static get _parent()
    {
        return Ice.UserException;
    }

    static get _ice_id()
    {
        return "::Test::OtherException";
    }

    _mostDerivedType()
    {
        return Test.OtherException;
    }

    _writeMemberImpl(ostr)
    {
        ostr.writeInt(this.x);
        ostr.writeInt(this.y);
        ostr.writeInt(this.z);
        ostr.writeBool(this.b);
    }

    _readMemberImpl(istr)
    {
        this.x = istr.readInt();
        this.y = istr.readInt();
        this.z = istr.readInt();
        this.b = istr.readBool();
    }
};
Ice.TypeRegistry.declareUserExceptionType(
    "Test.OtherException",
    Test.OtherException);

Test.PointF = class
{
    constructor(x = 0.0, y = 0.0, z = 0.0)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    _write(ostr)
    {
        ostr.writeFloat(this.x);
        ostr.writeFloat(this.y);
        ostr.writeFloat(this.z);
    }

    _read(istr)
    {
        this.x = istr.readFloat();
        this.y = istr.readFloat();
        this.z = istr.readFloat();
    }

    static get minWireSize()
    {
        return  12;
    }
};

Ice.defineStruct(Test.PointF, false, false);

Test.PointD = class
{
    constructor(x = 0.0, y = 0.0, z = 0.0)
    {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    _write(ostr)
    {
        ostr.writeDouble(this.x);
        ostr.writeDouble(this.y);
        ostr.writeDouble(this.z);
    }

    _read(istr)
    {
        this.x = istr.readDouble();
        this.y = istr.readDouble();
        this.z = istr.readDouble();
    }

    static get minWireSize()
    {
        return  24;
    }
};

Ice.defineStruct(Test.PointD, false, false);

Test.Point = class
{
    constructor(x = 0, y = 0)
    {
        this.x = x;
        this.y = y;
    }

    _write(ostr)
    {
        ostr.writeInt(this.x);
        ostr.writeInt(this.y);
    }

    _read(istr)
    {
        this.x = istr.readInt();
        this.y = istr.readInt();
    }

    static get minWireSize()
    {
        return  8;
    }
};

Ice.defineStruct(Test.Point, true, false);

Test.PointsHelper = Ice.StreamHelpers.generateSeqHelper(Test.Point, true);

Test.Polyline = class
{
    constructor(vertices = null)
    {
        this.vertices = vertices;
    }

    _write(ostr)
    {
        Test.PointsHelper.write(ostr, this.vertices);
    }

    _read(istr)
    {
        this.vertices = Test.PointsHelper.read(istr);
    }

    static get minWireSize()
    {
        return  1;
    }
};

Ice.defineStruct(Test.Polyline, false, true);

Test.Color = class
{
    constructor(r = 0, g = 0, b = 0, a = 0)
    {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }

    _write(ostr)
    {
        ostr.writeInt(this.r);
        ostr.writeInt(this.g);
        ostr.writeInt(this.b);
        ostr.writeInt(this.a);
    }

    _read(istr)
    {
        this.r = istr.readInt();
        this.g = istr.readInt();
        this.b = istr.readInt();
        this.a = istr.readInt();
    }

    static get minWireSize()
    {
        return  16;
    }
};

Ice.defineStruct(Test.Color, true, false);

[Test.StringColorMap, Test.StringColorMapHelper] = Ice.defineDictionary(Ice.IntHelper, Test.Color, true, undefined);

Test.ColorPalette = class
{
    constructor(colors = null)
    {
        this.colors = colors;
    }

    _write(ostr)
    {
        Test.StringColorMapHelper.write(ostr, this.colors);
    }

    _read(istr)
    {
        this.colors = Test.StringColorMapHelper.read(istr);
    }

    static get minWireSize()
    {
        return  1;
    }
};

Ice.defineStruct(Test.ColorPalette, false, true);

Test.Pen = class extends Ice.Value
{
    constructor(thickness = 0, color = new Test.Color())
    {
        super();
        this.thickness = thickness;
        this.color = color;
    }

    _iceWriteMemberImpl(ostr)
    {
        ostr.writeInt(this.thickness);
        Test.Color.write(ostr, this.color);
    }

    _iceReadMemberImpl(istr)
    {
        this.thickness = istr.readInt();
        this.color = Test.Color.read(istr, this.color);
    }
};

Ice.defineValue(Test.Pen, "::Test::Pen");
Ice.TypeRegistry.declareValueType("Test.Pen", Test.Pen);

Test.Draw = class
{
    constructor(backgroundColor = new Test.Color(), pen = null, shared = false)
    {
        this.backgroundColor = backgroundColor;
        this.pen = pen;
        this.shared = shared;
    }

    _write(ostr)
    {
        Test.Color.write(ostr, this.backgroundColor);
        ostr.writeValue(this.pen);
        ostr.writeBool(this.shared);
    }

    _read(istr)
    {
        this.backgroundColor = Test.Color.read(istr, this.backgroundColor);
        istr.readValue(obj => this.pen = obj, Ice.TypeRegistry.getValueType("Test.Pen"));
        this.shared = istr.readBool();
    }

    static get minWireSize()
    {
        return  18;
    }
};

Ice.defineStruct(Test.Draw, false, true);
