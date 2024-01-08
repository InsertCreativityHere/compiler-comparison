% endif   Summary of endif
%
% endif Properties:
%   endswitch

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef endif < Ice.UserException
    properties
        endswitch int32
    end
    methods
        function obj = endif(ice_exid, ice_exmsg, endswitch)
            if nargin <= 2
                endswitch = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:endif';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.endif';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.endswitch = endswitch;
        end
        function id = ice_id(~)
            id = '::and::endif';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.endswitch = is.readInt();
            is.endSlice();
        end
    end
end
