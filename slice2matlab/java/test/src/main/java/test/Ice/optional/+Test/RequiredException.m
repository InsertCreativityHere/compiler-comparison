% RequiredException   Summary of RequiredException
%
% RequiredException Properties:
%   ss

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RequiredException < Test.OptionalException
    properties
        ss char
    end
    methods
        function obj = RequiredException(ice_exid, ice_exmsg, req, a, b, ss)
            if nargin <= 2
                req = false;
                a = 5;
                b = IceInternal.UnsetI.Instance;
                ss = sprintf('test');
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:RequiredException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.RequiredException';
            end
            obj = obj@Test.OptionalException(ice_exid, ice_exmsg, req, a, b);
            obj.ss = ss;
        end
        function id = ice_id(~)
            id = '::Test::RequiredException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ss = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
end
