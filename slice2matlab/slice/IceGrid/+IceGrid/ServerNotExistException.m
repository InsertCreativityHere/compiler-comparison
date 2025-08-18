classdef ServerNotExistException < Ice.UserException
    %SERVERNOTEXISTEXCEPTION The exception that is thrown when IceGrid does not know a server with the provided server ID.
    %
    %   ServerNotExistException Properties:
    %     id - The server ID.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The server ID.
        %   character vector
        id (1, :) char
    end
    methods
        function obj = ServerNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ServerNotExistException';
                msg = 'IceGrid.ServerNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ServerNotExistException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::ServerNotExistException'
    end
end
