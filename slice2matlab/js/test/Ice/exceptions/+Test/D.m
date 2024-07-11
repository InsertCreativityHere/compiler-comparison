% D   Summary of D
%
% D Properties:
%   dMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef D < Ice.UserException
    properties
        dMem int32
    end
    methods
        function obj = D(errID, msg)
            if nargin == 0
                errID = 'Test:D';
                msg = 'Test.D';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::D';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.dMem = is.readInt();
            is.endSlice();
        end
    end
end
