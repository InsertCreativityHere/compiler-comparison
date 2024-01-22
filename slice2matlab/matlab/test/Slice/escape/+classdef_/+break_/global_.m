% global_   Summary of global_
%
% global_ Properties:
%   enumeration_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef global_ < classdef_.break_.persistent_
    properties
        enumeration_ int32
    end
    methods
        function obj = global_(ice_exid, ice_exmsg, identifier_, message_, stack_, cause_, type_, end_, enumeration_)
            if nargin <= 2
                identifier_ = sprintf('1');
                message_ = sprintf('2');
                stack_ = sprintf('3');
                cause_ = sprintf('4');
                type_ = sprintf('5');
                end_ = [];
                enumeration_ = 1;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'classdef_:break_:global_';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'classdef_.break_.global_';
            end
            obj = obj@classdef_.break_.persistent_(ice_exid, ice_exmsg, identifier_, message_, stack_, cause_, type_, end_);
            obj.enumeration_ = enumeration_;
        end
        function id = ice_id(~)
            id = '::classdef::break::global';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.enumeration_ = is.readInt();
            is.endSlice();
            obj = iceReadImpl@classdef_.break_.persistent_(obj, is);
        end
    end
end
