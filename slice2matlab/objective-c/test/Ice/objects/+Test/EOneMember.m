% EOneMember   Summary of EOneMember
%
% EOneMember Properties:
%   e

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.9

classdef EOneMember < Ice.UserException
    properties
        e
    end
    methods
        function obj = EOneMember(ice_exid, ice_exmsg, e)
            if nargin <= 2
                e = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:EOneMember';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.EOneMember';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.e = e;
        end
        function id = ice_id(~)
            id = '::Test::EOneMember';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.e = obj.e.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.e = IceInternal.ValueHolder();
            is.readValue(@(v) obj.e.set(v), 'Test.Empty');
            is.endSlice();
        end
    end
end
