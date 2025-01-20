% ReapWouldBlock   Summary of ReapWouldBlock
%
% Thrown if the reap call would block.

% Copyright (c) ZeroC, Inc.
% Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

classdef ReapWouldBlock < Ice.UserException
    methods
        function obj = ReapWouldBlock(errID, msg)
            if nargin == 0
                errID = 'IceStorm:ReapWouldBlock';
                msg = 'IceStorm.ReapWouldBlock';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStorm::ReapWouldBlock';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
