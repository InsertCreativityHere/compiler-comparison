% NoSuchServiceException   Summary of NoSuchServiceException
%
% This exception is thrown if a service name does not refer to an existing service.

% Copyright (c) ZeroC, Inc.
% Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

classdef NoSuchServiceException < Ice.UserException
    methods
        function obj = NoSuchServiceException(errID, msg)
            if nargin == 0
                errID = 'IceBox:NoSuchServiceException';
                msg = 'IceBox.NoSuchServiceException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceBox::NoSuchServiceException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
