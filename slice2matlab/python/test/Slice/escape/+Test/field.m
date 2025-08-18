classdef field < Ice.Value
    %FIELD
    %
    %   Creation
    %     Syntax
    %       obj = Test.field()
    %       obj = Test.field(name, value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   field Properties:
    %     name
    %     value
    %
    %   Generated from Clash.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME
        %   Test.St scalar
        name Test.St {mustBeScalarOrEmpty} = Test.St.empty
        
        % VALUE
        %   Test.St scalar
        value Test.St {mustBeScalarOrEmpty} = Test.St.empty
    end
    methods
        function obj = field(name, value)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.name = name;
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::field', -1, true);
            Test.St.ice_write(os, obj.name);
            Test.St.ice_write(os, obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = Test.St.ice_read(is);
            obj.value = Test.St.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::field';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::field'
    end
end
