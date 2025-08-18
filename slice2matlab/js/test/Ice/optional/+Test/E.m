classdef E < Ice.Value
    %E
    %
    %   Creation
    %     Syntax
    %       obj = Test.E()
    %       obj = Test.E(fse)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   E Properties:
    %     fse
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % FSE
        %   Test.FixedStruct scalar
        fse Test.FixedStruct {mustBeScalarOrEmpty} = Test.FixedStruct.empty
    end
    methods
        function obj = E(fse)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.fse = fse;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::E', -1, true);
            Test.FixedStruct.ice_write(os, obj.fse);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.fse = Test.FixedStruct.ice_read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::E';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::E'
    end
end
