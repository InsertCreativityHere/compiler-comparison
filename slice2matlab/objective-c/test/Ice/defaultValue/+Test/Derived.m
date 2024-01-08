% Derived   Summary of Derived
%
% Derived Properties:
%   c

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.10

classdef Derived < Test.Base
    properties
        c Test.Color
    end
    methods
        function obj = Derived(boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault, c)
            if nargin == 0
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
                v = { boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault };
            elseif eq(boolFalse, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [], [], [], [], [] };
            else
                v = { boolFalse, boolTrue, b, s, i, l, f, d, str, noDefault };
            end;
            obj = obj@Test.Base(v{:});
            if ne(boolFalse, IceInternal.NoInit.Instance)
                obj.c = c;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            Test.Color.ice_write(os, obj.c);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c = Test.Color.ice_read(is);
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
