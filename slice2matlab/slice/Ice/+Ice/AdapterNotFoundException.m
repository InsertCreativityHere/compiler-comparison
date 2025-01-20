% AdapterNotFoundException   Summary of AdapterNotFoundException
%
% This exception is raised if an adapter cannot be found.

% Copyright (c) ZeroC, Inc.
% Generated from Locator.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterNotFoundException < Ice.UserException
    methods
        function obj = AdapterNotFoundException(errID, msg)
            if nargin == 0
                errID = 'Ice:AdapterNotFoundException';
                msg = 'Ice.AdapterNotFoundException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Ice::AdapterNotFoundException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
