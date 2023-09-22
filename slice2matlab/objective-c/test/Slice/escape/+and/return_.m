% return_   Summary of return_
%
% return_ Properties:
%   signed

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef return_ < Ice.UserException
    properties
        signed int32
    end
    methods
        function obj = return_(ice_exid, ice_exmsg, signed)
            if nargin <= 2
                signed = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:return_';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.return_';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.signed = signed;
        end
        function id = ice_id(~)
            id = '::and::return';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.signed = is.readInt();
            is.endSlice();
        end
    end
end
