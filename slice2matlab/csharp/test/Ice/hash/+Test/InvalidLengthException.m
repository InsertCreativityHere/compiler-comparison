% InvalidLengthException   Summary of InvalidLengthException
%
% InvalidLengthException Properties:
%   length

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef InvalidLengthException < Test.BaseException
    properties
        length int32
    end
    methods
        function obj = InvalidLengthException(ice_exid, ice_exmsg, length)
            if nargin <= 2
                length = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:InvalidLengthException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.InvalidLengthException';
            end
            obj = obj@Test.BaseException(ice_exid, ice_exmsg);
            obj.length = length;
        end
        function id = ice_id(~)
            id = '::Test::InvalidLengthException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.length = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
end
