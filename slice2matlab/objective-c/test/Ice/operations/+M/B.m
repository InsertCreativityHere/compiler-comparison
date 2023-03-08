% B   Summary of B

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.9

classdef B < M.A
    methods
        function obj = B(x)
            if nargin == 0
                x = 0;
                v = { x };
            elseif eq(x, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { x };
            end;
            obj = obj@M.A(v{:});
            if ne(x, IceInternal.NoInit.Instance)
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::M::B', -1, false);
            os.endSlice();
            iceWriteImpl@M.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@M.A(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::M::B';
        end
    end
end
