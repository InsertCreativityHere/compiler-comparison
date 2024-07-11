% DerivedException   Summary of DerivedException
%
% DerivedException Properties:
%   d1
%   ss
%   d2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef DerivedException < Test.OptionalException
    properties
        d1 char
        ss
        d2 char
    end
    methods
        function obj = DerivedException(errID, msg)
            if nargin == 0
                errID = 'Test:DerivedException';
                msg = 'Test.DerivedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.OptionalException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::DerivedException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.d1 = is.readString();
            obj.d2 = is.readString();
            obj.ss = is.readStringOpt(600);
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
end
