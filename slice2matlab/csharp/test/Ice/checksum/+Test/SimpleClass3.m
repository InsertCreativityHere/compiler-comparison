% SimpleClass3   Summary of SimpleClass3
%
% SimpleClass3 Properties:
%   str
%   g

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef SimpleClass3 < Ice.Value
    properties
        str char
        g single
    end
    methods
        function obj = SimpleClass3(str, g)
            if nargin == 0
                obj.str = '';
                obj.g = 0;
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
                obj.g = g;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SimpleClass3', -1, true);
            os.writeString(obj.str);
            os.writeFloat(obj.g);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.g = is.readFloat();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SimpleClass3';
        end
    end
end
