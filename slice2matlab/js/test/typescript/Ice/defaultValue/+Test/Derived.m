% Derived   Summary of Derived
%
% Derived Properties:
%   c1
%   c2
%   c3
%   nc1
%   nc2
%   nc3

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Derived < Test.Base
    properties
        c1 Test.Color
        c2 Test.Color
        c3 Test.Color
        nc1 Test.Nested.Color
        nc2 Test.Nested.Color
        nc3 Test.Nested.Color
    end
    methods
        function obj = Derived(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD, c1, c2, c3, nc1, nc2, nc3)
            if nargin == 0
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
                c1 = Test.Color.red;
                c2 = Test.Color.green;
                c3 = Test.Color.blue;
                nc1 = Test.Nested.Color.red;
                nc2 = Test.Nested.Color.green;
                nc3 = Test.Nested.Color.blue;
                v = { boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD };
            elseif eq(boolFalse, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [], [], [], [], [], [], [], [], [], [], [] };
            else
                v = { boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, zeroI, zeroL, zeroF, zeroDotF, zeroD, zeroDotD };
            end;
            obj = obj@Test.Base(v{:});
            if ne(boolFalse, IceInternal.NoInit.Instance)
                obj.c1 = c1;
                obj.c2 = c2;
                obj.c3 = c3;
                obj.nc1 = nc1;
                obj.nc2 = nc2;
                obj.nc3 = nc3;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            Test.Color.ice_write(os, obj.c1);
            Test.Color.ice_write(os, obj.c2);
            Test.Color.ice_write(os, obj.c3);
            Test.Nested.Color.ice_write(os, obj.nc1);
            Test.Nested.Color.ice_write(os, obj.nc2);
            Test.Nested.Color.ice_write(os, obj.nc3);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1 = Test.Color.ice_read(is);
            obj.c2 = Test.Color.ice_read(is);
            obj.c3 = Test.Color.ice_read(is);
            obj.nc1 = Test.Nested.Color.ice_read(is);
            obj.nc2 = Test.Nested.Color.ice_read(is);
            obj.nc3 = Test.Nested.Color.ice_read(is);
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Derived';
        end
    end
end
