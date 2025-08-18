classdef AdapterNotExistException < Ice.UserException
    %ADAPTERNOTEXISTEXCEPTION The exception that is thrown when IceGrid does not know an object adapter with the provided adapter ID.
    %
    %   AdapterNotExistException Properties:
    %     id - The adapter ID.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The adapter ID.
        %   character vector
        id (1, :) char
    end
    methods
        function obj = AdapterNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AdapterNotExistException';
                msg = 'IceGrid.AdapterNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AdapterNotExistException';
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
        TypeId char = '::IceGrid::AdapterNotExistException'
    end
end
