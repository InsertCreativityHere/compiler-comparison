classdef PDerived < Test.Preserved
    %PDERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.PDerived()
    %       obj = Test.PDerived(pb)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   PDerived Properties:
    %     pb
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % PB
        %   Test.PBase scalar | empty array of Test.PBase
        pb {mustBeScalarOrEmpty} = Test.PBase.empty
    end
    methods
        function obj = PDerived(pi, ps, pb)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 3, 'Invalid number of arguments');
                superArgs = {pi, ps};
            end
            obj = obj@Test.Preserved(superArgs{:});
            if nargin > 0
                obj.pb = pb;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PDerived', -1, false);
            os.writeValue(obj.pb);
            os.endSlice();
            iceWriteImpl@Test.Preserved(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_pb, 'Test.PBase');
            is.endSlice();
            iceReadImpl@Test.Preserved(obj, is);
        end
        function iceSetProperty_pb(obj, v)
            obj.pb = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::PDerived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::PDerived'
    end
end
