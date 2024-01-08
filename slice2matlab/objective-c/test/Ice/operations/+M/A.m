% A   Summary of A
%
% A Properties:
%   x

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.10

classdef A < Ice.Value
    properties
        x int32
    end
    methods
        function obj = A(x)
            if nargin == 0
                obj.x = 0;
            elseif ne(x, IceInternal.NoInit.Instance)
                obj.x = x;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::M::A', -1, true);
            os.writeInt(obj.x);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.x = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::M::A';
        end
    end
end
