% ExceptionNoDefaults   Summary of ExceptionNoDefaults
%
% ExceptionNoDefaults Properties:
%   st
%   dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ExceptionNoDefaults < Test.ExceptionNoDefaultsBase
    properties
        st Test.InnerStruct
        dict containers.Map
    end
    methods
        function obj = ExceptionNoDefaults(errID, msg)
            if nargin == 0
                errID = 'Test:ExceptionNoDefaults';
                msg = 'Test.ExceptionNoDefaults';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.ExceptionNoDefaultsBase(errID, msg);
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
