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
%   zeroI
%   zeroL
%   zeroF
%   zeroDotF
%   zeroD
%   zeroDotD

% Copyright (c) ZeroC, Inc. All rights reserved.
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
        function obj = BaseEx(ice_exid, ice_exmsg, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD)
            if nargin <= 2
                boolFalse = false;
                boolTrue = true;
                b = 1;
                s = 2;
                i = 3;
                l = 4;
                f = 5.1;
                d = 6.2;
                str = sprintf('foo \\ "bar\n \r\n\t\v\f\a\b?');
                noDefault = '';
                zeroI = 0;
                zeroL = 0;
                zeroF = 0;
                zeroDotF = 0;
                zeroD = 0;
                zeroDotD = 0;
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
            obj.zeroI = zeroI;
            obj.zeroL = zeroL;
            obj.zeroF = zeroF;
            obj.zeroDotF = zeroDotF;
            obj.zeroD = zeroD;
            obj.zeroDotD = zeroDotD;
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
