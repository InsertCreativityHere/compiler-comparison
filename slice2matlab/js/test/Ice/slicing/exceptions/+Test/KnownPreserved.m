% KnownPreserved   Summary of KnownPreserved
%
% KnownPreserved Properties:
%   kp

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef KnownPreserved < Test.Base
    properties
        kp char
    end
    methods
        function obj = KnownPreserved(ice_exid, ice_exmsg, b, kp)
            if nargin <= 2
                b = '';
                kp = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:KnownPreserved';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.KnownPreserved';
            end
            obj = obj@Test.Base(ice_exid, ice_exmsg, b);
            obj.kp = kp;
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
