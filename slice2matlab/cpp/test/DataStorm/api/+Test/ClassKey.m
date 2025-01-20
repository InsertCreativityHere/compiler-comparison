
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ClassKey < Ice.Value
    properties
        value int32
    end
    methods
        function obj = ClassKey(value)
            if nargin == 0
                obj.value = 0;
            elseif ne(value, IceInternal.NoInit.Instance)
                obj.value = value;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassKey', -1, true);
            os.writeInt(obj.value);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.value = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::ClassKey';
        end
    end
end
