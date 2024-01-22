% persistent_   Summary of persistent_
%
% persistent_ Properties:
%   identifier_
%   message_
%   stack_
%   cause_
%   type_
%   end_

% Copyright (c) ZeroC, Inc. All rights reserved.
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
        function obj = persistent_(ice_exid, ice_exmsg, identifier_, message_, stack_, cause_, type_, end_)
            if nargin <= 2
                identifier_ = sprintf('1');
                message_ = sprintf('2');
                stack_ = sprintf('3');
                cause_ = sprintf('4');
                type_ = sprintf('5');
                end_ = [];
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'classdef_:break_:persistent_';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'classdef_.break_.persistent_';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.identifier_ = identifier_;
            obj.message_ = message_;
            obj.stack_ = stack_;
            obj.cause_ = cause_;
            obj.type_ = type_;
            obj.end_ = end_;
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
