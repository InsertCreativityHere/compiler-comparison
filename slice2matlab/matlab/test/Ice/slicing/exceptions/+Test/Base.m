% Base   Summary of Base
%
% Base Properties:
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef Base < Ice.UserException
    properties
        b char
    end
    methods
        function obj = Base(errID, msg)
            if nargin == 0
                errID = 'Test:Base';
                msg = 'Test.Base';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Base';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readString();
            is.endSlice();
        end
    end
end
