% PCDerived2   Summary of PCDerived2
%
% PCDerived2 Properties:
%   pcd2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef PCDerived2 < Test.PCDerived
    properties
        pcd2 int32
    end
    methods
        function obj = PCDerived2(pi, ps, pb, pbs, pcd2)
            if nargin == 0
                pi = 0;
                ps = '';
                pb = [];
                pbs = [];
                pcd2 = 0;
                v = { pi, ps, pb, pbs };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [] };
            else
                v = { pi, ps, pb, pbs };
            end
            obj = obj@Test.PCDerived(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.pcd2 = pcd2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
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
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PCDerived2';
        end
    end
end
