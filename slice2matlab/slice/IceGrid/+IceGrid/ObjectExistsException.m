classdef ObjectExistsException < Ice.UserException
    %OBJECTEXISTSEXCEPTION The exception that is thrown when a well-known object is already registered.
    %
    %   ObjectExistsException Properties:
    %     id - The identity of the object.
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The identity of the object.
        %   Ice.Identity scalar
        id Ice.Identity {mustBeScalarOrEmpty} = Ice.Identity.empty
    end
    methods
        function obj = ObjectExistsException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ObjectExistsException';
                msg = 'IceGrid.ObjectExistsException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ObjectExistsException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = Ice.Identity.ice_read(is);
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::ObjectExistsException'
    end
end
