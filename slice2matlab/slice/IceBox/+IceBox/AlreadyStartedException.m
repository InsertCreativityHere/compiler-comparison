% AlreadyStartedException   Summary of AlreadyStartedException
%
% This exception is thrown if an attempt is made to start an already-started service.

% Copyright (c) ZeroC, Inc.
% Generated from ServiceManager.ice by slice2matlab version 3.8.0-alpha.0

classdef AlreadyStartedException < Ice.UserException
    methods
        function obj = AlreadyStartedException(errID, msg)
            if nargin == 0
                errID = 'IceBox:AlreadyStartedException';
                msg = 'IceBox.AlreadyStartedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceBox::AlreadyStartedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
