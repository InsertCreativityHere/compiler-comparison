
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef Hidden < Ice.Value
    properties
        f
    end
    methods
        function obj = Hidden(f)
            if nargin == 0
                obj.f = [];
            elseif ne(f, IceInternal.NoInit.Instance)
                obj.f = f;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Hidden', -1, true);
            os.writeValue(obj.f);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_f, 'Test.Forward');
            is.endSlice();
        end
        function iceSetMember_f(obj, v)
            obj.f = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Hidden';
        end
    end
end
