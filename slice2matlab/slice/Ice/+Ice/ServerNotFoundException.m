% ServerNotFoundException   Summary of ServerNotFoundException
%
% The exception that is thrown when a server was not found.

% Copyright (c) ZeroC, Inc.
% Generated from LocatorRegistry.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerNotFoundException < Ice.UserException
    methods
        function obj = ServerNotFoundException(errID, msg)
            if nargin == 0
                errID = 'Ice:ServerNotFoundException';
                msg = 'Ice.ServerNotFoundException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::ServerNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::Ice::ServerNotFoundException'
    end
end
