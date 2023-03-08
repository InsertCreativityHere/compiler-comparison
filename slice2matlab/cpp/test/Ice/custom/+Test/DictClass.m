% DictClass   Summary of DictClass
%
% DictClass Properties:
%   isdict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef DictClass < Ice.Value
    properties
        isdict containers.Map
    end
    methods
        function obj = DictClass(isdict)
            if nargin == 0
                obj.isdict = containers.Map('KeyType', 'int32', 'ValueType', 'char');
            elseif ne(isdict, IceInternal.NoInit.Instance)
                obj.isdict = isdict;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::DictClass', -1, true);
            Test.IntStringDict.write(os, obj.isdict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.isdict = Test.IntStringDict.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::DictClass';
        end
    end
end
