% Ex   Summary of Ex
%
% Ex Properties:
%   s
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Ex < Ice.UserException
    properties
        s Test.Struct1
        b
    end
    methods
        function obj = Ex(ice_exid, ice_exmsg, s, b)
            if nargin <= 2
                s = Test.Struct1();
                b = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Ex';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Ex';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.s = s;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Ex';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.b = obj.b.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.Struct1.ice_read(is);
            obj.b = IceInternal.ValueHolder();
            is.readValue(@(v) obj.b.set(v), 'Test.Base');
            is.endSlice();
        end
    end
end
