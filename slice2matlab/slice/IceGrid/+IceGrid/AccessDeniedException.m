classdef AccessDeniedException < Ice.UserException
    %ACCESSDENIEDEXCEPTION The exception that is thrown when the registry update lock cannot be acquired.
    %
    %   AccessDeniedException Properties:
    %     lockUserId - The id of the user holding the lock (if any).
    %
    %   Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % LOCKUSERID The id of the user holding the lock (if any).
        %   character vector
        lockUserId (1, :) char
    end
    methods
        function obj = AccessDeniedException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AccessDeniedException';
                msg = 'IceGrid.AccessDeniedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AccessDeniedException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.lockUserId = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::AccessDeniedException'
    end
end
