% E2   Summary of E2
%
% E2 Properties:
%   l

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from NoNamespace.ice by slice2matlab version 3.8.0-alpha.0

classdef E2 < NoNamespace.E1
    properties
        l int64
    end
    methods
        function obj = E2(errID, msg)
            if nargin == 0
                errID = 'NoNamespace:E2';
                msg = 'NoNamespace.E2';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@NoNamespace.E1(errID, msg);
        end
        function id = ice_id(~)
            id = '::NoNamespace::E2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            obj = iceReadImpl@NoNamespace.E1(obj, is);
        end
    end
end
