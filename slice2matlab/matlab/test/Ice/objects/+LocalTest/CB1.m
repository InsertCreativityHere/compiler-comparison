
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef CB1 < Ice.Value
    properties
        s1 LocalTest.S1
    end
    methods
        function obj = CB1(s1)
            if nargin == 0
                obj.s1 = LocalTest.S1();
            elseif ne(s1, IceInternal.NoInit.Instance)
                obj.s1 = s1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.s1 = obj.s1.ice_convert();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB1', -1, true);
            LocalTest.S1.ice_write(os, obj.s1);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1 = LocalTest.S1.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB1';
        end
    end
end
