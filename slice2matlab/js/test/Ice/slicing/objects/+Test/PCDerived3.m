
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef PCDerived3 < Test.PCDerived2
    properties
        pcd3
    end
    methods
        function obj = PCDerived3(pi, ps, pb, pbs, pcd2, pcd3)
            if nargin == 0
                pi = 0;
                ps = '';
                pb = [];
                pbs = [];
                pcd2 = 0;
                pcd3 = [];
                v = { pi, ps, pb, pbs, pcd2 };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [] };
            else
                v = { pi, ps, pb, pbs, pcd2 };
            end
            obj = obj@Test.PCDerived2(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.pcd3 = pcd3;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PCDerived3', -1, false);
            os.writeValue(obj.pcd3);
            os.endSlice();
            iceWriteImpl@Test.PCDerived2(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_pcd3, 'Ice.Value');
            is.endSlice();
            iceReadImpl@Test.PCDerived2(obj, is);
        end
        function iceSetMember_pcd3(obj, v)
            obj.pcd3 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PCDerived3';
        end
    end
end
