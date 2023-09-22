% PSUnknownException   Summary of PSUnknownException
%
% PSUnknownException Properties:
%   p

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingObjectsTestServer.ice by slice2matlab version 3.7.10

classdef PSUnknownException < Test.PreservedException
    properties
        p
    end
    methods
        function obj = PSUnknownException(ice_exid, ice_exmsg, p)
            if nargin <= 2
                p = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:PSUnknownException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.PSUnknownException';
            end
            obj = obj@Test.PreservedException(ice_exid, ice_exmsg);
            obj.p = p;
        end
        function id = ice_id(~)
            id = '::Test::PSUnknownException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.p = obj.p.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.p = IceInternal.ValueHolder();
            is.readValue(@(v) obj.p.set(v), 'Test.PSUnknown2');
            is.endSlice();
            obj = iceReadImpl@Test.PreservedException(obj, is);
        end
    end
end
