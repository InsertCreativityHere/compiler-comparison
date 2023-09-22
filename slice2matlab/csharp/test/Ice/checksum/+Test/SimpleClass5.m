% SimpleClass5   Summary of SimpleClass5
%
% SimpleClass5 Properties:
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef SimpleClass5 < Ice.Value
    properties
        str char
    end
    methods
        function obj = SimpleClass5(str)
            if nargin == 0
                obj.str = '';
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SimpleClass5', -1, true);
            os.writeString(obj.str);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SimpleClass5';
        end
    end
end
