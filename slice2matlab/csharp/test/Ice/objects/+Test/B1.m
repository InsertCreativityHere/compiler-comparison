classdef B1 < Ice.Value
    %B1
    %
    %   Creation
    %     Syntax
    %       obj = Test.B1()
    %       obj = Test.B1(a1, a2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   B1 Properties:
    %     a1
    %     a2
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A1
        %   Test.A1 scalar | empty array of Test.A1
        a1 {mustBeScalarOrEmpty} = Test.A1.empty
        
        % A2
        %   Test.A1 scalar | empty array of Test.A1
        a2 {mustBeScalarOrEmpty} = Test.A1.empty
    end
    methods
        function obj = B1(a1, a2)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.a1 = a1;
                obj.a2 = a2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::B1', -1, true);
            os.writeValue(obj.a1);
            os.writeValue(obj.a2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_a1, 'Test.A1');
            is.readValue(@obj.iceSetProperty_a2, 'Test.A1');
            is.endSlice();
        end
        function iceSetProperty_a1(obj, v)
            obj.a1 = v;
        end
        function iceSetProperty_a2(obj, v)
            obj.a2 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::B1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::B1'
    end
end
