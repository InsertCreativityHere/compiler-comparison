
% Copyright (c) ZeroC, Inc.
% Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef UnknownDerivedException < Test.BaseException
    properties
        sude char
        pd2
    end
    methods
        function obj = UnknownDerivedException(errID, msg)
            if nargin == 0
                errID = 'Test:UnknownDerivedException';
                msg = 'Test.UnknownDerivedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseException(errID, msg);
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
