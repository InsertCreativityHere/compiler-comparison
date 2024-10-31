% C2   Summary of C2
%
% C2 Properties:
%   E1
%   S1
%   C1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C2 < Ice.Value
    properties
        E1 Test.E1
        S1 Test.S1
        C1
    end
    methods
        function obj = C2(E1, S1, C1)
            if nargin == 0
                obj.E1 = Test.E1.v1;
                obj.S1 = Test.S1();
                obj.C1 = [];
            elseif ne(E1, IceInternal.NoInit.Instance)
                obj.E1 = E1;
                obj.S1 = S1;
                obj.C1 = C1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C2', -1, true);
            Test.E1.ice_write(os, obj.E1);
            Test.S1.ice_write(os, obj.S1);
            os.writeValue(obj.C1);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.E1 = Test.E1.ice_read(is);
            obj.S1 = Test.S1.ice_read(is);
            is.readValue(@obj.iceSetMember_C1, 'Test.C1');
            is.endSlice();
        end
        function iceSetMember_C1(obj, v)
            obj.C1 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C2';
        end
    end
end
