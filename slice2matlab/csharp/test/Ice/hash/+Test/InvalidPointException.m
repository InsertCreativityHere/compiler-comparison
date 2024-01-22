% InvalidPointException   Summary of InvalidPointException
%
% InvalidPointException Properties:
%   index

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InvalidPointException < Test.BaseException
    properties
        index int32
    end
    methods
        function obj = InvalidPointException(ice_exid, ice_exmsg, index)
            if nargin <= 2
                index = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:InvalidPointException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.InvalidPointException';
            end
            obj = obj@Test.BaseException(ice_exid, ice_exmsg);
            obj.index = index;
        end
        function id = ice_id(~)
            id = '::Test::InvalidPointException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.index = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
end
