% A   Summary of A
%
% A Properties:
%   theB
%   theC
%   preMarshalInvoked
%   postUnmarshalInvoked

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.9

classdef A < Ice.Value
    properties
        theB
        theC
        preMarshalInvoked logical
        postUnmarshalInvoked logical
    end
    methods
        function obj = A(theB, theC, preMarshalInvoked, postUnmarshalInvoked)
            if nargin == 0
                obj.theB = [];
                obj.theC = [];
                obj.preMarshalInvoked = false;
                obj.postUnmarshalInvoked = false;
            elseif ne(theB, IceInternal.NoInit.Instance)
                obj.theB = theB;
                obj.theC = theC;
                obj.preMarshalInvoked = preMarshalInvoked;
                obj.postUnmarshalInvoked = postUnmarshalInvoked;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::A', -1, true);
            os.writeValue(obj.theB);
            os.writeValue(obj.theC);
            os.writeBool(obj.preMarshalInvoked);
            os.writeBool(obj.postUnmarshalInvoked);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_theB, 'Test.B');
            is.readValue(@obj.iceSetMember_theC, 'Test.C');
            obj.preMarshalInvoked = is.readBool();
            obj.postUnmarshalInvoked = is.readBool();
            is.endSlice();
        end
        function iceSetMember_theB(obj, v)
            obj.theB = v;
        end
        function iceSetMember_theC(obj, v)
            obj.theC = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::A';
        end
    end
end
