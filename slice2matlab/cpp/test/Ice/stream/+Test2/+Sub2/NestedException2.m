% NestedException2   Summary of NestedException2
%
% NestedException2 Properties:
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef NestedException2 < Ice.UserException
    properties
        str char
    end
    methods
        function obj = NestedException2(ice_exid, ice_exmsg, str)
            if nargin <= 2
                str = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test2:Sub2:NestedException2';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test2.Sub2.NestedException2';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
        end
        function id = ice_id(~)
            id = '::Test2::Sub2::NestedException2';
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
