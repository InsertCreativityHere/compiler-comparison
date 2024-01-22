% DerivedEx   Summary of DerivedEx
%
% DerivedEx Properties:
%   c1
%   c2
%   c3
%   nc1
%   nc2
%   nc3

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef DerivedEx < Test.BaseEx
    properties
        c1 Test.Color
        c2 Test.Color
        c3 Test.Color
        nc1 Test.Nested.Color
        nc2 Test.Nested.Color
        nc3 Test.Nested.Color
    end
    methods
        function obj = DerivedEx(ice_exid, ice_exmsg, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD, c1, c2, c3, nc1, nc2, nc3)
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
                c1 = Test.ConstColor1.value;
                c2 = Test.ConstColor2.value;
                c3 = Test.ConstColor3.value;
                nc1 = Test.ConstNestedColor1.value;
                nc2 = Test.ConstNestedColor2.value;
                nc3 = Test.ConstNestedColor3.value;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:DerivedEx';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.DerivedEx';
            end
            obj = obj@Test.BaseEx(ice_exid, ice_exmsg, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD);
            obj.c1 = c1;
            obj.c2 = c2;
            obj.c3 = c3;
            obj.nc1 = nc1;
            obj.nc2 = nc2;
            obj.nc3 = nc3;
        end
        function id = ice_id(~)
            id = '::Test::DerivedEx';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.c1 = Test.Color.ice_read(is);
            obj.c2 = Test.Color.ice_read(is);
            obj.c3 = Test.Color.ice_read(is);
            obj.nc1 = Test.Nested.Color.ice_read(is);
            obj.nc2 = Test.Nested.Color.ice_read(is);
            obj.nc3 = Test.Nested.Color.ice_read(is);
            is.endSlice();
            obj = iceReadImpl@Test.BaseEx(obj, is);
        end
    end
end
