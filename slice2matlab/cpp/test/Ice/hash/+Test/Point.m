% Point   Summary of Point

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Point < Ice.Value
    methods
        function obj = Point(noInit)
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
            os.startSlice('::Test::Point', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Point';
        end
    end
end
