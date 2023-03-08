% nil   Summary of nil
%
% nil Properties:
%   not
%   or

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef nil < BEGIN.next
    properties
        not int32
        or int32
    end
    methods
        function obj = nil(ice_exid, ice_exmsg, new, not, or)
            if nargin <= 2
                new = 0;
                not = 0;
                or = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'BEGIN:nil';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'BEGIN.nil';
            end
            obj = obj@BEGIN.next(ice_exid, ice_exmsg, new);
            obj.not = not;
            obj.or = or;
        end
        function id = ice_id(~)
            id = '::BEGIN::nil';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.not = is.readInt();
            obj.or = is.readInt();
            is.endSlice();
            obj = iceReadImpl@BEGIN.next(obj, is);
        end
    end
end
