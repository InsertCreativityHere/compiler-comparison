% ArgumentException   Summary of ArgumentException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Core.ice by slice2matlab version 3.8.0-alpha.0

classdef ArgumentException < Ice.UserException
    methods
        function obj = ArgumentException(errID, msg)
            if nargin == 0
                errID = 'Core:ArgumentException';
                msg = 'Core.ArgumentException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Core::ArgumentException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
