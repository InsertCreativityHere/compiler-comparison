% KnownPreserved   Summary of KnownPreserved
%
% KnownPreserved Properties:
%   kp

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.7.9

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
        function r = ice_getSlicedData(obj)
            r = obj.iceSlicedData_;
        end
    end
    methods(Hidden=true)
        function obj = iceRead(obj, is)
            is.startException();
            obj = obj.iceReadImpl(is);
            obj.iceSlicedData_ = is.endException(true);
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
    properties(Access=protected)
        iceSlicedData_
    end
end
