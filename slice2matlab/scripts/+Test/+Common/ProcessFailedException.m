% ProcessFailedException   Summary of ProcessFailedException
%
% ProcessFailedException Properties:
%   reason

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef ProcessFailedException < Ice.UserException
    properties
        reason char
    end
    methods
        function obj = ProcessFailedException(errID, msg)
            if nargin == 0
                errID = 'Test:Common:ProcessFailedException';
                msg = 'Test.Common.ProcessFailedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Common::ProcessFailedException';
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
