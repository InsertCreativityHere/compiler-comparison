classdef DeploymentException < Ice.UserException
    %DEPLOYMENTEXCEPTION The exception that is thrown when IceGrid cannot deploy a server.
    %
    %   DeploymentException Properties:
    %     reason - The reason for the failure.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON The reason for the failure.
        %   character vector
        reason (1, :) char
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
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::DeploymentException'
    end
end
