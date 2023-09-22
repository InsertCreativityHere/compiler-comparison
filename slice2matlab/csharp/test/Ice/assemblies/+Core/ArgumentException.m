% ArgumentException   Summary of ArgumentException

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Core.ice by slice2matlab version 3.7.10

classdef ArgumentException < Ice.UserException
    methods
        function obj = ArgumentException(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Core:ArgumentException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Core.ArgumentException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
