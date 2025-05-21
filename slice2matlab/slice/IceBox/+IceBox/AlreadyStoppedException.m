% AlreadyStoppedException   Summary of AlreadyStoppedException
%
% The exception that is thrown when attempting to stop a service that is already stopped.

% Copyright (c) ZeroC, Inc.
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
    properties(Constant, Access=private)
        TypeId char = '::IceBox::AlreadyStoppedException'
    end
end
