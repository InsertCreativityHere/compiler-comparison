classdef Empty < Ice.Value
    %EMPTY
    %
    %   Creation
    %     Syntax
    %       obj = Test.Empty()
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Empty', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Empty';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Empty'
    end
end
