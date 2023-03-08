% KnownMostDerived   Summary of KnownMostDerived
%
% KnownMostDerived Properties:
%   kmd

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingExceptionsTestServer.ice by slice2matlab version 3.7.9

classdef KnownMostDerived < Test.KnownIntermediate
    properties
        kmd char
    end
    methods
        function obj = KnownMostDerived(ice_exid, ice_exmsg, b, ki, kmd)
            if nargin <= 2
                b = '';
                ki = '';
                kmd = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:KnownMostDerived';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.KnownMostDerived';
            end
            obj = obj@Test.KnownIntermediate(ice_exid, ice_exmsg, b, ki);
            obj.kmd = kmd;
        end
        function id = ice_id(~)
            id = '::Test::KnownMostDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kmd = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.KnownIntermediate(obj, is);
        end
    end
end
