% Exception5   Summary of Exception5

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Exception5 < Test.Exception1
    methods
        function obj = Exception5(ice_exid, ice_exmsg, str, b)
            if nargin <= 2
                str = '';
                b = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception5';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception5';
            end
            obj = obj@Test.Exception1(ice_exid, ice_exmsg, str, b);
        end
        function id = ice_id(~)
            id = '::Test::Exception5';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            obj = iceReadImpl@Test.Exception1(obj, is);
        end
    end
end
