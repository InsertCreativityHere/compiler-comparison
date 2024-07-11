% notify   Summary of notify
%
% Test keyword escape.
%
% notify Properties:
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from NoNamespace.ice by slice2matlab version 3.8.0-alpha.0

classdef notify < Ice.UserException
    properties
        i int32
    end
    methods
        function obj = notify(errID, msg)
            if nargin == 0
                errID = 'NoNamespace:notify';
                msg = 'NoNamespace.notify';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::NoNamespace::notify';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
end
