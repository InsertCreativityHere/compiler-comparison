% import   Summary of import
%
% import Properties:
%   instanceof
%   native

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef import < abstract.hashCode
    properties
        instanceof int32
        native int32
    end
    methods
        function obj = import(ice_exid, ice_exmsg, if_, instanceof, native)
            if nargin <= 2
                if_ = 0;
                instanceof = 0;
                native = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'abstract:import';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'abstract.import';
            end
            obj = obj@abstract.hashCode(ice_exid, ice_exmsg, if_);
            obj.instanceof = instanceof;
            obj.native = native;
        end
        function id = ice_id(~)
            id = '::abstract::import';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.instanceof = is.readInt();
            obj.native = is.readInt();
            is.endSlice();
            obj = iceReadImpl@abstract.hashCode(obj, is);
        end
    end
end
