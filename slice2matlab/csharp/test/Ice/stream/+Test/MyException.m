
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyException < Ice.UserException
    properties
        c
    end
    methods
        function obj = MyException(errID, msg)
            if nargin == 0
                errID = 'Test:MyException';
                msg = 'Test.MyException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::MyException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.c = obj.c.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.c = IceInternal.ValueHolder();
            is.readValue(@(v) obj.c.set(v), 'Test.MyClass');
            is.endSlice();
        end
    end
end
