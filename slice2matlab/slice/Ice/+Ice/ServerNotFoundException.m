% ServerNotFoundException   Summary of ServerNotFoundException
%
% This exception is raised if a server cannot be found.

% Copyright (c) ZeroC, Inc.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

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
end
