
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef A < Ice.Value
    properties
        theA
    end
    methods
        function obj = A(theA)
            if nargin == 0
                obj.theA = [];
            elseif ne(theA, IceInternal.NoInit.Instance)
                obj.theA = theA;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Inner::Sub::A', -1, true);
            os.writeValue(obj.theA);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_theA, 'Test.Inner.A');
            is.endSlice();
        end
        function iceSetMember_theA(obj, v)
            obj.theA = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Inner::Sub::A';
        end
    end
end
