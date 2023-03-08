% E2   Summary of E2
%
% E2 Properties:
%   l

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Package.ice by slice2matlab version 3.7.9

classdef E2 < Test3.E1
    properties
        l int64
    end
    methods
        function obj = E2(ice_exid, ice_exmsg, i, l)
            if nargin <= 2
                i = 0;
                l = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test3:E2';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test3.E2';
            end
            obj = obj@Test3.E1(ice_exid, ice_exmsg, i);
            obj.l = l;
        end
        function id = ice_id(~)
            id = '::Test3::E2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            obj = iceReadImpl@Test3.E1(obj, is);
        end
    end
end
