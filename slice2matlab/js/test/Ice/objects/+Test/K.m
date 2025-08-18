classdef K < Ice.Value
    %K
    %
    %   Creation
    %     Syntax
    %       obj = Test.K()
    %       obj = Test.K(value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   K Properties:
    %     value
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VALUE
        %   Ice.Value scalar | empty array of Ice.Value
        value {mustBeScalarOrEmpty} = Ice.UnknownSlicedValue.empty
    end
    methods
        function obj = K(value)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::K', -1, true);
            os.writeValue(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_value, 'Ice.Value');
            is.endSlice();
        end
        function iceSetProperty_value(obj, v)
            obj.value = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::K';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::K'
    end
end
