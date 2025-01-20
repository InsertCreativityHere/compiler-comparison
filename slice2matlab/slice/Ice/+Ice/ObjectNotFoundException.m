% ObjectNotFoundException   Summary of ObjectNotFoundException
%
% This exception is raised if an object cannot be found.

% Copyright (c) ZeroC, Inc.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

classdef ObjectNotFoundException < Ice.UserException
    methods
        function obj = ObjectNotFoundException(errID, msg)
            if nargin == 0
                errID = 'Ice:ObjectNotFoundException';
                msg = 'Ice.ObjectNotFoundException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::ObjectNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
