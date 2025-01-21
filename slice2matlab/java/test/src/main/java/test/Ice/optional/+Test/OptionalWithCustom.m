
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef OptionalWithCustom < Ice.Value
    properties
        l
    end
    methods
        function obj = OptionalWithCustom(l)
            if nargin == 0
                obj.l = IceInternal.UnsetI.Instance;
            elseif ne(l, IceInternal.NoInit.Instance)
                obj.l = l;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OptionalWithCustom', -1, true);
            Test.SmallStructList.writeOpt(os, 1, obj.l);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = Test.SmallStructList.readOpt(is, 1);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalWithCustom';
        end
    end
end
