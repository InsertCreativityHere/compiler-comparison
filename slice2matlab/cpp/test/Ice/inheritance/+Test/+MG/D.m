classdef D < Test.MG.C
    %D
    %
    %   Creation
    %     Syntax
    %       obj = Test.MG.D()
    %       obj = Test.MG.D(dD)
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
            obj = obj@Test.MG.C(superArgs{:});
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
            os.startSlice('::Test::MG::D', -1, false);
            os.writeInt(obj.dD);
            os.endSlice();
            iceWriteImpl@Test.MG.C(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.dD = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MG.C(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::MG::D';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::MG::D'
    end
end
