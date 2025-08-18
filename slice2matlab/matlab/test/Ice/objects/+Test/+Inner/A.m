classdef A < Ice.Value
    %A
    %
    %   Creation
    %     Syntax
    %       obj = Test.Inner.A()
    %       obj = Test.Inner.A(theA)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   A Properties:
    %     theA
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % THEA
        %   Test.A scalar | empty array of Test.A
        theA {mustBeScalarOrEmpty} = Test.A.empty
    end
    methods
        function obj = A(theA)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.theA = theA;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Inner::A', -1, true);
            os.writeValue(obj.theA);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_theA, 'Test.A');
            is.endSlice();
        end
        function iceSetProperty_theA(obj, v)
            obj.theA = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Inner::A';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Inner::A'
    end
end
