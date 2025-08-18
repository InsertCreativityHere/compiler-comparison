classdef C < Ice.Value
    %C
    %
    %   Creation
    %     Syntax
    %       obj = Test.C()
    %       obj = Test.C(theB, preMarshalInvoked, postUnmarshalInvoked)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   C Properties:
    %     theB
    %     preMarshalInvoked
    %     postUnmarshalInvoked
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THEB
        %   Test.B scalar | empty array of Test.B
        theB {mustBeScalarOrEmpty} = Test.B.empty
        
        % PREMARSHALINVOKED
        %   logical scalar
        preMarshalInvoked (1, 1) logical
        
        % POSTUNMARSHALINVOKED
        %   logical scalar
        postUnmarshalInvoked (1, 1) logical
    end
    methods
        function obj = C(theB, preMarshalInvoked, postUnmarshalInvoked)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.theB = theB;
                obj.preMarshalInvoked = preMarshalInvoked;
                obj.postUnmarshalInvoked = postUnmarshalInvoked;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, true);
            os.writeValue(obj.theB);
            os.writeBool(obj.preMarshalInvoked);
            os.writeBool(obj.postUnmarshalInvoked);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_theB, 'Test.B');
            obj.preMarshalInvoked = is.readBool();
            obj.postUnmarshalInvoked = is.readBool();
            is.endSlice();
        end
        function iceSetProperty_theB(obj, v)
            obj.theB = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::C'
    end
end
