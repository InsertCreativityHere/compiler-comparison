% AbstractClass   Summary of AbstractClass

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef AbstractClass < Ice.Value
    methods
        function obj = AbstractClass(noInit)
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
            os.startSlice('::Test::AbstractClass', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::AbstractClass';
        end
    end
end
