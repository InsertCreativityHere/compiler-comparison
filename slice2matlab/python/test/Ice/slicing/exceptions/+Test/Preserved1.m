% Preserved1   Summary of Preserved1
%
% Preserved1 Properties:
%   p1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef Preserved1 < Test.KnownPreservedDerived
    properties
        p1
    end
    methods
        function obj = Preserved1(ice_exid, ice_exmsg, b, kp, kpd, p1)
            if nargin <= 2
                b = '';
                kp = '';
                kpd = '';
                p1 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Preserved1';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Preserved1';
            end
            obj = obj@Test.KnownPreservedDerived(ice_exid, ice_exmsg, b, kp, kpd);
            obj.p1 = p1;
        end
        function id = ice_id(~)
            id = '::Test::Preserved1';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.p1 = obj.p1.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.p1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.p1.set(v), 'Test.BaseClass');
            is.endSlice();
            obj = iceReadImpl@Test.KnownPreservedDerived(obj, is);
        end
    end
end
