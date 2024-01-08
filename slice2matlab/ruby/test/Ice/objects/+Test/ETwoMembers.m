% ETwoMembers   Summary of ETwoMembers
%
% ETwoMembers Properties:
%   e1
%   e2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.7.10

classdef ETwoMembers < Ice.UserException
    properties
        e1
        e2
    end
    methods
        function obj = ETwoMembers(ice_exid, ice_exmsg, e1, e2)
            if nargin <= 2
                e1 = [];
                e2 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:ETwoMembers';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.ETwoMembers';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.e1 = e1;
            obj.e2 = e2;
        end
        function id = ice_id(~)
            id = '::Test::ETwoMembers';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.e1 = obj.e1.value;
            obj.e2 = obj.e2.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.e1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.e1.set(v), 'Test.Empty');
            obj.e2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.e2.set(v), 'Test.Empty');
            is.endSlice();
        end
    end
end
