classdef D < Test.ME.C
    %D
    %
    %   Creation
    %     Syntax
    %       obj = Test.ME.D()
    %       obj = Test.ME.D(dD)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   D Properties:
    %     dD
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DD
        %   int32 scalar
        dD (1, 1) int32
    end
    methods
        function obj = D(aA, bB, cC, dD)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {aA, bB, cC};
            end
            obj = obj@Test.ME.C(superArgs{:});
            if nargin > 0
                obj.dD = dD;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ME::D', -1, false);
            os.writeInt(obj.dD);
            os.endSlice();
            iceWriteImpl@Test.ME.C(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.dD = is.readInt();
            is.endSlice();
            iceReadImpl@Test.ME.C(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::ME::D';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ME::D'
    end
end
