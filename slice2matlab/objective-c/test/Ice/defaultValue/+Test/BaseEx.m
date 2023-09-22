% BaseEx   Summary of BaseEx
%
% BaseEx Properties:
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
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.10

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
    end
    methods
        function obj = BaseEx(ice_exid, ice_exmsg, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault)
            if nargin <= 2
                boolFalse = false;
                boolTrue = true;
                b = 1;
                s = 2;
                i = 3;
                l = 4;
                f = 5;
                d = 6;
                str = sprintf('foo bar');
                noDefault = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:BaseEx';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.BaseEx';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
            is.endSlice();
        end
    end
end
