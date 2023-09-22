% UnknownMostDerived1   Summary of UnknownMostDerived1
%
% UnknownMostDerived1 Properties:
%   umd1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingExceptionsTestServer.ice by slice2matlab version 3.7.10

classdef UnknownMostDerived1 < Test.KnownIntermediate
    properties
        umd1 char
    end
    methods
        function obj = UnknownMostDerived1(ice_exid, ice_exmsg, b, ki, umd1)
            if nargin <= 2
                b = '';
                ki = '';
                umd1 = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:UnknownMostDerived1';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.UnknownMostDerived1';
            end
            obj = obj@Test.KnownIntermediate(ice_exid, ice_exmsg, b, ki);
            obj.umd1 = umd1;
        end
        function id = ice_id(~)
            id = '::Test::UnknownMostDerived1';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.umd1 = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.KnownIntermediate(obj, is);
        end
    end
end
