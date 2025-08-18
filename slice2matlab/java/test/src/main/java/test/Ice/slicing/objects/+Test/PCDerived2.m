classdef PCDerived2 < Test.PCDerived
    %PCDERIVED2
    %
    %   Creation
    %     Syntax
    %       obj = Test.PCDerived2()
    %       obj = Test.PCDerived2(pcd2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PCDerived2 Properties:
    %     pcd2
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PCD2
        %   int32 scalar
        pcd2 (1, 1) int32
    end
    methods
        function obj = PCDerived2(pi, ps, pb, pbs, pcd2)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 5, 'Invalid number of arguments');
                superArgs = {pi, ps, pb, pbs};
            end
            obj = obj@Test.PCDerived(superArgs{:});
            if nargin > 0
                obj.pcd2 = pcd2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PCDerived2', -1, false);
            os.writeInt(obj.pcd2);
            os.endSlice();
            iceWriteImpl@Test.PCDerived(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pcd2 = is.readInt();
            is.endSlice();
            iceReadImpl@Test.PCDerived(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PCDerived2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PCDerived2'
    end
end
