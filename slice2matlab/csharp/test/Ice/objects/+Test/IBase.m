
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IBase < Ice.Value
    properties
        id char
    end
    methods
        function obj = IBase(id)
            if nargin == 0
                obj.id = '';
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::IBase', -1, true);
            os.writeString(obj.id);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::IBase';
        end
    end
end
