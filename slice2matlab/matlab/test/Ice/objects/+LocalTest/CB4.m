
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef CB4 < Ice.Value
    properties
        c1dict containers.Map
    end
    methods
        function obj = CB4(c1dict)
            if nargin == 0
                obj.c1dict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(c1dict, IceInternal.NoInit.Instance)
                obj.c1dict = c1dict;
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
            obj.c1dict = LocalTest.C1Dict.convert(obj.c1dict);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB4', -1, true);
            LocalTest.C1Dict.write(os, obj.c1dict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1dict = LocalTest.C1Dict.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB4';
        end
    end
end
