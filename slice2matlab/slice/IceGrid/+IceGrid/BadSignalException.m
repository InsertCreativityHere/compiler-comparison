% BadSignalException   Summary of BadSignalException
%
% This exception is raised if an unknown signal was sent to to a server.
%
% BadSignalException Properties:
%   reason - The details of the unknown signal.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef BadSignalException < Ice.UserException
    properties
        % reason - The details of the unknown signal.
        reason char
    end
    methods
        function obj = BadSignalException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:BadSignalException';
                msg = 'IceGrid.BadSignalException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::BadSignalException';
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
