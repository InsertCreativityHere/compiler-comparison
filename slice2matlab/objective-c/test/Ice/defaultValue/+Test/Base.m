% Base   Summary of Base
%
% Base Properties:
%   boolFalse
%   boolTrue
%   b
%   s
%   i
%   l
%   f
%   d
%   str
%   noDefault

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.9

classdef Base < Ice.Value
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
    end
    methods
        function obj = Base(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault)
            if nargin == 0
                obj.boolFalse = false;
                obj.boolTrue = true;
                obj.b = 1;
                obj.s = 2;
                obj.i = 3;
                obj.l = 4;
                obj.f = 5;
                obj.d = 6;
                obj.str = sprintf('foo bar');
                obj.noDefault = '';
            elseif ne(boolFalse, IceInternal.NoInit.Instance)
                obj.boolFalse = boolFalse;
                obj.boolTrue = boolTrue;
                obj.b = b;
                obj.s = s;
                obj.i = i;
                obj.l = l;
                obj.f = f;
                obj.d = d;
                obj.str = str;
                obj.noDefault = noDefault;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            os.writeBool(obj.boolFalse);
            os.writeBool(obj.boolTrue);
            os.writeByte(obj.b);
            os.writeShort(obj.s);
            os.writeInt(obj.i);
            os.writeLong(obj.l);
            os.writeFloat(obj.f);
            os.writeDouble(obj.d);
            os.writeString(obj.str);
            os.writeString(obj.noDefault);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
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
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
end
