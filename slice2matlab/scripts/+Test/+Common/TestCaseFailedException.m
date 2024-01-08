% TestCaseFailedException   Summary of TestCaseFailedException
%
% TestCaseFailedException Properties:
%   output

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.7.10

classdef TestCaseFailedException < Ice.UserException
    properties
        output char
    end
    methods
        function obj = TestCaseFailedException(ice_exid, ice_exmsg, output)
            if nargin <= 2
                output = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Common:TestCaseFailedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Common.TestCaseFailedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.output = output;
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
