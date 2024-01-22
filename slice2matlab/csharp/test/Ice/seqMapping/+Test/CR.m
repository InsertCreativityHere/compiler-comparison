% CR   Summary of CR
%
% CR Properties:
%   v

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef CR < Ice.Value
    properties
        v
    end
    methods
        function obj = CR(v)
            if nargin == 0
                obj.v = [];
            elseif ne(v, IceInternal.NoInit.Instance)
                obj.v = v;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::CR', -1, true);
            os.writeValue(obj.v);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_v, 'Test.CV');
            is.endSlice();
        end
        function iceSetMember_v(obj, v)
            obj.v = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::CR';
        end
    end
end
