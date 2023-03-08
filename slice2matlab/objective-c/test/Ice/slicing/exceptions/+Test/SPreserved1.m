% SPreserved1   Summary of SPreserved1
%
% SPreserved1 Properties:
%   p1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingExceptionsTestServer.ice by slice2matlab version 3.7.9

classdef SPreserved1 < Test.KnownPreservedDerived
    properties
        p1
    end
    methods
        function obj = SPreserved1(ice_exid, ice_exmsg, b, kp, kpd, p1)
            if nargin <= 2
                b = '';
                kp = '';
                kpd = '';
                p1 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:SPreserved1';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.SPreserved1';
            end
            obj = obj@Test.KnownPreservedDerived(ice_exid, ice_exmsg, b, kp, kpd);
            obj.p1 = p1;
        end
        function id = ice_id(~)
            id = '::Test::SPreserved1';
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
