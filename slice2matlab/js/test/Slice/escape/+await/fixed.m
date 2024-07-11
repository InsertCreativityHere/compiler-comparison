% fixed   Summary of fixed
%
% fixed Properties:
%   for_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef fixed < Ice.UserException
    properties
        for_ int32
    end
    methods
        function obj = fixed(errID, msg)
            if nargin == 0
                errID = 'await:fixed';
                msg = 'await.fixed';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::await::fixed';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.for_ = is.readInt();
            is.endSlice();
        end
    end
end
