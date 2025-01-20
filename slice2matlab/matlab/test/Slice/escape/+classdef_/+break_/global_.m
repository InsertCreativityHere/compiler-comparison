
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef global_ < classdef_.break_.persistent_
    properties
        enumeration_ int32
    end
    methods
        function obj = global_(errID, msg)
            if nargin == 0
                errID = 'classdef_:break_:global_';
                msg = 'classdef_.break_.global_';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@classdef_.break_.persistent_(errID, msg);
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
