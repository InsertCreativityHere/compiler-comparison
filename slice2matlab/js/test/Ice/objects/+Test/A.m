classdef A < Ice.Value
    %A
    %
    %   Creation
    %     Syntax
    %       obj = Test.A()
    %       obj = Test.A(theB, theC, preMarshalInvoked, postUnmarshalInvoked)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   A Properties:
    %     theB
    %     theC
    %     preMarshalInvoked
    %     postUnmarshalInvoked
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THEB
        %   Test.B scalar | empty array of Test.B
        theB {mustBeScalarOrEmpty} = Test.B.empty
        
        % THEC
        %   Test.C scalar | empty array of Test.C
        theC {mustBeScalarOrEmpty} = Test.C.empty
        
        % PREMARSHALINVOKED
        %   logical scalar
        preMarshalInvoked (1, 1) logical
        
        % POSTUNMARSHALINVOKED
        %   logical scalar
        postUnmarshalInvoked (1, 1) logical
    end
    methods
        function obj = A(theB, theC, preMarshalInvoked, postUnmarshalInvoked)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.theB = theB;
                obj.theC = theC;
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
            os.startSlice('::Test::A', -1, true);
            os.writeValue(obj.theB);
            os.writeValue(obj.theC);
            os.writeBool(obj.preMarshalInvoked);
            os.writeBool(obj.postUnmarshalInvoked);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_theB, 'Test.B');
            is.readValue(@obj.iceSetProperty_theC, 'Test.C');
            obj.preMarshalInvoked = is.readBool();
            obj.postUnmarshalInvoked = is.readBool();
            is.endSlice();
        end
        function iceSetProperty_theB(obj, v)
            obj.theB = v;
        end
        function iceSetProperty_theC(obj, v)
            obj.theC = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::A';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::A'
    end
end
