% EBase   Summary of EBase
%
% EBase Properties:
%   a1
%   a2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.10

classdef EBase < Ice.UserException
    properties
        a1
        a2
    end
    methods
        function obj = EBase(ice_exid, ice_exmsg, a1, a2)
            if nargin <= 2
                a1 = [];
                a2 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:EBase';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.EBase';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.a1 = a1;
            obj.a2 = a2;
        end
        function id = ice_id(~)
            id = '::Test::EBase';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.a1 = obj.a1.value;
            obj.a2 = obj.a2.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.a1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.a1.set(v), 'Test.A1');
            obj.a2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.a2.set(v), 'Test.A1');
            is.endSlice();
        end
    end
end
