% BadEncodingException   Summary of BadEncodingException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef BadEncodingException < Ice.UserException
    methods
        function obj = BadEncodingException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:BadEncodingException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.BadEncodingException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
        end
        function id = ice_id(~)
            id = '::Test::BadEncodingException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
