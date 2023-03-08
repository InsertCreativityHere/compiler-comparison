% CD   Summary of CD

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef CD < Test.MA.CC
    methods
        function obj = CD(noInit)
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
            os.startSlice('::Test::MA::CD', -1, false);
            os.endSlice();
            iceWriteImpl@Test.MA.CC(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.MA.CC(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MA::CD';
        end
    end
end
