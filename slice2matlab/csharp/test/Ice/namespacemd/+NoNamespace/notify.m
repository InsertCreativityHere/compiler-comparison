% notify   Summary of notify
%
% notify Properties:
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from NoNamespace.ice by slice2matlab version 3.7.10

classdef notify < Ice.UserException
    properties
        i int32
    end
    methods
        function obj = notify(ice_exid, ice_exmsg, i)
            if nargin <= 2
                i = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'NoNamespace:notify';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'NoNamespace.notify';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.i = i;
        end
        function id = ice_id(~)
            id = '::NoNamespace::notify';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
end
