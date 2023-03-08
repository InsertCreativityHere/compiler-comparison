% CompactExt   Summary of CompactExt

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.9

classdef CompactExt < Test.Compact
    methods
        function obj = CompactExt(noInit)
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
            os.startSlice('::Test::CompactExt', 789, false);
            os.endSlice();
            iceWriteImpl@Test.Compact(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.Compact(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::CompactExt';
        end
    end
end
