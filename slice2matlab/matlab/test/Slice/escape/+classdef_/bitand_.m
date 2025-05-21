
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef bitand_ < Ice.UserException
    properties
        identifier_ char
        message_ char
        end_
    end
    methods
        function obj = bitand_(errID, msg)
            if nargin == 0
                errID = 'classdef_:bitand_';
                msg = 'classdef_.bitand_';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::classdef::bitand';
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
            obj.end_ = IceInternal.ValueHolder();
            is.readValue(@(v) obj.end_.set(v), 'classdef_.logical_');
            is.endSlice();
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::classdef::bitand'
    end
end
