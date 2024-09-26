% KnownPreserved   Summary of KnownPreserved
%
% KnownPreserved Properties:
%   kp

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef KnownPreserved < Test.Base
    properties
        kp char
    end
    methods
        function obj = KnownPreserved(errID, msg)
            if nargin == 0
                errID = 'Test:KnownPreserved';
                msg = 'Test.KnownPreserved';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.Base(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::KnownPreserved';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kp = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
end
