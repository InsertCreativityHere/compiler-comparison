% nil   Summary of nil
%
% nil Properties:
%   not
%   or

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef nil < BEGIN.next
    properties
        not int32
        or int32
    end
    methods
        function obj = nil(errID, msg)
            if nargin == 0
                errID = 'BEGIN:nil';
                msg = 'BEGIN.nil';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@BEGIN.next(errID, msg);
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
