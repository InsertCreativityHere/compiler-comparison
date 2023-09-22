% L   Summary of L
%
% L Properties:
%   data

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef L < Ice.Value
    properties
        data char
    end
    methods
        function obj = L(data)
            if nargin == 0
                obj.data = '';
            elseif ne(data, IceInternal.NoInit.Instance)
                obj.data = data;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::L', -1, true);
            os.writeString(obj.data);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.data = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::L';
        end
    end
end
