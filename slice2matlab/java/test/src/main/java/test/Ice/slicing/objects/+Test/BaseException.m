
% Copyright (c) ZeroC, Inc.
% Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef BaseException < Ice.UserException
    properties
        sbe char
        pb
    end
    methods
        function obj = BaseException(errID, msg)
            if nargin == 0
                errID = 'Test:BaseException';
                msg = 'Test.BaseException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
