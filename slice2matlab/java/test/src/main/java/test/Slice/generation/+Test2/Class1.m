
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from File1.ice by slice2matlab version 3.8.0-alpha.0

classdef Class1 < Ice.Value
    methods
        function obj = Class1(noInit)
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
            os.startSlice('::Test2::Class1', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test2::Class1';
        end
    end
end
