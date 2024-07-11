% AlreadyStoppedException   Summary of AlreadyStoppedException
%
% This exception is thrown if an attempt is made to stop an already-stopped service.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

classdef AlreadyStoppedException < Ice.UserException
    methods
        function obj = AlreadyStoppedException(errID, msg)
            if nargin == 0
                errID = 'IceBox:AlreadyStoppedException';
                msg = 'IceBox.AlreadyStoppedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceBox::AlreadyStoppedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
