classdef ObserverAlreadyRegisteredException < Ice.UserException
    %OBSERVERALREADYREGISTEREDEXCEPTION The exception that is thrown when an observer is already registered with the registry.
    %
    %   ObserverAlreadyRegisteredException Properties:
    %     id - The identity of the observer.
    %
    %   See also AdminSession.setObservers, AdminSession.setObserversByIdentity
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The identity of the observer.
        %   Ice.Identity scalar
        id Ice.Identity {mustBeScalarOrEmpty} = Ice.Identity.empty
    end
    methods
        function obj = ObserverAlreadyRegisteredException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:ObserverAlreadyRegisteredException';
                msg = 'IceGrid.ObserverAlreadyRegisteredException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::ObserverAlreadyRegisteredException';
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
        TypeId char = '::IceGrid::ObserverAlreadyRegisteredException'
    end
end
