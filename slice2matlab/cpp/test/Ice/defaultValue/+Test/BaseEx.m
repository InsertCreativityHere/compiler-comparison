
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef BaseEx < Ice.UserException
    properties
        boolFalse logical
        boolTrue logical
        b uint8
        s int16
        i int32
        l int64
        f single
        d double
        str char
        noDefault char
        zeroI int32
        zeroL int64
        zeroF single
        zeroDotF single
        zeroD double
        zeroDotD double
    end
    methods
        function obj = BaseEx(errID, msg)
            if nargin == 0
                errID = 'Test:BaseEx';
                msg = 'Test.BaseEx';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::BaseEx';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.boolFalse = is.readBool();
            obj.boolTrue = is.readBool();
            obj.b = is.readByte();
            obj.s = is.readShort();
            obj.i = is.readInt();
            obj.l = is.readLong();
            obj.f = is.readFloat();
            obj.d = is.readDouble();
            obj.str = is.readString();
            obj.noDefault = is.readString();
            obj.zeroI = is.readInt();
            obj.zeroL = is.readLong();
            obj.zeroF = is.readFloat();
            obj.zeroDotF = is.readFloat();
            obj.zeroD = is.readDouble();
            obj.zeroDotD = is.readDouble();
            is.endSlice();
        end
    end
end
