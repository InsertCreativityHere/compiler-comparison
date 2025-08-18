classdef ServerStopException < Ice.UserException
    %SERVERSTOPEXCEPTION The exception that is thrown when a server failed to start.
    %
    %   ServerStopException Properties:
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
        function obj = ServerStopException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerStopException';
                msg = 'IceGrid.ServerStopException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerStopException';
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
        TypeId char = '::IceGrid::ServerStopException'
    end
end
