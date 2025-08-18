classdef ServerStartException < Ice.UserException
    %SERVERSTARTEXCEPTION The exception that is thrown when a server failed to start.
    %
    %   ServerStartException Properties:
    %     id - The server ID.
    %     reason - The reason for the failure.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The server ID.
        %   character vector
        id (1, :) char
        
        % REASON The reason for the failure.
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = ServerStartException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerStartException';
                msg = 'IceGrid.ServerStartException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerStartException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::ServerStartException'
    end
end
