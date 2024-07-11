% TestCaseFailedException   Summary of TestCaseFailedException
%
% TestCaseFailedException Properties:
%   output

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef TestCaseFailedException < Ice.UserException
    properties
        output char
    end
    methods
        function obj = TestCaseFailedException(errID, msg)
            if nargin == 0
                errID = 'Test:Common:TestCaseFailedException';
                msg = 'Test.Common.TestCaseFailedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Common::TestCaseFailedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.output = is.readString();
            is.endSlice();
        end
    end
end
