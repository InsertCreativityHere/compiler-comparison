% KnownIntermediate   Summary of KnownIntermediate
%
% KnownIntermediate Properties:
%   ki

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.7.9

classdef KnownIntermediate < Test.Base
    properties
        ki char
    end
    methods
        function obj = KnownIntermediate(ice_exid, ice_exmsg, b, ki)
            if nargin <= 2
                b = '';
                ki = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:KnownIntermediate';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.KnownIntermediate';
            end
            obj = obj@Test.Base(ice_exid, ice_exmsg, b);
            obj.ki = ki;
        end
        function id = ice_id(~)
            id = '::Test::KnownIntermediate';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ki = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
end
