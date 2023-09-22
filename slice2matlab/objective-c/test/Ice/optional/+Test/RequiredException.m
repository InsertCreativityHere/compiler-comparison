% RequiredException   Summary of RequiredException
%
% RequiredException Properties:
%   ss
%   o2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.10

classdef RequiredException < Test.OptionalException
    properties
        ss char
        o2
    end
    methods
        function obj = RequiredException(ice_exid, ice_exmsg, req, a, b, o, ss, o2)
            if nargin <= 2
                req = false;
                a = 5;
                b = IceInternal.UnsetI.Instance;
                o = IceInternal.UnsetI.Instance;
                ss = sprintf('test');
                o2 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:RequiredException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.RequiredException';
            end
            obj = obj@Test.OptionalException(ice_exid, ice_exmsg, req, a, b, o);
            obj.ss = ss;
            obj.o2 = o2;
        end
        function id = ice_id(~)
            id = '::Test::RequiredException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.o2 = obj.o2.value;
            obj = icePostUnmarshal@Test.OptionalException(obj);
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ss = is.readString();
            obj.o2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.o2.set(v), 'Test.OneOptional');
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
end
