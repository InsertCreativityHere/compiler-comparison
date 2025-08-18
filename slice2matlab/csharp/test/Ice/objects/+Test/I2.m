classdef I2 < Ice.Value
    %I2
    %
    %   Creation
    %     Syntax
    %       obj = Test.I2()
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::I2', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::I2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::I2'
    end
end
