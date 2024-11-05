
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef CB5 < Ice.Value
    properties
        s1dict containers.Map
    end
    methods
        function obj = CB5(s1dict)
            if nargin == 0
                obj.s1dict = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            elseif ne(s1dict, IceInternal.NoInit.Instance)
                obj.s1dict = s1dict;
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
            obj.s1dict = LocalTest.S1Dict.convert(obj.s1dict);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB5', -1, true);
            LocalTest.S1Dict.write(os, obj.s1dict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1dict = LocalTest.S1Dict.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB5';
        end
    end
end
