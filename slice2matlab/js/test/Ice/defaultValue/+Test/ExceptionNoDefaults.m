% ExceptionNoDefaults   Summary of ExceptionNoDefaults
%
% ExceptionNoDefaults Properties:
%   st
%   dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef ExceptionNoDefaults < Test.ExceptionNoDefaultsBase
    properties
        st Test.InnerStruct
        dict containers.Map
    end
    methods
        function obj = ExceptionNoDefaults(ice_exid, ice_exmsg, str, c1, bs, st, dict)
            if nargin <= 2
                str = '';
                c1 = Test.Color.red;
                bs = [];
                st = Test.InnerStruct();
                dict = containers.Map('KeyType', 'int32', 'ValueType', 'char');
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:ExceptionNoDefaults';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.ExceptionNoDefaults';
            end
            obj = obj@Test.ExceptionNoDefaultsBase(ice_exid, ice_exmsg, str, c1, bs);
            obj.st = st;
            obj.dict = dict;
        end
        function id = ice_id(~)
            id = '::Test::ExceptionNoDefaults';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.st = Test.InnerStruct.ice_read(is);
            obj.dict = Test.IntStringDict.read(is);
            is.endSlice();
            obj = iceReadImpl@Test.ExceptionNoDefaultsBase(obj, is);
        end
    end
end
