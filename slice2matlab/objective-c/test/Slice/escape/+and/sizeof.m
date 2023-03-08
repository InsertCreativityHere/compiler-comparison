% sizeof   Summary of sizeof
%
% sizeof Properties:
%   static
%   switch_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef sizeof < and.return_
    properties
        static int32
        switch_ int32
    end
    methods
        function obj = sizeof(ice_exid, ice_exmsg, signed, static, switch_)
            if nargin <= 2
                signed = 0;
                static = 0;
                switch_ = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:sizeof';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.sizeof';
            end
            obj = obj@and.return_(ice_exid, ice_exmsg, signed);
            obj.static = static;
            obj.switch_ = switch_;
        end
        function id = ice_id(~)
            id = '::and::sizeof';
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
