% SimpleClass2   Summary of SimpleClass2
%
% SimpleClass2 Properties:
%   str
%   f

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.10

classdef SimpleClass2 < Ice.Value
    properties
        str char
        f single
    end
    methods
        function obj = SimpleClass2(str, f)
            if nargin == 0
                obj.str = '';
                obj.f = 0;
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
                obj.f = f;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SimpleClass2', -1, true);
            os.writeString(obj.str);
            os.writeFloat(obj.f);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.f = is.readFloat();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SimpleClass2';
        end
    end
end
