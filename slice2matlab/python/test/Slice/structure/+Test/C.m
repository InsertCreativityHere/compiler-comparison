
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C < Ice.Value
    properties
        name char
    end
    methods
        function obj = C(name)
            if nargin == 0
                obj.name = '';
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, true);
            os.writeString(obj.name);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
end
