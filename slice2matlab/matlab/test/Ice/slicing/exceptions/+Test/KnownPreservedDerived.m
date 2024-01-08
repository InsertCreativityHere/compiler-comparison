% KnownPreservedDerived   Summary of KnownPreservedDerived
%
% KnownPreservedDerived Properties:
%   kpd

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.7.10

classdef KnownPreservedDerived < Test.KnownPreserved
    properties
        kpd char
    end
    methods
        function obj = KnownPreservedDerived(ice_exid, ice_exmsg, b, kp, kpd)
            if nargin <= 2
                b = '';
                kp = '';
                kpd = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:KnownPreservedDerived';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.KnownPreservedDerived';
            end
            obj = obj@Test.KnownPreserved(ice_exid, ice_exmsg, b, kp);
            obj.kpd = kpd;
        end
        function id = ice_id(~)
            id = '::Test::KnownPreservedDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kpd = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.KnownPreserved(obj, is);
        end
    end
end
