
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef persistent_ < Ice.UserException
    properties
        identifier_ char
        message_ char
        stack_ char
        cause_ char
        type_ char
        end_
    end
    methods
        function obj = persistent_(errID, msg)
            if nargin == 0
                errID = 'classdef_:break_:persistent_';
                msg = 'classdef_.break_.persistent_';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::classdef::break::persistent';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.end_ = obj.end_.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.identifier_ = is.readString();
            obj.message_ = is.readString();
            obj.stack_ = is.readString();
            obj.cause_ = is.readString();
            obj.type_ = is.readString();
            obj.end_ = IceInternal.ValueHolder();
            is.readValue(@(v) obj.end_.set(v), 'classdef_.break_.logical');
            is.endSlice();
        end
    end
end
