classdef Class1 < Ice.Value
    %CLASS1
    %
    %   Creation
    %     Syntax
    %       obj = Test2.Class1()
    %
    %   Generated from File1.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test2::Class1', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test2::Class1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test2::Class1'
    end
end
