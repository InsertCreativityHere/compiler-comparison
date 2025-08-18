classdef InvalidReplicaGroupIdException < Ice.UserException
    %INVALIDREPLICAGROUPIDEXCEPTION The exception that is thrown when the provided replica group is invalid.
    %
    %   Generated from LocatorRegistry.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = InvalidReplicaGroupIdException(errID, msg)
            if nargin == 0
                errID = 'Ice:InvalidReplicaGroupIdException';
                msg = 'Ice.InvalidReplicaGroupIdException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::InvalidReplicaGroupIdException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Ice::InvalidReplicaGroupIdException'
    end
end
