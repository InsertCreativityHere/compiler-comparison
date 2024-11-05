
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Package.ice by slice2matlab version 3.8.0-alpha.0

classdef C1 < Ice.Value
    properties
        i int32
    end
    methods
        function obj = C1(i)
            if nargin == 0
                obj.i = 0;
            elseif ne(i, IceInternal.NoInit.Instance)
                obj.i = i;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test3::C1', -1, true);
            os.writeInt(obj.i);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test3::C1';
        end
    end
end
