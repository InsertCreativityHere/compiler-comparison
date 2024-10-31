% M   Summary of M
%
% M Properties:
%   v

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef M < Ice.Value
    properties
        v struct
    end
    methods
        function obj = M(v)
            if nargin == 0
                obj.v = struct('key', {}, 'value', {});
            elseif ne(v, IceInternal.NoInit.Instance)
                obj.v = v;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.v = Test.LMap.convert(obj.v);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::M', -1, true);
            Test.LMap.write(os, obj.v);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.v = Test.LMap.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::M';
        end
    end
end
