% UnknownDerived   Summary of UnknownDerived
%
% UnknownDerived Properties:
%   ud

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingExceptionsTestServer.ice by slice2matlab version 3.7.9

classdef UnknownDerived < Test.Base
    properties
        ud char
    end
    methods
        function obj = UnknownDerived(ice_exid, ice_exmsg, b, ud)
            if nargin <= 2
                b = '';
                ud = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:UnknownDerived';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.UnknownDerived';
            end
            obj = obj@Test.Base(ice_exid, ice_exmsg, b);
            obj.ud = ud;
        end
        function id = ice_id(~)
            id = '::Test::UnknownDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ud = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
end
