classdef Recursive < Ice.Value
    %RECURSIVE
    %
    %   Creation
    %     Syntax
    %       obj = Test.Recursive()
    %       obj = Test.Recursive(v)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Recursive Properties:
    %     v
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % V
        %   Test.Recursive scalar | empty array of Test.Recursive
        v {mustBeScalarOrEmpty} = Test.Recursive.empty
    end
    methods
        function obj = Recursive(v)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.v = v;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Recursive', -1, true);
            os.writeValue(obj.v);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_v, 'Test.Recursive');
            is.endSlice();
        end
        function iceSetProperty_v(obj, v)
            obj.v = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Recursive';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Recursive'
    end
end
