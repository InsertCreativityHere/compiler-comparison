% KnownDerived   Summary of KnownDerived
%
% KnownDerived Properties:
%   kd

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef KnownDerived < Test.Base
    properties
        kd char
    end
    methods
        function obj = KnownDerived(ice_exid, ice_exmsg, b, kd)
            if nargin <= 2
                b = '';
                kd = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:KnownDerived';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.KnownDerived';
            end
            obj = obj@Test.Base(ice_exid, ice_exmsg, b);
            obj.kd = kd;
        end
        function id = ice_id(~)
            id = '::Test::KnownDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kd = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
end
