
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef F3 < Ice.Value
    properties
        f1
        f2
    end
    methods
        function obj = F3(f1, f2)
            if nargin == 0
                obj.f1 = [];
                obj.f2 = [];
            elseif ne(f1, IceInternal.NoInit.Instance)
                obj.f1 = f1;
                obj.f2 = f2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F3', -1, true);
            os.writeValue(obj.f1);
            os.writeProxy(obj.f2);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_f1, 'Test.F1');
            obj.f2 = Test.F2Prx.ice_read(is);
            is.endSlice();
        end
        function iceSetMember_f1(obj, v)
            obj.f1 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::F3';
        end
    end
end
