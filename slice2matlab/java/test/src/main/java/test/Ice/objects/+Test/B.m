classdef B < Test.A
    %B
    %
    %   Creation
    %     Syntax
    %       obj = Test.B()
    %       obj = Test.B(theA)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   B Properties:
    %     theA
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THEA
        %   Test.A scalar | empty array of Test.A
        theA {mustBeScalarOrEmpty} = Test.A.empty
    end
    methods
        function obj = B(theB, theC, preMarshalInvoked, postUnmarshalInvoked, theA)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 5, 'Invalid number of arguments');
                superArgs = {theB, theC, preMarshalInvoked, postUnmarshalInvoked};
            end
            obj = obj@Test.A(superArgs{:});
            if nargin > 0
                obj.theA = theA;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B', -1, false);
            os.writeValue(obj.theA);
            os.endSlice();
            iceWriteImpl@Test.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_theA, 'Test.A');
            is.endSlice();
            iceReadImpl@Test.A(obj, is);
        end
        function iceSetProperty_theA(obj, v)
            obj.theA = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::B';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::B'
    end
end
