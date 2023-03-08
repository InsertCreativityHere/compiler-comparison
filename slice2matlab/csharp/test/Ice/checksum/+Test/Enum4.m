% Enum4   Summary of Enum4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Enum4 < Ice.Value
    methods
        function obj = Enum4(noInit)
            if nargin == 1 && ne(noInit, IceInternal.NoInit.Instance)
                narginchk(0,0);
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Enum4', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Enum4';
        end
    end
end
