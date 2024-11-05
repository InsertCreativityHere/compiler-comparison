
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef NoDefault < Ice.Value
    properties
        x int32
        y int32
    end
    methods
        function obj = NoDefault(x, y)
            if nargin == 0
                obj.x = 10;
                obj.y = 10;
            elseif ne(x, IceInternal.NoInit.Instance)
                obj.x = x;
                obj.y = y;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::NoDefault', -1, true);
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
            id = '::Test::NoDefault';
        end
    end
end
