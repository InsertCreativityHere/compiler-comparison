% Default   Summary of Default
%
% Default Properties:
%   x
%   y

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef Default < Ice.Value
    properties
        x int32
        y int32
    end
    methods
        function obj = Default(x, y)
            if nargin == 0
                obj.x = 0;
                obj.y = 0;
            elseif ne(x, IceInternal.NoInit.Instance)
                obj.x = x;
                obj.y = y;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Default', -1, true);
            os.writeInt(obj.x);
            os.writeInt(obj.y);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.x = is.readInt();
            obj.y = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Default';
        end
    end
end
