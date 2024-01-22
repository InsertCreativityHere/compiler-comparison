% not   Summary of not
%
% not Properties:
%   or
%   pass

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef not < and.is
    properties
        or int32
        pass int32
    end
    methods
        function obj = not(ice_exid, ice_exmsg, lambda, or, pass)
            if nargin <= 2
                lambda = 0;
                or = 0;
                pass = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'and:not';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'and.not';
            end
            obj = obj@and.is(ice_exid, ice_exmsg, lambda);
            obj.or = or;
            obj.pass = pass;
        end
        function id = ice_id(~)
            id = '::and::not';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.or = is.readInt();
            obj.pass = is.readInt();
            is.endSlice();
            obj = iceReadImpl@and.is(obj, is);
        end
    end
end
