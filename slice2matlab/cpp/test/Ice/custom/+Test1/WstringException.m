% WstringException   Summary of WstringException
%
% WstringException Properties:
%   reason

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from WstringAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef WstringException < Ice.UserException
    properties
        reason char
    end
    methods
        function obj = WstringException(errID, msg)
            if nargin == 0
                errID = 'Test1:WstringException';
                msg = 'Test1.WstringException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test1::WstringException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
