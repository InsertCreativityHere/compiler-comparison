% SimpleClass6   Summary of SimpleClass6
%
% SimpleClass6 Properties:
%   f
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef SimpleClass6 < Ice.Value
    properties
        f single
        str char
    end
    methods
        function obj = SimpleClass6(f, str)
            if nargin == 0
                obj.f = 0;
                obj.str = '';
            elseif ne(f, IceInternal.NoInit.Instance)
                obj.f = f;
                obj.str = str;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SimpleClass6', -1, true);
            os.writeFloat(obj.f);
            os.writeString(obj.str);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.f = is.readFloat();
            obj.str = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SimpleClass6';
        end
    end
end
