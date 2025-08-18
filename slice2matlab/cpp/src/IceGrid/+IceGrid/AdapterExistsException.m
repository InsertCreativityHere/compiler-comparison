classdef AdapterExistsException < Ice.UserException
    %ADAPTEREXISTSEXCEPTION This exception is raised if an adapter with the same name already exists.
    %
    %   AdapterExistsException Properties:
    %     id
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID
        %   character vector
        id (1, :) char
    end
    methods
        function obj = AdapterExistsException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AdapterExistsException';
                msg = 'IceGrid.AdapterExistsException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AdapterExistsException';
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
        TypeId char = '::IceGrid::AdapterExistsException'
    end
end
