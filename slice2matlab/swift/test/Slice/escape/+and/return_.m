% return_   Summary of return_
%
% return_ Properties:
%   Int32

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef return_ < Ice.UserException
    properties
        Int32 int32
    end
    methods
        function obj = return_(errID, msg)
            if nargin == 0
                errID = 'and:return_';
                msg = 'and.return_';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::return';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.Int32 = is.readInt();
            is.endSlice();
        end
    end
end
