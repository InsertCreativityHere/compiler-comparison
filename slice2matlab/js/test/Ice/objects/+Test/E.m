
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef E < Ice.Value
    properties(Access=protected)
        i int32
        s char
    end
    methods
        function obj = E(i, s)
            if nargin == 0
                obj.i = 0;
                obj.s = '';
            elseif ne(i, IceInternal.NoInit.Instance)
                obj.i = i;
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::E', -1, true);
            os.writeInt(obj.i);
            os.writeString(obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            obj.s = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::E';
        end
    end
end
