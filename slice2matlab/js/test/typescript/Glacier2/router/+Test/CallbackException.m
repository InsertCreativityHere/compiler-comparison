% CallbackException   Summary of CallbackException
%
% CallbackException Properties:
%   someValue
%   someString

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Callback.ice by slice2matlab version 3.7.10

classdef CallbackException < Ice.UserException
    properties
        someValue double
        someString char
    end
    methods
        function obj = CallbackException(ice_exid, ice_exmsg, someValue, someString)
            if nargin <= 2
                someValue = 0;
                someString = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:CallbackException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.CallbackException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.someValue = someValue;
            obj.someString = someString;
        end
        function id = ice_id(~)
            id = '::Test::CallbackException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.someValue = is.readDouble();
            obj.someString = is.readString();
            is.endSlice();
        end
    end
end
