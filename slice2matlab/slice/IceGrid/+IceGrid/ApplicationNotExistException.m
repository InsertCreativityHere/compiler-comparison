classdef ApplicationNotExistException < Ice.UserException
    %APPLICATIONNOTEXISTEXCEPTION The exception that is thrown when IceGrid does not know an application with the provided name.
    %
    %   ApplicationNotExistException Properties:
    %     name - The name of the application.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the application.
        %   character vector
        name (1, :) char
    end
    methods
        function obj = ApplicationNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ApplicationNotExistException';
                msg = 'IceGrid.ApplicationNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ApplicationNotExistException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::ApplicationNotExistException'
    end
end
