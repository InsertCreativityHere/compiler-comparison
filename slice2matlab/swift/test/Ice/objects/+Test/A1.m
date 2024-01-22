% A1   Summary of A1
%
% A1 Properties:
%   name

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef A1 < Ice.Value
    properties
        name char
    end
    methods
        function obj = A1(name)
            if nargin == 0
                obj.name = '';
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::A1', -1, true);
            os.writeString(obj.name);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::A1';
        end
    end
end
