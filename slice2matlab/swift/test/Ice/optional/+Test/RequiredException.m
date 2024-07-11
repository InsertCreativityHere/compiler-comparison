% RequiredException   Summary of RequiredException
%
% RequiredException Properties:
%   ss

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RequiredException < Test.OptionalException
    properties
        ss char
    end
    methods
        function obj = RequiredException(errID, msg)
            if nargin == 0
                errID = 'Test:RequiredException';
                msg = 'Test.RequiredException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.OptionalException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::RequiredException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ss = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
end
