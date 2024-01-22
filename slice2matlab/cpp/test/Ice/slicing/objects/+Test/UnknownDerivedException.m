% UnknownDerivedException   Summary of UnknownDerivedException
%
% UnknownDerivedException Properties:
%   sude
%   pd2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef UnknownDerivedException < Test.BaseException
    properties
        sude char
        pd2
    end
    methods
        function obj = UnknownDerivedException(ice_exid, ice_exmsg, sbe, pb, sude, pd2)
            if nargin <= 2
                sbe = '';
                pb = [];
                sude = '';
                pd2 = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:UnknownDerivedException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.UnknownDerivedException';
            end
            obj = obj@Test.BaseException(ice_exid, ice_exmsg, sbe, pb);
            obj.sude = sude;
            obj.pd2 = pd2;
        end
        function id = ice_id(~)
            id = '::Test::UnknownDerivedException';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.pd2 = obj.pd2.value;
            obj = icePostUnmarshal@Test.BaseException(obj);
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.sude = is.readString();
            obj.pd2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.pd2.set(v), 'Test.D2');
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
end
