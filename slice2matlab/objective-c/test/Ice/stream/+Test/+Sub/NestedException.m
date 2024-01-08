% NestedException   Summary of NestedException
%
% NestedException Properties:
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from StreamTest.ice by slice2matlab version 3.7.10

classdef NestedException < Ice.UserException
    properties
        str char
    end
    methods
        function obj = NestedException(ice_exid, ice_exmsg, str)
            if nargin <= 2
                str = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Sub:NestedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Sub.NestedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
        end
        function id = ice_id(~)
            id = '::Test::Sub::NestedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            is.endSlice();
        end
    end
end
