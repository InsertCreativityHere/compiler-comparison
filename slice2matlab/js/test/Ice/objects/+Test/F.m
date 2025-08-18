classdef F < Ice.Value
    %F
    %
    %   Creation
    %     Syntax
    %       obj = Test.F()
    %       obj = Test.F(e1, e2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   F Properties:
    %     e1
    %     e2
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E1
        %   Test.E scalar | empty array of Test.E
        e1 {mustBeScalarOrEmpty} = Test.E.empty
        
        % E2
        %   Test.E scalar | empty array of Test.E
        e2 {mustBeScalarOrEmpty} = Test.E.empty
    end
    methods
        function obj = F(e1, e2)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.e1 = e1;
                obj.e2 = e2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F', -1, true);
            os.writeValue(obj.e1);
            os.writeValue(obj.e2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_e1, 'Test.E');
            is.readValue(@obj.iceSetProperty_e2, 'Test.E');
            is.endSlice();
        end
        function iceSetProperty_e1(obj, v)
            obj.e1 = v;
        end
        function iceSetProperty_e2(obj, v)
            obj.e2 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::F';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::F'
    end
end
