classdef G < Test.Base
    %G
    %
    %   Creation
    %     Syntax
    %       obj = Test.G()
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::G', -1, false);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::G';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::G'
    end
end
