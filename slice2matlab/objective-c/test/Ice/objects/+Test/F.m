% F   Summary of F
%
% F Properties:
%   e1
%   e2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.9

classdef F < Ice.Value
    properties
        e2
    end
    properties(Access=protected)
        e1
    end
    methods
        function obj = F(e1, e2)
            if nargin == 0
                obj.e1 = [];
                obj.e2 = [];
            elseif ne(e1, IceInternal.NoInit.Instance)
                obj.e1 = e1;
                obj.e2 = e2;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F', -1, true);
            os.writeValue(obj.e1);
            os.writeValue(obj.e2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_e1, 'Test.E');
            is.readValue(@obj.iceSetMember_e2, 'Test.E');
            is.endSlice();
        end
        function iceSetMember_e1(obj, v)
            obj.e1 = v;
        end
        function iceSetMember_e2(obj, v)
            obj.e2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::F';
        end
    end
end
