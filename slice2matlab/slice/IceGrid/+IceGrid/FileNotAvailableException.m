% FileNotAvailableException   Summary of FileNotAvailableException
%
% This exception is raised if a file is not available.
%
% FileNotAvailableException Properties:
%   reason - The reason for the failure.
%
% See also AdminSession.openServerStdOut, AdminSession.openServerStdErr, AdminSession.openNodeStdOut, AdminSession.openNodeStdErr, AdminSession.openRegistryStdOut, AdminSession.openRegistryStdErr

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef FileNotAvailableException < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = FileNotAvailableException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:FileNotAvailableException';
                msg = 'IceGrid.FileNotAvailableException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::FileNotAvailableException';
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
