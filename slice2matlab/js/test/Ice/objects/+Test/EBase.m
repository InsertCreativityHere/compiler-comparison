% EBase   Summary of EBase
%
% EBase Properties:
%   a1
%   a2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef EBase < Ice.UserException
    properties
        a1
        a2
    end
    methods
        function obj = EBase(errID, msg)
            if nargin == 0
                errID = 'Test:EBase';
                msg = 'Test.EBase';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::EBase';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.a1 = obj.a1.value;
            obj.a2 = obj.a2.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.a1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.a1.set(v), 'Test.A1');
            obj.a2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.a2.set(v), 'Test.A1');
            is.endSlice();
        end
    end
end
