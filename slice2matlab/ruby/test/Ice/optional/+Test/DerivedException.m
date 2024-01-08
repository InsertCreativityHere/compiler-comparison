% DerivedException   Summary of DerivedException
%
% DerivedException Properties:
%   d1
%   ss
%   o2
%   d2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef DerivedException < Test.OptionalException
    properties
        d1 char
        ss
        o2
        d2 char
    end
    methods
        function obj = DerivedException(ice_exid, ice_exmsg, req, a, b, o, d1, ss, o2, d2)
            if nargin <= 2
                req = false;
                a = 5;
                b = IceInternal.UnsetI.Instance;
                o = IceInternal.UnsetI.Instance;
                d1 = '';
                ss = sprintf('test');
                o2 = IceInternal.UnsetI.Instance;
                d2 = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:DerivedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.DerivedException';
            end
            obj = obj@Test.OptionalException(ice_exid, ice_exmsg, req, a, b, o);
            obj.d1 = d1;
            obj.ss = ss;
            obj.o2 = o2;
            obj.d2 = d2;
        end
        function id = ice_id(~)
            id = '::Test::DerivedException';
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
            obj.d1 = is.readString();
            obj.d2 = is.readString();
            obj.ss = is.readStringOpt(600);
            obj.o2 = IceInternal.ValueHolder();
            is.readValueOpt(601, @(v) obj.o2.set(v), 'Test.OneOptional');
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
end
