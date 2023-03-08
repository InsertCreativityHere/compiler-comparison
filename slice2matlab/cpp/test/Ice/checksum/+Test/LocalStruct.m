% LocalStruct   Summary of LocalStruct
%
% LocalStruct Properties:
%   str

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef LocalStruct
    properties
        str char
    end
    methods
        function obj = LocalStruct(str)
            if nargin == 0
                obj.str = '';
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
end
