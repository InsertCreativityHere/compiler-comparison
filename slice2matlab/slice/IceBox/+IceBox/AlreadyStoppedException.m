% AlreadyStoppedException   Summary of AlreadyStoppedException
%
% This exception is thrown if an attempt is made to stop an
% already-stopped service.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceBox.ice by slice2matlab version 3.7.10

classdef AlreadyStoppedException < Ice.UserException
    methods
        function obj = AlreadyStoppedException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceBox:AlreadyStoppedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceBox.AlreadyStoppedException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
