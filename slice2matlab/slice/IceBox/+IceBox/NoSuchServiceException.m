% NoSuchServiceException   Summary of NoSuchServiceException
%
% This exception is thrown if a service name does not refer
% to an existing service.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceBox.ice by slice2matlab version 3.7.9

classdef NoSuchServiceException < Ice.UserException
    methods
        function obj = NoSuchServiceException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceBox:NoSuchServiceException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceBox.NoSuchServiceException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
