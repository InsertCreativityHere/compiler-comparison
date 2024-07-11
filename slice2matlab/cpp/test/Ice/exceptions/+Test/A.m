% A   Summary of A
%
% A Properties:
%   aMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef A < Ice.UserException
    properties
        aMem int32
    end
    methods
        function obj = A(errID, msg)
            if nargin == 0
                errID = 'Test:A';
                msg = 'Test.A';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::A';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.aMem = is.readInt();
            is.endSlice();
        end
    end
end
