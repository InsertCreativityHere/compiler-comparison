% DerivedEx   Summary of DerivedEx
%
% DerivedEx Properties:
%   c

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.10

classdef DerivedEx < Test.BaseEx
    properties
        c Test.Color
    end
    methods
        function obj = DerivedEx(ice_exid, ice_exmsg, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, c)
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
                c = Test.Color.green;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:DerivedEx';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.DerivedEx';
            end
            obj = obj@Test.BaseEx(ice_exid, ice_exmsg, boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault);
            obj.c = c;
        end
        function id = ice_id(~)
            id = '::Test::DerivedEx';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.c = Test.Color.ice_read(is);
            is.endSlice();
            obj = iceReadImpl@Test.BaseEx(obj, is);
        end
    end
end
