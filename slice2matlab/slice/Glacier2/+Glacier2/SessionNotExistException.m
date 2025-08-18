classdef SessionNotExistException < Ice.UserException
    %SESSIONNOTEXISTEXCEPTION The exception that is thrown when a client tries to destroy a session with a router, but no session exists for
    %   this client.
    %
    %   See also Glacier2.Router.destroySession
    %
    %   Generated from Router.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = SessionNotExistException(errID, msg)
            if nargin == 0
                errID = 'Glacier2:SessionNotExistException';
                msg = 'Glacier2.SessionNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Glacier2::SessionNotExistException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Glacier2::SessionNotExistException'
    end
end
