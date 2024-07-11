% NestedException2   Summary of NestedException2
%
% NestedException2 Properties:
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef NestedException2 < Ice.UserException
    properties
        str char
    end
    methods
        function obj = NestedException2(errID, msg)
            if nargin == 0
                errID = 'Test2:Sub2:NestedException2';
                msg = 'Test2.Sub2.NestedException2';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
