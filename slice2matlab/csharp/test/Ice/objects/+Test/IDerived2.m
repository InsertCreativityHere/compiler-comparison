classdef IDerived2 < Test.IBase
    %IDERIVED2
    %
    %   Creation
    %     Syntax
    %       obj = Test.IDerived2()
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::IDerived2', -1, false);
            os.endSlice();
            iceWriteImpl@Test.IBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.IBase(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::IDerived2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::IDerived2'
    end
end
