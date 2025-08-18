classdef CompactExt < Test.Compact
    %COMPACTEXT
    %
    %   Creation
    %     Syntax
    %       obj = Test.CompactExt()
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CompactExt', 789, false);
            os.endSlice();
            iceWriteImpl@Test.Compact(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.Compact(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::CompactExt';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::CompactExt'
        CompactId char = '789'
    end
end
