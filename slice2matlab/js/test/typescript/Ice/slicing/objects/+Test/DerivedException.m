% DerivedException   Summary of DerivedException
%
% DerivedException Properties:
%   sde
%   pd1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef DerivedException < Test.BaseException
    properties
        sde char
        pd1
    end
    methods
        function obj = DerivedException(ice_exid, ice_exmsg, sbe, pb, sde, pd1)
            if nargin <= 2
                sbe = '';
                pb = [];
                sde = '';
                pd1 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:DerivedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.DerivedException';
            end
            obj = obj@Test.BaseException(ice_exid, ice_exmsg, sbe, pb);
            obj.sde = sde;
            obj.pd1 = pd1;
        end
        function id = ice_id(~)
            id = '::Test::DerivedException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.pd1 = obj.pd1.value;
            obj = icePostUnmarshal@Test.BaseException(obj);
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.sde = is.readString();
            obj.pd1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.pd1.set(v), 'Test.D1');
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
end
