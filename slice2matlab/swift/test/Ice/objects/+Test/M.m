classdef M < Ice.Value
    %M
    %
    %   Creation
    %     Syntax
    %       obj = Test.M()
    %       obj = Test.M(v)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   M Properties:
    %     v
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % V
        %   Test.StructKey, cell) scalar
        v (1, 1) = configureDictionary('Test.StructKey', 'cell')
    end
    methods
        function obj = M(v)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.v = v;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Hidden)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.v = Test.LMap.convert(obj.v);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::M', -1, true);
            Test.LMap.write(os, obj.v);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.v = Test.LMap.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::M';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::M'
    end
end
