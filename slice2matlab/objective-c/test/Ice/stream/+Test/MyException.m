% MyException   Summary of MyException
%
% MyException Properties:
%   c

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from StreamTest.ice by slice2matlab version 3.7.9

classdef MyException < Ice.UserException
    properties
        c
    end
    methods
        function obj = MyException(ice_exid, ice_exmsg, c)
            if nargin <= 2
                c = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:MyException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.MyException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.c = c;
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
