% SimpleClass4   Summary of SimpleClass4
%
% SimpleClass4 Properties:
%   str
%   f
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef SimpleClass4 < Ice.Value
    properties
        str char
        f single
        b logical
    end
    methods
        function obj = SimpleClass4(str, f, b)
            if nargin == 0
                obj.str = '';
                obj.f = 0;
                obj.b = false;
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
                obj.f = f;
                obj.b = b;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SimpleClass4', -1, true);
            os.writeString(obj.str);
            os.writeFloat(obj.f);
            os.writeBool(obj.b);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.f = is.readFloat();
            obj.b = is.readBool();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SimpleClass4';
        end
    end
end
