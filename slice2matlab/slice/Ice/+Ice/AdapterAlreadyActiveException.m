% AdapterAlreadyActiveException   Summary of AdapterAlreadyActiveException
%
% The exception that is thrown when a server application tries to register endpoints for an object adapter that is
% already active.

% Copyright (c) ZeroC, Inc.
% Generated from LocatorRegistry.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterAlreadyActiveException < Ice.UserException
    methods
        function obj = AdapterAlreadyActiveException(errID, msg)
            if nargin == 0
                errID = 'Ice:AdapterAlreadyActiveException';
                msg = 'Ice.AdapterAlreadyActiveException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::AdapterAlreadyActiveException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::Ice::AdapterAlreadyActiveException'
    end
end
