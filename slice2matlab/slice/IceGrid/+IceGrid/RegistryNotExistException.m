classdef RegistryNotExistException < Ice.UserException
    %REGISTRYNOTEXISTEXCEPTION The exception that is thrown when IceGrid does not know a registry with the provided name.
    %
    %   RegistryNotExistException Properties:
    %     name - The registry name.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The registry name.
        %   character vector
        name (1, :) char
    end
    methods
        function obj = RegistryNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:RegistryNotExistException';
                msg = 'IceGrid.RegistryNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::RegistryNotExistException';
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
        TypeId char = '::IceGrid::RegistryNotExistException'
    end
end
