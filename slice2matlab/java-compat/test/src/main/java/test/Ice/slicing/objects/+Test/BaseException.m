% BaseException   Summary of BaseException
%
% BaseException Properties:
%   sbe
%   pb

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.9

classdef BaseException < Ice.UserException
    properties
        sbe char
        pb
    end
    methods
        function obj = BaseException(ice_exid, ice_exmsg, sbe, pb)
            if nargin <= 2
                sbe = '';
                pb = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:BaseException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.BaseException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.sbe = sbe;
            obj.pb = pb;
        end
        function id = ice_id(~)
            id = '::Test::BaseException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.pb = obj.pb.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.sbe = is.readString();
            obj.pb = IceInternal.ValueHolder();
            is.readValue(@(v) obj.pb.set(v), 'Test.B');
            is.endSlice();
        end
    end
end
