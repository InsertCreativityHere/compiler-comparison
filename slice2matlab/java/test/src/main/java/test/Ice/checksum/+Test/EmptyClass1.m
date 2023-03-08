% EmptyClass1   Summary of EmptyClass1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.9

classdef EmptyClass1 < Ice.Value
    methods
        function obj = EmptyClass1(noInit)
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
            os.startSlice('::Test::EmptyClass1', -1, true);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::EmptyClass1';
        end
    end
end
