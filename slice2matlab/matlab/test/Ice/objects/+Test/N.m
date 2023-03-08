% N   Summary of N
%
% N Properties:
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef N < Ice.Value
    properties
        i
    end
    methods
        function obj = N(i)
            if nargin == 0
                obj.i = [];
            elseif ne(i, IceInternal.NoInit.Instance)
                obj.i = i;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::N', -1, true);
            os.writeValue(obj.i);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_i, 'Ice.Value');
            is.endSlice();
        end
        function iceSetMember_i(obj, v)
            obj.i = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::N';
        end
    end
end
