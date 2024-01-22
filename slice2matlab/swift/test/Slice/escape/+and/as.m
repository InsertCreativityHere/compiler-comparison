% as   Summary of as
%
% as Properties:
%   static
%   switch_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef as < and.return_
    properties
        static int32
        switch_ int32
    end
    methods
        function obj = as(ice_exid, ice_exmsg, Int32, static, switch_)
            if nargin <= 2
                Int32 = 0;
                static = 0;
                switch_ = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:as';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.as';
            end
            obj = obj@and.return_(ice_exid, ice_exmsg, Int32);
            obj.static = static;
            obj.switch_ = switch_;
        end
        function id = ice_id(~)
            id = '::and::as';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.static = is.readInt();
            obj.switch_ = is.readInt();
            is.endSlice();
            obj = iceReadImpl@and.return_(obj, is);
        end
    end
end
