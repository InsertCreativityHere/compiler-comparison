% ClassNoDefaults   Summary of ClassNoDefaults
%
% ClassNoDefaults Properties:
%   st
%   dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from DefaultValueTest.ice by slice2matlab version 3.7.9

classdef ClassNoDefaults < Test.ClassNoDefaultsBase
    properties
        st Test.InnerStruct
        dict containers.Map
    end
    methods
        function obj = ClassNoDefaults(str, c1, bs, st, dict)
            if nargin == 0
                str = '';
                c1 = Test.Color.red;
                bs = [];
                st = Test.InnerStruct();
                dict = containers.Map('KeyType', 'int32', 'ValueType', 'char');
                v = { str, c1, bs };
            elseif eq(str, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [] };
            else
                v = { str, c1, bs };
            end;
            obj = obj@Test.ClassNoDefaultsBase(v{:});
            if ne(str, IceInternal.NoInit.Instance)
                obj.st = st;
                obj.dict = dict;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassNoDefaults', -1, false);
            Test.InnerStruct.ice_write(os, obj.st);
            Test.IntStringDict.write(os, obj.dict);
            os.endSlice();
            iceWriteImpl@Test.ClassNoDefaultsBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.st = Test.InnerStruct.ice_read(is);
            obj.dict = Test.IntStringDict.read(is);
            is.endSlice();
            iceReadImpl@Test.ClassNoDefaultsBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::ClassNoDefaults';
        end
    end
end
