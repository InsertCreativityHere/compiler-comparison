
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef WD < Ice.Value
    properties
        a
        s
    end
    methods
        function obj = WD(a, s)
            if nargin == 0
                obj.a = 5;
                obj.s = sprintf('test');
            elseif ne(a, IceInternal.NoInit.Instance)
                obj.a = a;
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::WD', -1, true);
            os.writeIntOpt(1, obj.a);
            os.writeStringOpt(2, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readIntOpt(1);
            obj.s = is.readStringOpt(2);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::WD';
        end
    end
end
