% is   Summary of is
%
% is Properties:
%   lambda

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef is < Ice.UserException
    properties
        lambda int32
    end
    methods
        function obj = is(ice_exid, ice_exmsg, lambda)
            if nargin <= 2
                lambda = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:is';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.is';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.lambda = lambda;
        end
        function id = ice_id(~)
            id = '::and::is';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.lambda = is.readInt();
            is.endSlice();
        end
    end
end
