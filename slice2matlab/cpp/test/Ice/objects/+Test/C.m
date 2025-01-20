
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C < Ice.Value
    properties
        theB
        preMarshalInvoked logical
        postUnmarshalInvoked logical
    end
    methods
        function obj = C(theB, preMarshalInvoked, postUnmarshalInvoked)
            if nargin == 0
                obj.theB = [];
                obj.preMarshalInvoked = false;
                obj.postUnmarshalInvoked = false;
            elseif ne(theB, IceInternal.NoInit.Instance)
                obj.theB = theB;
                obj.preMarshalInvoked = preMarshalInvoked;
                obj.postUnmarshalInvoked = postUnmarshalInvoked;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, true);
            os.writeValue(obj.theB);
            os.writeBool(obj.preMarshalInvoked);
            os.writeBool(obj.postUnmarshalInvoked);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_theB, 'Test.B');
            obj.preMarshalInvoked = is.readBool();
            obj.postUnmarshalInvoked = is.readBool();
            is.endSlice();
        end
        function iceSetMember_theB(obj, v)
            obj.theB = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
end
