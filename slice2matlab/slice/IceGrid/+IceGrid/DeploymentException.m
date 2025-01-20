% DeploymentException   Summary of DeploymentException
%
% An exception for deployment errors.
%
% DeploymentException Properties:
%   reason - The reason for the failure.

% Copyright (c) ZeroC, Inc.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef DeploymentException < Ice.UserException
    properties
        % reason - The reason for the failure.
        reason char
    end
    methods
        function obj = DeploymentException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:DeploymentException';
                msg = 'IceGrid.DeploymentException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::DeploymentException';
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
