% return_   Summary of return_
%
% return_ Properties:
%   Int32

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef return_ < Ice.UserException
    properties
        Int32 int32
    end
    methods
        function obj = return_(ice_exid, ice_exmsg, Int32)
            if nargin <= 2
                Int32 = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:return_';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.return_';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.Int32 = Int32;
        end
        function id = ice_id(~)
            id = '::and::return';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.Int32 = is.readInt();
            is.endSlice();
        end
    end
end
