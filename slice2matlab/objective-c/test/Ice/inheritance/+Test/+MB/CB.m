% CB   Summary of CB

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from InheritanceTest.ice by slice2matlab version 3.7.9

classdef CB < Test.MA.CA
    methods
        function obj = CB(noInit)
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
            os.startSlice('::Test::MB::CB', -1, false);
            os.endSlice();
            iceWriteImpl@Test.MA.CA(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.MA.CA(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MB::CB';
        end
    end
end
