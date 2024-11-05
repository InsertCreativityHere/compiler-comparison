
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef B < Test.A
    properties
        theA
    end
    methods
        function obj = B(theB, theC, preMarshalInvoked, postUnmarshalInvoked, theA)
            if nargin == 0
                theB = [];
                theC = [];
                preMarshalInvoked = false;
                postUnmarshalInvoked = false;
                theA = [];
                v = { theB, theC, preMarshalInvoked, postUnmarshalInvoked };
            elseif eq(theB, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [] };
            else
                v = { theB, theC, preMarshalInvoked, postUnmarshalInvoked };
            end
            obj = obj@Test.A(v{:});
            if ne(theB, IceInternal.NoInit.Instance)
                obj.theA = theA;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B', -1, false);
            os.writeValue(obj.theA);
            os.endSlice();
            iceWriteImpl@Test.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_theA, 'Test.A');
            is.endSlice();
            iceReadImpl@Test.A(obj, is);
        end
        function iceSetMember_theA(obj, v)
            obj.theA = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::B';
        end
    end
end
